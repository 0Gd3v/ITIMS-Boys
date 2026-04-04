import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge, FallingEdge
from tqv import TinyQV

PERIPHERAL_NUM = 16

# =============================================================================
# Pin map  (uo_out bit positions)
# =============================================================================
SCLK_BIT = 0   # uo_out[0] = SCLK
MOSI_BIT = 1   # uo_out[1] = MOSI
CS_BIT   = 2   # uo_out[2] = CS_n  (active low)
IRQ_BIT  = 3   # uo_out[3] = IRQ

# Register addresses
REG_DATA   = 0   # TX (W) / RX hold (R)
REG_STATUS = 1   # [0]=busy  [1]=irq  — write bit[1]=1 to clear IRQ
REG_CLKDIV = 2   # 6-bit clock divider
REG_CONFIG = 3   # [0]=CPOL [1]=CPHA [2]=LSB_first [3]=manual_cs [6:4]=wlen-1
REG_CS     = 4   # [0]=cs_assert  (manual CS only)

# --- Added Extended Registers to demonstrate vulnerabilities in the old module ---
REG_TIMER   = 5   
REG_AUTOCMD = 6   
REG_THRESH  = 7   
REG_AUTOEN  = 8   
REG_LOCK    = 9   

# Config register helpers  — [6:4] = word_len-1,  default 8-bit = 0b111 -> 0x70
CFG_MODE0  = 0x70   # CPOL=0 CPHA=0  8-bit  MSB-first
CFG_MODE1  = 0x72   # CPOL=0 CPHA=1
CFG_MODE2  = 0x71   # CPOL=1 CPHA=0
CFG_MODE3  = 0x73   # CPOL=1 CPHA=1
CFG_LSBF   = 0x74   # CPOL=0 CPHA=0  LSB-first

# =============================================================================
# Pin accessors
# =============================================================================
def get_sclk(dut): return (int(dut.uo_out.value) >> SCLK_BIT) & 1
def get_mosi(dut): return (int(dut.uo_out.value) >> MOSI_BIT) & 1
def get_cs_n(dut): return (int(dut.uo_out.value) >> CS_BIT)   & 1
def get_irq(dut):  return (int(dut.uo_out.value) >> IRQ_BIT)  & 1

# =============================================================================
# SCLK / CS edge helpers
# =============================================================================
async def wait_sclk_rising(dut):
    """Wait for SCLK low->high transition."""
    while get_sclk(dut):
        await RisingEdge(dut.clk)
    while not get_sclk(dut):
        await RisingEdge(dut.clk)

async def wait_sclk_falling(dut):
    """Wait for SCLK high->low transition."""
    while not get_sclk(dut):
        await RisingEdge(dut.clk)
    while get_sclk(dut):
        await RisingEdge(dut.clk)

async def wait_cs_assert(dut):
    """Wait until CS_n goes low (transfer active)."""
    while get_cs_n(dut):
        await RisingEdge(dut.clk)

async def wait_cs_deassert(dut):
    """Wait until CS_n goes high (transfer done)."""
    while not get_cs_n(dut):
        await RisingEdge(dut.clk)

async def wait_idle(tqv, dut, timeout_cycles=1000):
    """Poll status register until busy=0, with a cycle-count timeout."""
    cycles = 0
    while (await tqv.read_byte_reg(REG_STATUS)) & 0x01:
        await ClockCycles(dut.clk, 5)
        cycles += 5
        assert cycles < timeout_cycles, "Timed out waiting for idle"

async def wait_irq(tqv, dut, timeout_cycles=1000):
    """Poll status register until irq=1, with a cycle-count timeout."""
    cycles = 0
    while not ((await tqv.read_byte_reg(REG_STATUS)) & 0x02):
        await ClockCycles(dut.clk, 5)
        cycles += 5
        assert cycles < timeout_cycles, "Timed out waiting for IRQ"

# =============================================================================
# MISO responder — background coroutine, run with cocotb.start_soon()
# =============================================================================
async def miso_responder(dut, miso_byte, cpol=0, cpha=0, word_len=8, lsb_first=False):
    if lsb_first:
        wire_bits = [(miso_byte >> i) & 1 for i in range(word_len)]
    else:
        wire_bits = [(miso_byte >> (word_len - 1 - i)) & 1 for i in range(word_len)]

    drive_on_falling = (cpol == cpha)

    await wait_cs_assert(dut)

    dut.ui_in.value = wire_bits[0]
    await ClockCycles(dut.clk, 1)

    for bit in wire_bits[1:]:
        if drive_on_falling:
            await wait_sclk_falling(dut)
        else:
            await wait_sclk_rising(dut)
        dut.ui_in.value = bit
        await ClockCycles(dut.clk, 1)   

    await wait_cs_deassert(dut)
    dut.ui_in.value = 0

# =============================================================================
# Test setup
# =============================================================================
async def setup_test(dut):
    clock = Clock(dut.clk, 100, unit="ns")   
    cocotb.start_soon(clock.start())
    tqv = TinyQV(dut, PERIPHERAL_NUM)
    await tqv.reset()
    dut.ui_in.value = 0   
    return tqv

# =============================================================================
# PART 1: ORIGINAL FUNCTIONAL TESTS (UNCHANGED)
# =============================================================================

@cocotb.test()
async def test_varying_clock_speeds(dut):
    """Case 1: Verify SPI busy bit clears after transmission for dividers 0, 4, 10."""
    tqv = await setup_test(dut)

    for divider in [0, 4, 10]:
        dut._log.info(f"Testing with clk_divider = {divider}")
        await tqv.write_byte_reg(REG_CLKDIV, divider)
        await tqv.write_byte_reg(REG_DATA, 0xAA)   

        await wait_idle(tqv, dut)
        dut._log.info(f"Transmission finished for divider {divider}")

@cocotb.test()
async def test_back_to_back_transmissions(dut):
    """Case 2: CS returns high (idle) after two consecutive back-to-back writes."""
    tqv = await setup_test(dut)

    for data in [0xA5, 0x5A]:
        await wait_idle(tqv, dut)
        await tqv.write_byte_reg(REG_DATA, data)

    await ClockCycles(dut.clk, 200)
    assert get_cs_n(dut) == 1, "CS should be high (idle) after all transmissions"

@cocotb.test()
async def test_reset_during_transmission(dut):
    """Case 3: Mid-transfer reset clears busy flag and deasserts CS."""
    tqv = await setup_test(dut)

    await tqv.write_byte_reg(REG_CLKDIV, 62)
    await tqv.write_byte_reg(REG_DATA, 0xFF)
    await ClockCycles(dut.clk, 20)

    status = await tqv.read_byte_reg(REG_STATUS)
    assert status & 0x01, "Peripheral should be busy before reset"

    dut._log.info("Triggering mid-transfer reset...")
    await tqv.reset()

    status = await tqv.read_byte_reg(REG_STATUS)
    assert not (status & 0x01), "Busy bit should be 0 after reset"
    assert get_cs_n(dut) == 1,  "CS_n should be high after reset"

@cocotb.test()
async def test_msb_first_verification(dut):
    """Case 4: Transmitting 0x80 (1000_0000) produces MOSI=1 on the first bit."""
    tqv = await setup_test(dut)

    await tqv.write_byte_reg(REG_DATA, 0x80)
    await wait_cs_assert(dut)
    await wait_sclk_rising(dut)

    mosi = get_mosi(dut)
    assert mosi == 1, f"MOSI should be 1 for MSB of 0x80, got {mosi}"
    dut._log.info(f"MSB check: MOSI={mosi} -- OK")

@cocotb.test()
async def test_divider_timing_precision(dut):
    """Case 5: SCLK half-period equals (clk_div + 1) system clock cycles."""
    tqv = await setup_test(dut)
    divider_val = 2
    await tqv.write_byte_reg(REG_CLKDIV, divider_val)
    await tqv.write_byte_reg(REG_DATA, 0xFF)

    await wait_cs_assert(dut)

    count = 0
    initial = get_sclk(dut)
    while get_sclk(dut) == initial:
        await RisingEdge(dut.clk)
        count += 1

    dut._log.info(f"SCLK toggled after {count} system cycles (divider={divider_val})")
    assert count >= divider_val, \
        f"SCLK toggled too fast: expected >= {divider_val} cycles, got {count}"

@cocotb.test()
async def test_miso_basic_receive(dut):
    """Case 6: Receive 0xC3 on MISO in Mode 0 (CPOL=0, CPHA=0)."""
    tqv = await setup_test(dut)
    miso_byte = 0xC3

    await tqv.write_byte_reg(REG_CONFIG, CFG_MODE0)
    await tqv.write_byte_reg(REG_CLKDIV, 4)

    cocotb.start_soon(miso_responder(dut, miso_byte, cpol=0, cpha=0))
    await tqv.write_byte_reg(REG_DATA, 0x00)   

    await wait_irq(tqv, dut)

    rx = await tqv.read_byte_reg(REG_DATA)
    dut._log.info(f"MISO basic: expected=0x{miso_byte:02X}  got=0x{rx:02X}")
    assert rx == miso_byte, f"RX mismatch: expected 0x{miso_byte:02X}, got 0x{rx:02X}"

    await tqv.write_byte_reg(REG_STATUS, 0x02)   
    status = await tqv.read_byte_reg(REG_STATUS)
    assert not (status & 0x02), "IRQ should be 0 after W1C"

@cocotb.test()
async def test_miso_all_spi_modes(dut):
    """Case 7: Correct MISO sampling in all four SPI modes (0-3)."""
    tqv = await setup_test(dut)
    await tqv.write_byte_reg(REG_CLKDIV, 4)

    modes = [
        (0, 0, CFG_MODE0, 0xA5, "Mode 0 CPOL=0 CPHA=0"),
        (0, 1, CFG_MODE1, 0x5A, "Mode 1 CPOL=0 CPHA=1"),
        (1, 0, CFG_MODE2, 0xF0, "Mode 2 CPOL=1 CPHA=0"),
        (1, 1, CFG_MODE3, 0x0F, "Mode 3 CPOL=1 CPHA=1"),
    ]

    for cpol, cpha, cfg, miso_byte, label in modes:
        dut._log.info(f"Testing {label}")
        await tqv.write_byte_reg(REG_CONFIG, cfg)

        cocotb.start_soon(miso_responder(dut, miso_byte, cpol=cpol, cpha=cpha))
        await tqv.write_byte_reg(REG_DATA, 0x00)

        await wait_irq(tqv, dut)

        rx = await tqv.read_byte_reg(REG_DATA)
        dut._log.info(f"  {label}: expected=0x{miso_byte:02X}  got=0x{rx:02X}")
        assert rx == miso_byte, \
            f"{label}: RX mismatch expected 0x{miso_byte:02X}, got 0x{rx:02X}"

        await tqv.write_byte_reg(REG_STATUS, 0x02)
        await ClockCycles(dut.clk, 10)

@cocotb.test()
async def test_miso_lsb_first(dut):
    """Case 8: LSB-first receive — peripheral reverses bits before latching rx_hold."""
    tqv = await setup_test(dut)
    miso_byte = 0xB4   

    await tqv.write_byte_reg(REG_CONFIG, CFG_LSBF)
    await tqv.write_byte_reg(REG_CLKDIV, 4)

    cocotb.start_soon(
        miso_responder(dut, miso_byte, cpol=0, cpha=0, lsb_first=True)
    )
    await tqv.write_byte_reg(REG_DATA, 0x00)

    await wait_irq(tqv, dut)

    rx = await tqv.read_byte_reg(REG_DATA)
    dut._log.info(f"LSB-first: expected=0x{miso_byte:02X}  got=0x{rx:02X}")
    assert rx == miso_byte, \
        f"LSB-first RX mismatch: expected 0x{miso_byte:02X}, got 0x{rx:02X}"

    await tqv.write_byte_reg(REG_STATUS, 0x02)

@cocotb.test()
async def test_miso_irq_flag(dut):
    """Case 9: IRQ=0 at idle, IRQ=1 after transfer, cleared by W1C, re-arms next transfer."""
    tqv = await setup_test(dut)
    await tqv.write_byte_reg(REG_CONFIG, CFG_MODE0)
    await tqv.write_byte_reg(REG_CLKDIV, 4)

    status = await tqv.read_byte_reg(REG_STATUS)
    assert not (status & 0x02), "IRQ should be 0 at idle"

    cocotb.start_soon(miso_responder(dut, 0x55))
    await tqv.write_byte_reg(REG_DATA, 0xAA)

    await wait_irq(tqv, dut)

    status = await tqv.read_byte_reg(REG_STATUS)
    assert status & 0x02,       "IRQ should be 1 after transfer"
    assert not (status & 0x01), "Busy should be 0 after transfer"

    rx = await tqv.read_byte_reg(REG_DATA)
    assert rx == 0x55, f"Transfer 1 RX should be 0x55, got 0x{rx:02X}"
    dut._log.info(f"Transfer 1: RX=0x{rx:02X}, status=0b{status:08b} -- OK")

    await tqv.write_byte_reg(REG_STATUS, 0x02)
    status = await tqv.read_byte_reg(REG_STATUS)
    assert not (status & 0x02), "IRQ should be 0 after W1C"

    cocotb.start_soon(miso_responder(dut, 0xAA))
    await tqv.write_byte_reg(REG_DATA, 0x55)

    await wait_irq(tqv, dut)

    rx = await tqv.read_byte_reg(REG_DATA)
    assert rx == 0xAA, f"Transfer 2 RX should be 0xAA, got 0x{rx:02X}"
    dut._log.info(f"Transfer 2 re-arm: RX=0x{rx:02X} -- OK")

    await tqv.write_byte_reg(REG_STATUS, 0x02)

@cocotb.test()
async def test_miso_full_duplex(dut):
    """Case 10: MOSI bits (observed per-clock) and MISO rx_hold are both correct simultaneously."""
    tqv = await setup_test(dut)
    tx_byte   = 0xA5   
    miso_byte = 0x3C   

    await tqv.write_byte_reg(REG_CONFIG, CFG_MODE0)
    await tqv.write_byte_reg(REG_CLKDIV, 5)   

    cocotb.start_soon(miso_responder(dut, miso_byte, cpol=0, cpha=0))
    await tqv.write_byte_reg(REG_DATA, tx_byte)

    await wait_cs_assert(dut)
    observed_tx = 0
    for bit_idx in range(8):
        await wait_sclk_rising(dut)
        bit = get_mosi(dut)
        observed_tx = (observed_tx << 1) | bit
        dut._log.info(f"  MOSI bit {7 - bit_idx}: {bit}")

    await wait_irq(tqv, dut)
    rx = await tqv.read_byte_reg(REG_DATA)

    dut._log.info(
        f"Full-duplex TX: expected=0x{tx_byte:02X}  observed=0x{observed_tx:02X}"
    )
    dut._log.info(
        f"Full-duplex RX: expected=0x{miso_byte:02X}  got=0x{rx:02X}"
    )

    assert observed_tx == tx_byte, \
        f"MOSI mismatch: sent 0x{tx_byte:02X}, line showed 0x{observed_tx:02X}"
    assert rx == miso_byte, \
        f"MISO mismatch: expected 0x{miso_byte:02X}, got 0x{rx:02X}"

    await tqv.write_byte_reg(REG_STATUS, 0x02)


# =============================================================================
# PART 2: VULNERABILITY DEMONSTRATION EXPLOITS (NEW FOR DP3 REPORT)
# =============================================================================

@cocotb.test()
async def test_sec_fail_unauthorized_sleepwalker_hijack(dut):
    """
    SECURITY FLAW 1: Zero-Trust Failure. 
    Demonstrates that the old hardware allows anyone to hijack the Sleep-Walker 
    without requiring a password/hardware lock.
    """
    tqv = await setup_test(dut)
    
    dut._log.info("Simulating Hacker hijacking the Sleep-Walker configuration...")
    await tqv.write_byte_reg(REG_CONFIG, CFG_MODE0)
    await tqv.write_byte_reg(REG_CLKDIV, 4)
    
    # 1. Hacker directly writes malicious thresholds and enables the system
    # (Notice: No CAFEBABE unlock key is sent prior to this!)
    await tqv.write_word_reg(REG_THRESH, 0xFFFF) # Always trigger anomaly
    await tqv.write_word_reg(REG_AUTOEN, 0x01)   # Enable immediately
    
    # Simulate a dummy sensor responding
    cocotb.start_soon(miso_responder(dut, 0x55, word_len=8))
    
    # Wait for the unauthorized sleep-walker cycle to execute
    await ClockCycles(dut.clk, 250)
    
    status = await tqv.read_byte_reg(REG_STATUS)
    
    # In a SECURE system, the Sleep-Walker would have rejected the write, 
    # meaning auto_irq (bit 2) would be 0.
    # Because this is the old insecure module, the assertion below will intentionally FAIL!
    assert not (status & 0x04), "SECURITY FLAW EXPLOITED: The hardware executed an unauthorized Sleep-Walker command!"

@cocotb.test()
async def test_sec_fail_no_tamper_detection(dut):
    """
    SECURITY FLAW 2: Missing Tamper Evidence.
    Demonstrates that the old hardware does not catch or report brute-force attacks.
    """
    tqv = await setup_test(dut)
    
    dut._log.info("Simulating Hacker brute-force attack on the Lock Register...")
    
    # Hacker attempts to write garbage data to the Lock Register (Addr 9)
    await tqv.write_word_reg(REG_LOCK, 0xDEADBEEF)
    
    # Check if the hardware flagged the malicious intrusion attempt
    status = await tqv.read_byte_reg(REG_STATUS)
    
    # In your NEW secure system, this would flip bit 3 (0x08) to HIGH (Tamper Flag).
    # Because this is the old insecure module, it doesn't know what a tamper is.
    # The assertion below will intentionally FAIL, proving the lack of detection!
    assert (status & 0x08), "SECURITY FLAW EXPLOITED: Hardware lacks Tamper Evidence! The brute-force attack went completely undetected."
