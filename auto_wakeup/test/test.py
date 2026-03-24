"""
=============================================================================
Python Testbench cho module tqvp_spi_master (peripheral.v + auto_wakeup.v)
Sử dụng cocotb framework
=============================================================================
Cách chạy:
    make SIM=icarus    (dùng Icarus Verilog)
    make SIM=verilator (dùng Verilator)

Cài đặt:
    pip install cocotb
    apt install iverilog   # hoặc verilator
=============================================================================
"""

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, ClockCycles, Timer
import random

# ---------------------------------------------------------------------------
# Bản đồ thanh ghi (Register Map)
# ---------------------------------------------------------------------------
REG_TX_RX    = 0x00  # Ghi: TX data | Đọc: RX data (rx_hold)
REG_STATUS   = 0x01  # Đọc: {auto_irq, irq, busy} | Ghi bit1: xóa irq
REG_CLK_DIV  = 0x02  # Clock divider (6-bit)
REG_CONFIG   = 0x03  # {wlen[2:0], mcs, lsb, cpha, cpol}
REG_CS_CTRL  = 0x04  # cs_force (bit 0)
REG_TIMER    = 0x05  # Auto-wakeup timer period
REG_AUTO_CMD = 0x06  # Auto-wakeup command byte
REG_THRESH_H = 0x07  # Ngưỡng cao
REG_THRESH_L = 0x08  # Ngưỡng thấp
REG_AUTO_CFG = 0x09  # {auto_irq, auto_en} | Ghi bit1: xóa auto_irq

# Bit masks - Status (REG_STATUS)
BUSY_BIT     = 0
IRQ_BIT      = 1
AUTO_IRQ_BIT = 2

# Bit masks - Config (REG_CONFIG)
CPOL_BIT   = 0
CPHA_BIT   = 1
LSB_BIT    = 2
MCS_BIT    = 3
WLEN_SHIFT = 4     # bits [6:4]

# uo_out bit positions
SCLK_BIT = 0
MOSI_BIT = 1
CS_N_BIT = 2

CLK_PERIOD_NS = 10   # 100 MHz clock

# ---------------------------------------------------------------------------
# Helper: các hàm tiện ích
# ---------------------------------------------------------------------------

async def do_reset(dut):
    """Reset DUT về trạng thái ban đầu."""
    dut.rst_n.value       = 0
    dut.ui_in.value       = 0
    dut.address.value     = 0
    dut.data_in.value     = 0
    dut.data_write_n.value = 0b11   # no write
    dut.data_read_n.value  = 0b11   # no read
    await ClockCycles(dut.clk, 6)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 3)


async def write_reg(dut, addr, val):
    """
    Ghi 1 byte vào thanh ghi qua bus CPU.
    data_write = (data_write_n != 2'b11) → dùng 2'b10 cho byte write.
    """
    await RisingEdge(dut.clk)
    dut.address.value      = addr
    dut.data_in.value      = val & 0xFF
    dut.data_write_n.value = 0b10    # kích hoạt ghi
    await RisingEdge(dut.clk)        # clock edge ghi vào register
    dut.data_write_n.value = 0b11    # deassert
    dut.data_in.value      = 0
    await RisingEdge(dut.clk)        # settle


async def read_reg(dut, addr):
    """
    Đọc 1 byte từ thanh ghi. data_out là combinational nên chỉ cần
    set address và đọc sau 1 chu kỳ settle.
    """
    dut.address.value = addr
    await RisingEdge(dut.clk)
    return int(dut.data_out.value) & 0xFF


def get_spi_pins(dut):
    """Trả về (sclk, mosi, cs_n) từ uo_out."""
    uo = int(dut.uo_out.value)
    sclk = (uo >> SCLK_BIT) & 1
    mosi = (uo >> MOSI_BIT) & 1
    cs_n = (uo >> CS_N_BIT) & 1
    return sclk, mosi, cs_n


async def wait_idle(dut, timeout_cycles=4000):
    """Chờ SPI xong (cs_n = 1 và busy = 0)."""
    for _ in range(timeout_cycles):
        await RisingEdge(dut.clk)
        _, _, cs_n = get_spi_pins(dut)
        if cs_n == 1:
            return True
    raise TimeoutError("SPI transfer did not complete within timeout")


async def spi_transfer(dut, tx_byte, miso_byte=0x00, clk_div=3, cpol=0, cpha=0, lsb=0):
    """
    Kích hoạt 1 lần truyền SPI, lái MISO, bắt MOSI.

    Trả về (mosi_byte_captured, rx_byte_readback):
      - mosi_byte_captured: byte ghép lại từ các bit MOSI đo được
      - rx_byte_readback  : giá trị đọc từ REG_TX_RX sau khi xong

    Hỗ trợ đầy đủ 4 chế độ SPI (CPOL/CPHA), LSB-first.
    """
    # Chuẩn bị MISO bits: LSB-first hay MSB-first
    if lsb:
        miso_bits = [(miso_byte >> i) & 1 for i in range(8)]
    else:
        miso_bits = [(miso_byte >> (7 - i)) & 1 for i in range(8)]

    # Pre-drive MISO với bit đầu tiên trước khi bắt đầu
    dut.ui_in.value = miso_bits[0]

    # Kích hoạt transfer: ghi vào REG_TX_RX
    await RisingEdge(dut.clk)
    dut.address.value      = REG_TX_RX
    dut.data_in.value      = tx_byte & 0xFF
    dut.data_write_n.value = 0b10
    await RisingEdge(dut.clk)
    dut.data_write_n.value = 0b11
    dut.data_in.value      = 0

    # Đếm half-period: div_cnt = clk_div → (clk_div+1) system clocks mỗi nửa chu kỳ
    half_period = clk_div + 1

    # Trạng thái tracking
    prev_sclk    = cpol    # clock bắt đầu ở mức cpol
    mosi_bits    = []
    miso_idx     = 0       # MISO bit đang drive
    timeout      = (half_period * 2 * 8 + 20) * 4   # 4x safety margin

    for _ in range(timeout):
        await RisingEdge(dut.clk)
        sclk, mosi, cs_n = get_spi_pins(dut)

        # Phát hiện cạnh clock SPI
        if sclk != prev_sclk:
            rising  = (sclk == 1) and (prev_sclk == 0)
            falling = (sclk == 0) and (prev_sclk == 1)

            # Với CPOL=1, "rising" về logic vẫn là cạnh dương của sclk_out
            # Điều chỉnh cho CPOL
            leading_edge  = (sclk == (1 ^ cpol))  # cạnh đầu
            trailing_edge = (sclk == cpol)          # cạnh sau

            if leading_edge:
                if cpha == 0:
                    # CPHA=0: lấy mẫu MOSI ở cạnh đầu
                    mosi_bits.append(mosi)
                    # Chuẩn bị MISO cho bit tiếp theo (drive tại falling edge)
                else:
                    # CPHA=1: đổi MISO ở cạnh đầu
                    if miso_idx + 1 < 8:
                        miso_idx += 1
                        dut.ui_in.value = miso_bits[miso_idx]

            elif trailing_edge:
                if cpha == 1:
                    # CPHA=1: lấy mẫu MOSI ở cạnh sau
                    mosi_bits.append(mosi)
                else:
                    # CPHA=0: đổi MISO ở cạnh sau
                    if miso_idx + 1 < 8:
                        miso_idx += 1
                        dut.ui_in.value = miso_bits[miso_idx]

            prev_sclk = sclk

        # Kết thúc khi CS deasserted
        if cs_n == 1 and len(mosi_bits) > 0:
            break

    # Ghép lại byte MOSI
    mosi_byte = 0
    for b in mosi_bits[:8]:
        mosi_byte = (mosi_byte << 1) | b

    # Đọc lại RX data
    await ClockCycles(dut.clk, 2)
    rx_byte = await read_reg(dut, REG_TX_RX)

    return mosi_byte, rx_byte


# ===========================================================================
# TEST 01: Giá trị reset mặc định
# ===========================================================================
@cocotb.test()
async def test_01_reset_defaults(dut):
    """Kiểm tra tất cả thanh ghi sau reset."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    # clk_div mặc định = 3
    val = await read_reg(dut, REG_CLK_DIV)
    assert val == 3, f"[FAIL] clk_div default: expected 3, got {val}"

    # config: wlen=7 (bits[6:4]=111), còn lại = 0 → 0x70
    val = await read_reg(dut, REG_CONFIG)
    assert val == 0x70, f"[FAIL] config default: expected 0x70, got {val:#04x}"

    # status: busy=0, irq=0, auto_irq=0
    val = await read_reg(dut, REG_STATUS)
    assert (val & 0x07) == 0, f"[FAIL] status should be 0 after reset, got {val:#04x}"

    # auto_wakeup defaults
    checks = [
        (REG_TIMER,    0xFF, "timer_period"),
        (REG_AUTO_CMD, 0x00, "auto_cmd"),
        (REG_THRESH_H, 0xFF, "thresh_high"),
        (REG_THRESH_L, 0x00, "thresh_low"),
        (REG_AUTO_CFG, 0x00, "auto_cfg"),
    ]
    for addr, expected, name in checks:
        val = await read_reg(dut, addr)
        assert val == expected, f"[FAIL] {name}: expected {expected:#04x}, got {val:#04x}"

    # CS_N phải ở mức cao khi idle (không busy, cfg_mcs=0)
    _, _, cs_n = get_spi_pins(dut)
    assert cs_n == 1, f"[FAIL] CS_N should be HIGH at idle, got {cs_n}"

    dut._log.info("[PASS] test_01_reset_defaults")


# ===========================================================================
# TEST 02: Ghi/đọc thanh ghi cấu hình
# ===========================================================================
@cocotb.test()
async def test_02_config_readback(dut):
    """Ghi và đọc lại các thanh ghi cấu hình."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    # clk_div
    for div_val in [0, 1, 7, 15, 31, 63]:
        await write_reg(dut, REG_CLK_DIV, div_val)
        val = await read_reg(dut, REG_CLK_DIV)
        assert (val & 0x3F) == div_val, \
            f"[FAIL] clk_div={div_val}: readback {val:#04x}"

    # config: mọi tổ hợp CPOL/CPHA/LSB/MCS + WLEN
    for wlen in [0, 3, 7]:
        for flags in range(0x10):   # 4 bits: cpol, cpha, lsb, mcs
            cfg = (wlen << WLEN_SHIFT) | flags
            await write_reg(dut, REG_CONFIG, cfg)
            val = await read_reg(dut, REG_CONFIG)
            assert (val & 0x7F) == (cfg & 0x7F), \
                f"[FAIL] config={cfg:#04x}: readback {val:#04x}"

    # auto_wakeup registers
    aw_cases = [
        (REG_TIMER,    0x01), (REG_TIMER,    0x80), (REG_TIMER, 0xFF),
        (REG_AUTO_CMD, 0xAB), (REG_AUTO_CMD, 0x55),
        (REG_THRESH_H, 0xC0), (REG_THRESH_L, 0x40),
    ]
    for addr, val in aw_cases:
        await write_reg(dut, addr, val)
        rb = await read_reg(dut, addr)
        assert rb == val, f"[FAIL] addr={addr:#04x} val={val:#04x}: readback {rb:#04x}"

    dut._log.info("[PASS] test_02_config_readback")


# ===========================================================================
# TEST 03: Truyền SPI Mode 0 (CPOL=0, CPHA=0) - cơ bản
# ===========================================================================
@cocotb.test()
async def test_03_spi_mode0_basic(dut):
    """SPI Mode 0: truyền byte và kiểm tra MOSI + RX."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 1)
    await write_reg(dut, REG_CONFIG,  0x70)   # mode 0, 8-bit, MSB-first

    test_vectors = [0x00, 0xFF, 0xA5, 0x5A, 0x12, 0xF0, 0x0F, 0x55, 0xAA, 0x96]
    for tx in test_vectors:
        miso = random.randint(0, 255)
        mosi_out, rx = await spi_transfer(dut, tx, miso, clk_div=1)
        assert mosi_out == tx,   f"[FAIL] MOSI tx={tx:#04x}: captured {mosi_out:#04x}"
        assert rx       == miso, f"[FAIL] RX miso={miso:#04x}: readback {rx:#04x}"
        await write_reg(dut, REG_STATUS, 0b10)   # xóa IRQ

    dut._log.info("[PASS] test_03_spi_mode0_basic")


# ===========================================================================
# TEST 04: SPI Mode 2 (CPOL=1, CPHA=0)
# ===========================================================================
@cocotb.test()
async def test_04_spi_mode2(dut):
    """SPI Mode 2 (CPOL=1, CPHA=0) - clock idle HIGH."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 2)
    await write_reg(dut, REG_CONFIG, (7 << WLEN_SHIFT) | (1 << CPOL_BIT))

    # Kiểm tra clock ở mức cao khi idle
    await ClockCycles(dut.clk, 3)
    sclk, _, _ = get_spi_pins(dut)
    assert sclk == 1, f"[FAIL] Mode2: SCLK should idle HIGH (CPOL=1), got {sclk}"

    for tx in [0xC3, 0x3C]:
        miso = random.randint(0, 255)
        mosi_out, rx = await spi_transfer(dut, tx, miso, clk_div=2, cpol=1)
        assert mosi_out == tx, f"[FAIL] Mode2 MOSI: {mosi_out:#04x} != {tx:#04x}"
        await write_reg(dut, REG_STATUS, 0b10)

    dut._log.info("[PASS] test_04_spi_mode2")


# ===========================================================================
# TEST 05: SPI Mode 3 (CPOL=1, CPHA=1)
# ===========================================================================
@cocotb.test()
async def test_05_spi_mode3(dut):
    """SPI Mode 3 (CPOL=1, CPHA=1)."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 2)
    cfg = (7 << WLEN_SHIFT) | (1 << CPOL_BIT) | (1 << CPHA_BIT)
    await write_reg(dut, REG_CONFIG, cfg)

    for tx in [0xFF, 0x00, 0xAA]:
        miso = random.randint(0, 255)
        mosi_out, rx = await spi_transfer(dut, tx, miso, clk_div=2, cpol=1, cpha=1)
        assert mosi_out == tx, f"[FAIL] Mode3 MOSI: {mosi_out:#04x} != {tx:#04x}"
        await write_reg(dut, REG_STATUS, 0b10)

    dut._log.info("[PASS] test_05_spi_mode3")


# ===========================================================================
# TEST 06: LSB-first mode
# ===========================================================================
@cocotb.test()
async def test_06_lsb_first(dut):
    """Kiểm tra truyền LSB-first: bit thấp nhất ra trước."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 1)
    await write_reg(dut, REG_CONFIG, (7 << WLEN_SHIFT) | (1 << LSB_BIT))

    test_cases = [0b10110001, 0b01001110, 0xFF, 0x00, 0x55]
    for tx in test_cases:
        miso = random.randint(0, 255)
        mosi_out, rx = await spi_transfer(dut, tx, miso, clk_div=1, lsb=1)

        # Trong LSB mode: bit 0 ra trước, MOSI sequence = bit-reversed
        tx_reversed = int(f"{tx:08b}"[::-1], 2)
        assert mosi_out == tx_reversed, \
            f"[FAIL] LSB MOSI: {mosi_out:#04x} != reversed({tx:#04x})={tx_reversed:#04x}"
        assert rx == miso, \
            f"[FAIL] LSB RX: {rx:#04x} != {miso:#04x}"
        await write_reg(dut, REG_STATUS, 0b10)

    dut._log.info("[PASS] test_06_lsb_first")


# ===========================================================================
# TEST 07: Kiểm tra tần số clock SPI theo clk_div
# ===========================================================================
@cocotb.test()
async def test_07_clock_frequency(dut):
    """Đo half-period của SCLK và so sánh với clk_div."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CONFIG, 0x70)

    for div in [1, 3, 7, 15]:
        await write_reg(dut, REG_CLK_DIV, div)

        # Trigger transfer
        await RisingEdge(dut.clk)
        dut.address.value      = REG_TX_RX
        dut.data_in.value      = 0xFF
        dut.data_write_n.value = 0b10
        await RisingEdge(dut.clk)
        dut.data_write_n.value = 0b11
        dut.data_in.value      = 0

        prev_sclk  = 0
        half_times = []
        last_cycle = 0
        cycle      = 0

        for _ in range((div + 1) * 20 + 100):
            await RisingEdge(dut.clk)
            cycle += 1
            sclk, _, cs_n = get_spi_pins(dut)

            if sclk != prev_sclk:
                if last_cycle > 0:
                    half_times.append(cycle - last_cycle)
                last_cycle = cycle
                prev_sclk  = sclk

            if cs_n == 1 and half_times:
                break

        expected = div + 1
        for t in half_times:
            assert t == expected, \
                f"[FAIL] div={div}: half-period={t} cycles, expected {expected}"

        dut._log.info(f"  clk_div={div}: half-period={expected} sys-clks ✓")

    dut._log.info("[PASS] test_07_clock_frequency")


# ===========================================================================
# TEST 08: IRQ sau khi transfer xong
# ===========================================================================
@cocotb.test()
async def test_08_irq_generation(dut):
    """IRQ phải set sau khi transfer hoàn thành; xóa bằng ghi bit 1 vào REG_STATUS."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 1)
    await write_reg(dut, REG_CONFIG,  0x70)

    # Trước transfer: không có IRQ
    st = await read_reg(dut, REG_STATUS)
    assert (st >> IRQ_BIT) & 1 == 0, f"[FAIL] IRQ should be 0 before transfer, status={st}"

    # Thực hiện transfer
    await spi_transfer(dut, 0xAA, 0x55, clk_div=1)
    await ClockCycles(dut.clk, 3)

    # Sau transfer: IRQ set
    st = await read_reg(dut, REG_STATUS)
    assert (st >> IRQ_BIT) & 1 == 1,    f"[FAIL] IRQ should be set after transfer, status={st}"
    assert (st >> BUSY_BIT) & 1 == 0,   f"[FAIL] BUSY should be 0 after transfer"
    assert int(dut.user_interrupt.value) == 1, "[FAIL] user_interrupt pin not asserted"

    # Xóa IRQ
    await write_reg(dut, REG_STATUS, 0b10)
    await ClockCycles(dut.clk, 2)
    st = await read_reg(dut, REG_STATUS)
    assert (st >> IRQ_BIT) & 1 == 0, f"[FAIL] IRQ should be cleared after write, status={st}"

    dut._log.info("[PASS] test_08_irq_generation")


# ===========================================================================
# TEST 09: BUSY ngăn thay đổi clk_div và config
# ===========================================================================
@cocotb.test()
async def test_09_busy_protects_config(dut):
    """clk_div và config KHÔNG thể thay đổi khi SPI đang bận (busy=1)."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 15)   # clock chậm → transfer dài
    await write_reg(dut, REG_CONFIG,  0x70)

    # Bắt đầu transfer
    await RisingEdge(dut.clk)
    dut.address.value      = REG_TX_RX
    dut.data_in.value      = 0xFF
    dut.data_write_n.value = 0b10
    await RisingEdge(dut.clk)
    dut.data_write_n.value = 0b11

    # Ngay lập tức thử thay đổi clk_div và config trong khi busy
    await ClockCycles(dut.clk, 3)
    await write_reg(dut, REG_CLK_DIV, 1)    # cố thay đổi → phải bị bỏ qua
    cfg_new = (3 << WLEN_SHIFT) | (1 << CPOL_BIT)
    await write_reg(dut, REG_CONFIG, cfg_new)

    div_rb = await read_reg(dut, REG_CLK_DIV)
    cfg_rb = await read_reg(dut, REG_CONFIG)

    assert div_rb == 15,  f"[FAIL] clk_div changed while busy: {div_rb}"
    assert (cfg_rb & 0x7F) == 0x70, \
        f"[FAIL] config changed while busy: {cfg_rb:#04x}"

    await wait_idle(dut)
    dut._log.info("[PASS] test_09_busy_protects_config")


# ===========================================================================
# TEST 10: Manual CS force (MCS mode)
# ===========================================================================
@cocotb.test()
async def test_10_manual_cs_force(dut):
    """Kiểm tra cơ chế giữ CS (MCS mode + cs_force register)."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    # Bật MCS mode
    await write_reg(dut, REG_CONFIG, (7 << WLEN_SHIFT) | (1 << MCS_BIT))

    # Assert CS thủ công
    await write_reg(dut, REG_CS_CTRL, 1)
    await ClockCycles(dut.clk, 2)
    _, _, cs_n = get_spi_pins(dut)
    assert cs_n == 0, f"[FAIL] CS should be LOW after cs_force=1, got cs_n={cs_n}"

    # Truyền byte đầu, CS vẫn giữ
    await write_reg(dut, REG_CLK_DIV, 1)
    mosi_out, _ = await spi_transfer(dut, 0xAB, 0x00, clk_div=1)
    assert mosi_out == 0xAB, f"[FAIL] MOSI during MCS mode"
    await ClockCycles(dut.clk, 2)
    _, _, cs_n = get_spi_pins(dut)
    assert cs_n == 0, f"[FAIL] CS should stay LOW in MCS mode between transfers"

    # Deassert CS
    await write_reg(dut, REG_CS_CTRL, 0)
    await ClockCycles(dut.clk, 2)
    _, _, cs_n = get_spi_pins(dut)
    assert cs_n == 1, f"[FAIL] CS should be HIGH after cs_force=0, got cs_n={cs_n}"

    dut._log.info("[PASS] test_10_manual_cs_force")


# ===========================================================================
# TEST 11: Độ rộng word (WLEN) thay đổi số bit truyền
# ===========================================================================
@cocotb.test()
async def test_11_word_length(dut):
    """Kiểm tra WLEN: số bit thực sự truyền = wlen+1."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 1)

    for wlen in [3, 5, 7]:    # 4-bit, 6-bit, 8-bit
        expected_bits = wlen + 1
        await write_reg(dut, REG_CONFIG, (wlen << WLEN_SHIFT))

        # Bắt đầu transfer và đếm số bit clock
        await RisingEdge(dut.clk)
        dut.address.value      = REG_TX_RX
        dut.data_in.value      = 0xFF
        dut.data_write_n.value = 0b10
        await RisingEdge(dut.clk)
        dut.data_write_n.value = 0b11

        prev_sclk  = 0
        edge_count = 0
        for _ in range(2000):
            await RisingEdge(dut.clk)
            sclk, _, cs_n = get_spi_pins(dut)
            if sclk != prev_sclk:
                edge_count += 1
                prev_sclk = sclk
            if cs_n == 1 and edge_count > 0:
                break

        # Mỗi bit = 2 edges; tổng edges = expected_bits * 2
        actual_bits = edge_count // 2
        assert actual_bits == expected_bits, \
            f"[FAIL] wlen={wlen}: expected {expected_bits} bits, got {actual_bits}"
        await write_reg(dut, REG_STATUS, 0b10)

    dut._log.info("[PASS] test_11_word_length")


# ===========================================================================
# TEST 12: Auto-wakeup - cấu hình và readback
# ===========================================================================
@cocotb.test()
async def test_12_auto_wakeup_config(dut):
    """Cấu hình tất cả thanh ghi auto-wakeup và đọc lại."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    params = [
        (REG_TIMER,    0x05, "timer_period"),
        (REG_AUTO_CMD, 0xDA, "auto_cmd"),
        (REG_THRESH_H, 0xE0, "thresh_high"),
        (REG_THRESH_L, 0x20, "thresh_low"),
    ]
    for addr, val, name in params:
        await write_reg(dut, addr, val)
        rb = await read_reg(dut, addr)
        assert rb == val, f"[FAIL] {name}: wrote {val:#04x}, read {rb:#04x}"

    # Bật auto_en
    await write_reg(dut, REG_AUTO_CFG, 0x01)
    rb = await read_reg(dut, REG_AUTO_CFG)
    assert rb & 0x01 == 1, f"[FAIL] auto_en bit not set, REG_AUTO_CFG={rb:#04x}"

    # Tắt auto_en
    await write_reg(dut, REG_AUTO_CFG, 0x00)
    rb = await read_reg(dut, REG_AUTO_CFG)
    assert rb & 0x01 == 0, f"[FAIL] auto_en bit should be 0, REG_AUTO_CFG={rb:#04x}"

    dut._log.info("[PASS] test_12_auto_wakeup_config")


# ===========================================================================
# TEST 13: Auto-wakeup kích hoạt sau khi timer hết
# ===========================================================================
@cocotb.test()
async def test_13_auto_wakeup_trigger(dut):
    """Auto-wakeup FSM phải kích hoạt SPI transfer sau khi timer count đủ."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV,  1)
    await write_reg(dut, REG_CONFIG,   0x70)
    await write_reg(dut, REG_TIMER,    0x01)   # timer = 1 → ngưỡng = 256 clk
    await write_reg(dut, REG_AUTO_CMD, 0x55)   # lệnh gửi đi
    await write_reg(dut, REG_THRESH_H, 0xFF)   # không trigger IRQ
    await write_reg(dut, REG_THRESH_L, 0x00)
    await write_reg(dut, REG_AUTO_CFG, 0x01)   # bật auto_en

    cs_seen    = False
    mosi_bytes = []
    cur_bits   = []
    prev_sclk  = 0

    # Chờ tối đa 2000 chu kỳ
    for _ in range(2000):
        await RisingEdge(dut.clk)
        dut.ui_in.value = 0   # MISO = 0

        sclk, mosi, cs_n = get_spi_pins(dut)

        if cs_n == 0:
            cs_seen = True

        if sclk != prev_sclk and cs_n == 0:
            if sclk == 1:   # rising edge: bắt MOSI
                cur_bits.append(mosi)
                if len(cur_bits) == 8:
                    byte_val = int("".join(str(b) for b in cur_bits), 2)
                    mosi_bytes.append(byte_val)
                    cur_bits = []
        prev_sclk = sclk

        if len(mosi_bytes) >= 2:
            break

    assert cs_seen,            "[FAIL] CS never asserted by auto-wakeup"
    assert len(mosi_bytes) >= 2, f"[FAIL] Expected ≥2 SPI bytes, got {mosi_bytes}"
    assert mosi_bytes[0] == 0x55, \
        f"[FAIL] First byte should be auto_cmd=0x55, got {mosi_bytes[0]:#04x}"
    assert mosi_bytes[1] == 0x00, \
        f"[FAIL] Second byte (dummy) should be 0x00, got {mosi_bytes[1]:#04x}"

    dut._log.info(f"[PASS] test_13_auto_wakeup_trigger  bytes={[hex(b) for b in mosi_bytes]}")


# ===========================================================================
# TEST 14: Auto-wakeup IRQ khi RX > thresh_high
# ===========================================================================
@cocotb.test()
async def test_14_auto_irq_above_thresh(dut):
    """auto_irq phải set khi dữ liệu nhận > thresh_high."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV,  1)
    await write_reg(dut, REG_CONFIG,   0x70)
    await write_reg(dut, REG_TIMER,    0x01)
    await write_reg(dut, REG_THRESH_H, 0x80)  # thresh_high = 0x80
    await write_reg(dut, REG_THRESH_L, 0x10)  # thresh_low  = 0x10
    await write_reg(dut, REG_AUTO_CFG, 0x01)

    # MISO = 0xF0 > 0x80 → phải trigger auto_irq
    miso_val  = 0xF0
    miso_bits = [(miso_val >> (7 - i)) & 1 for i in range(8)]
    prev_sclk = 0
    bit_idx   = 0
    cs_active = False
    auto_irq_seen = False

    # FIX: poll REG_STATUS bit 2 (auto_irq), KHÔNG dùng user_interrupt
    # vì user_interrupt = irq | auto_irq, irq SPI-done cũng set user_interrupt
    for _ in range(4000):
        await RisingEdge(dut.clk)
        sclk, _, cs_n = get_spi_pins(dut)

        # Drive MISO liên tục cho mỗi transfer
        if cs_n == 0:
            cs_active = True
            dut.ui_in.value = miso_bits[min(bit_idx, 7)]

        if sclk != prev_sclk and cs_n == 0:
            if sclk == 0 and bit_idx < 7:
                bit_idx += 1
                dut.ui_in.value = miso_bits[bit_idx]

        if cs_n == 1 and cs_active:
            # CS deassert: FSM đang ở A_CHECK hoặc A_IDLE
            # Đợi thêm vài cycle cho A_CHECK hoàn thành
            cs_active = False
            bit_idx   = 0
            await ClockCycles(dut.clk, 5)
            # Đọc trực tiếp REG_STATUS để kiểm tra auto_irq (bit 2)
            st = await read_reg(dut, REG_STATUS)
            if (st >> AUTO_IRQ_BIT) & 1 == 1:
                auto_irq_seen = True
                break

        prev_sclk = sclk

    assert auto_irq_seen, "[FAIL] auto_irq not triggered when RX > thresh_high"

    # Kiểm tra lại REG_STATUS
    st = await read_reg(dut, REG_STATUS)
    assert (st >> AUTO_IRQ_BIT) & 1 == 1, \
        f"[FAIL] auto_irq not reflected in REG_STATUS, got {st:#04x}"

    # Xóa auto_irq (ghi bit 1 vào REG_AUTO_CFG)
    await write_reg(dut, REG_AUTO_CFG, 0b11)   # bit1=clear IRQ, bit0=keep en
    await ClockCycles(dut.clk, 2)
    rb = await read_reg(dut, REG_AUTO_CFG)
    assert (rb >> 1) & 1 == 0, f"[FAIL] auto_irq should be cleared, REG_AUTO_CFG={rb:#04x}"

    dut._log.info("[PASS] test_14_auto_irq_above_thresh")


# ===========================================================================
# TEST 15: Auto-wakeup IRQ khi RX < thresh_low
# ===========================================================================
@cocotb.test()
async def test_15_auto_irq_below_thresh(dut):
    """auto_irq phải set khi dữ liệu nhận < thresh_low."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV,  1)
    await write_reg(dut, REG_CONFIG,   0x70)
    await write_reg(dut, REG_TIMER,    0x01)
    await write_reg(dut, REG_THRESH_H, 0xE0)
    await write_reg(dut, REG_THRESH_L, 0x20)  # thresh_low = 0x20
    await write_reg(dut, REG_AUTO_CFG, 0x01)

    # MISO = 0x05 < 0x20 → phải trigger IRQ
    miso_val  = 0x05
    miso_bits = [(miso_val >> (7 - i)) & 1 for i in range(8)]
    prev_sclk = 0
    bit_idx   = 0
    irq_seen  = False
    cs_active = False

    for _ in range(3000):
        await RisingEdge(dut.clk)
        sclk, _, cs_n = get_spi_pins(dut)

        if cs_n == 0:
            cs_active = True
            dut.ui_in.value = miso_bits[min(bit_idx, 7)]

        if sclk != prev_sclk and cs_n == 0:
            if sclk == 0 and bit_idx < 7:
                bit_idx += 1
                dut.ui_in.value = miso_bits[bit_idx]

        if cs_n == 1 and cs_active:
            bit_idx   = 0
            cs_active = False

        prev_sclk = sclk

        if int(dut.user_interrupt.value) == 1:
            irq_seen = True
            break

    assert irq_seen, "[FAIL] auto_irq not triggered when RX < thresh_low"
    dut._log.info("[PASS] test_15_auto_irq_below_thresh")


# ===========================================================================
# TEST 16: Auto-wakeup bị tắt thì không hoạt động
# ===========================================================================
@cocotb.test()
async def test_16_auto_wakeup_disabled(dut):
    """Khi auto_en=0, không có SPI transfer nào được kích hoạt tự động."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV,  1)
    await write_reg(dut, REG_CONFIG,   0x70)
    await write_reg(dut, REG_TIMER,    0x01)   # timer ngắn
    await write_reg(dut, REG_AUTO_CFG, 0x00)   # auto_en = 0

    # Chờ đủ dài để timer có thể hết nếu bật
    for _ in range(1500):
        await RisingEdge(dut.clk)
        assert int(dut.user_interrupt.value) == 0, \
            "[FAIL] IRQ fired even though auto_en=0"
        _, _, cs_n = get_spi_pins(dut)
        assert cs_n == 1, "[FAIL] CS asserted even though auto_en=0"

    st = await read_reg(dut, REG_STATUS)
    assert (st & 0x07) == 0, f"[FAIL] Status should be 0, got {st:#04x}"

    dut._log.info("[PASS] test_16_auto_wakeup_disabled")


# ===========================================================================
# TEST 17: Nhiều transfer liên tiếp (stress test)
# ===========================================================================
@cocotb.test()
async def test_17_multiple_transfers(dut):
    """Stress test: 20 lần transfer liên tiếp với dữ liệu ngẫu nhiên."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 1)
    await write_reg(dut, REG_CONFIG,  0x70)

    random.seed(42)
    for i in range(20):
        tx   = random.randint(0, 255)
        miso = random.randint(0, 255)
        mosi_out, rx = await spi_transfer(dut, tx, miso, clk_div=1)
        assert mosi_out == tx,   f"[FAIL] iter={i} MOSI: {mosi_out:#04x} != {tx:#04x}"
        assert rx       == miso, f"[FAIL] iter={i} RX: {rx:#04x} != {miso:#04x}"
        await write_reg(dut, REG_STATUS, 0b10)   # clear IRQ
        await ClockCycles(dut.clk, 2)

    dut._log.info("[PASS] test_17_multiple_transfers (20 random transfers)")


# ===========================================================================
# TEST 18: Kiểm tra BUSY bit trong quá trình transfer
# ===========================================================================
@cocotb.test()
async def test_18_busy_flag(dut):
    """BUSY phải HIGH trong suốt quá trình transfer và LOW sau khi xong."""
    cocotb.start_soon(Clock(dut.clk, CLK_PERIOD_NS, units="ns").start())
    await do_reset(dut)

    await write_reg(dut, REG_CLK_DIV, 7)   # clock chậm để đo BUSY rõ hơn
    await write_reg(dut, REG_CONFIG,  0x70)

    # Trigger
    await RisingEdge(dut.clk)
    dut.address.value      = REG_TX_RX
    dut.data_in.value      = 0x55
    dut.data_write_n.value = 0b10
    await RisingEdge(dut.clk)
    dut.data_write_n.value = 0b11

    busy_seen_high = False
    busy_seen_low  = False

    for _ in range(3000):
        await RisingEdge(dut.clk)
        _, _, cs_n = get_spi_pins(dut)

        # Kiểm tra busy qua CS (trong non-MCS mode: cs_n = ~busy)
        if cs_n == 0:
            busy_seen_high = True
        if cs_n == 1 and busy_seen_high:
            busy_seen_low = True
            break

    assert busy_seen_high, "[FAIL] Never saw BUSY=1 during transfer"
    assert busy_seen_low,  "[FAIL] BUSY never returned to 0 after transfer"

    # Kiểm tra status register cũng phản ánh đúng
    st = await read_reg(dut, REG_STATUS)
    assert (st >> BUSY_BIT) & 1 == 0, f"[FAIL] BUSY bit still set in STATUS={st:#04x}"

    dut._log.info("[PASS] test_18_busy_flag")
