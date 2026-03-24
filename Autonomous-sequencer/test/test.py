import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge
from tqv import TinyQV

# Pin mapping
SCLK_BIT = 0
MOSI_BIT = 1
CS_BIT   = 2
IRQ_BIT  = 3

REG_DATA   = 0
REG_STATUS = 1
REG_CLKDIV = 2
REG_CONFIG = 3
REG_CS     = 4

FRAME = 300   # cycles per spi_reg frame

def get_sclk(dut): return (int(dut.uo_out.value) >> SCLK_BIT) & 1
def get_mosi(dut): return (int(dut.uo_out.value) >> MOSI_BIT) & 1
def get_cs_n(dut): return (int(dut.uo_out.value) >> CS_BIT)   & 1
def get_irq(dut):  return (int(dut.uo_out.value) >> IRQ_BIT)  & 1

def set_miso(dut, bit):
    dut.ui_in.value = (int(dut.ui_in.value) & ~1) | (bit & 1)

async def wait_cs_low(dut, timeout=500000):
    for _ in range(timeout):
        if get_cs_n(dut) == 0: return
        await RisingEdge(dut.clk)
    assert False, f"Timeout: CS never went low. uo_out=0x{int(dut.uo_out.value):02X}"

async def wait_cs_high(dut, timeout=500000):
    for _ in range(timeout):
        if get_cs_n(dut) == 1: return
        await RisingEdge(dut.clk)
    assert False, "Timeout: CS never went high"

async def wait_irq(dut, timeout=500000):
    for _ in range(timeout):
        if get_irq(dut) == 1: return
        await RisingEdge(dut.clk)
    assert False, "Timeout: IRQ never fired"

async def wait_sclk(dut, target, timeout=500000):
    for _ in range(timeout):
        if get_sclk(dut) == target: return
        await RisingEdge(dut.clk)
    assert False, f"Timeout: SCLK never went {'high' if target else 'low'}"

async def miso_responder(dut, byte_to_send, cpol=0, cpha=0):
    """Drive MISO bits in sync with the peripheral SPI clock."""
    bits = [(byte_to_send >> (7 - i)) & 1 for i in range(8)]
    await wait_cs_low(dut)
    set_miso(dut, bits[0])
    for i in range(8):
        if cpol == cpha:
            await wait_sclk(dut, 1)
            await wait_sclk(dut, 0)
        else:
            await wait_sclk(dut, 0)
            await wait_sclk(dut, 1)
        if i < 7:
            set_miso(dut, bits[i + 1])
    await wait_cs_high(dut)
    set_miso(dut, 0)

async def drain_auto_transfer(dut, tqv):
    """Wait for any in-progress auto transfer, clear IRQ, ensure CS is idle."""
    # If CS is already low, a transfer is in progress — serve it with dummy MISO
    if get_cs_n(dut) == 0:
        resp = cocotb.start_soon(miso_responder(dut, 0x00))
        await wait_cs_high(dut)
    # Wait for IRQ and clear it
    if get_irq(dut) == 0:
        await wait_irq(dut, timeout=50000)
    await tqv.write_reg(REG_STATUS, 0x02)
    await ClockCycles(dut.clk, FRAME)

async def setup(dut, disable_auto=True):
    cocotb.start_soon(Clock(dut.clk, 10, units="ns").start())
    tqv = TinyQV(dut, 16)
    await tqv.reset(disable_auto=disable_auto)
    if disable_auto:
        # Drain the first auto transfer that fires after reset
        await drain_auto_transfer(dut, tqv)
        # Wait for CS to be solidly idle before returning
        await wait_cs_high(dut)
        await ClockCycles(dut.clk, FRAME)
    return tqv


# =============================================================================
# Manual tests — sequencer runs in background, CPU writes take priority
# =============================================================================

@cocotb.test()
async def test_basic_transfer_irq(dut):
    """Case 1: CPU writes TX → CS low → transfer → IRQ fires → RX correct."""
    tqv = await setup(dut)

    cfg = await tqv.read_reg(REG_CONFIG)
    assert cfg == 0x08, f"Expected cfg=0x08 after reset, got 0x{cfg:02X}"
    dut._log.info(f"Config after reset: 0x{cfg:02X} ✓")

    cocotb.start_soon(miso_responder(dut, 0x3C))
    await tqv.write_reg(REG_DATA, 0xA5)
    await wait_irq(dut)
    dut._log.info("IRQ received ✓")

    rx = await tqv.read_reg(REG_DATA)
    assert rx == 0x3C, f"RX mismatch: expected 0x3C got 0x{rx:02X}"
    dut._log.info(f"RX=0x{rx:02X} ✓")

    status = await tqv.read_reg(REG_STATUS)
    assert not (status & 0x01), "Busy should be 0"
    assert      status & 0x02,  "IRQ bit should be set"

    await tqv.write_reg(REG_STATUS, 0x02)
    await ClockCycles(dut.clk, FRAME)
    assert get_irq(dut) == 0, "IRQ should clear after W1C"
    dut._log.info("IRQ cleared ✓")


@cocotb.test()
async def test_cs_behavior_autocs(dut):
    """Case 2: CS high at idle, low during transfer, high after done."""
    tqv = await setup(dut)

    assert get_cs_n(dut) == 1, "CS should be high at idle"

    cocotb.start_soon(miso_responder(dut, 0x00))
    await tqv.write_reg(REG_DATA, 0xFF)

    await wait_cs_low(dut)
    assert get_cs_n(dut) == 0, "CS should be low during transfer"
    await wait_cs_high(dut)
    assert get_cs_n(dut) == 1, "CS should return high after transfer"
    dut._log.info("AutoCS behavior ✓")

    await tqv.write_reg(REG_STATUS, 0x02)


@cocotb.test()
async def test_clkdiv_changes_speed(dut):
    """Case 3: Higher clk_div → longer SCLK half-period."""
    tqv = await setup(dut)

    results = {}
    for div in [1, 7, 15]:
        await tqv.write_reg(REG_CLKDIV, div)
        await ClockCycles(dut.clk, FRAME)

        cocotb.start_soon(miso_responder(dut, 0x00))
        await tqv.write_reg(REG_DATA, 0xFF)

        await wait_cs_low(dut)
        await wait_sclk(dut, 1)

        count = 0
        while get_sclk(dut) == 1:
            await RisingEdge(dut.clk)
            count += 1
            assert count < 50000, "SCLK never fell"

        results[div] = count
        dut._log.info(f"clk_div={div}: SCLK high for {count} sys-clk cycles")

        await wait_irq(dut)
        await tqv.write_reg(REG_STATUS, 0x02)
        await ClockCycles(dut.clk, FRAME)

    assert results[1] < results[7] < results[15], \
        f"Half-period should grow with clk_div: {results}"
    dut._log.info("Clock divider timing ✓")


@cocotb.test()
async def test_lsb_first(dut):
    """Case 4: LSB-first — first MOSI bit of 0x01 should be 1."""
    tqv = await setup(dut)

    await tqv.write_reg(REG_CONFIG, 0x0C)
    await ClockCycles(dut.clk, FRAME)

    first_mosi = []
    async def capture_first_mosi():
        await wait_cs_low(dut)
        await RisingEdge(dut.clk)
        first_mosi.append(get_mosi(dut))

    capture = cocotb.start_soon(capture_first_mosi())
    await tqv.write_reg(REG_DATA, 0x01)
    await capture

    assert len(first_mosi) > 0, "CS never went low"
    assert first_mosi[0] == 1, \
        f"LSB-first: first bit of 0x01 should be 1, got {first_mosi[0]}"
    dut._log.info(f"LSB-first MOSI={first_mosi[0]} ✓")

    await wait_irq(dut)
    await tqv.write_reg(REG_STATUS, 0x02)


@cocotb.test()
async def test_full_duplex(dut):
    """Case 5: MOSI and MISO correct simultaneously."""
    tqv = await setup(dut)

    tx_byte = 0xA5
    rx_byte = 0x3C

    observed_tx_bits = []
    async def capture_mosi():
        await wait_cs_low(dut)
        for _ in range(8):
            await wait_sclk(dut, 0)
            await wait_sclk(dut, 1)
            observed_tx_bits.append(get_mosi(dut))

    mosi_capture = cocotb.start_soon(capture_mosi())
    cocotb.start_soon(miso_responder(dut, rx_byte))
    await tqv.write_reg(REG_DATA, tx_byte)

    await mosi_capture
    await wait_irq(dut)
    rx = await tqv.read_reg(REG_DATA)

    observed_tx = 0
    for bit in observed_tx_bits:
        observed_tx = (observed_tx << 1) | bit

    assert observed_tx == tx_byte, \
        f"MOSI: expected 0x{tx_byte:02X} got 0x{observed_tx:02X}"
    assert rx == rx_byte, \
        f"MISO: expected 0x{rx_byte:02X} got 0x{rx:02X}"
    dut._log.info(f"Full-duplex TX=0x{observed_tx:02X} RX=0x{rx:02X} ✓")

    await tqv.write_reg(REG_STATUS, 0x02)


@cocotb.test()
async def test_back_to_back(dut):
    """Case 6: Two consecutive CPU-triggered transfers both complete correctly."""
    tqv = await setup(dut)

    for tx, exp_rx in [(0xAA, 0x55), (0xF0, 0x0F)]:
        cocotb.start_soon(miso_responder(dut, exp_rx))
        await tqv.write_reg(REG_DATA, tx)
        await wait_irq(dut)

        rx = await tqv.read_reg(REG_DATA)
        assert rx == exp_rx, \
            f"Transfer 0x{tx:02X}: expected 0x{exp_rx:02X} got 0x{rx:02X}"
        dut._log.info(f"Transfer 0x{tx:02X} → RX=0x{rx:02X} ✓")

        await tqv.write_reg(REG_STATUS, 0x02)
        await ClockCycles(dut.clk, FRAME)

    assert get_cs_n(dut) == 1, "CS should be idle after both transfers"
    dut._log.info("Back-to-back ✓")


@cocotb.test()
async def test_reset_mid_transfer(dut):
    """Case 7: Reset during transfer clears busy and deasserts CS."""
    tqv = await setup(dut)

    await tqv.write_reg(REG_CLKDIV, 63)
    await ClockCycles(dut.clk, FRAME)

    await tqv.write_reg(REG_DATA, 0xFF)
    await wait_cs_low(dut)
    await ClockCycles(dut.clk, 50)

    dut._log.info("Resetting mid-transfer...")
    await tqv.reset(disable_auto=True)

    # After reset the sequencer restarts — drain its first auto transfer
    # so we can check CS cleanly
    await drain_auto_transfer(dut, tqv)
    await wait_cs_high(dut)

    assert get_cs_n(dut) == 1, "CS should be high after reset"
    status = await tqv.read_reg(REG_STATUS)
    assert not (status & 0x01), "Busy should be 0 after reset"
    dut._log.info("Reset mid-transfer ✓")


@cocotb.test()
async def test_irq_w1c(dut):
    """Case 8: IRQ clears only on W1C (bit 1), not on writing 0x00."""
    tqv = await setup(dut)

    cocotb.start_soon(miso_responder(dut, 0x00))
    await tqv.write_reg(REG_DATA, 0x00)
    await wait_irq(dut)

    assert get_irq(dut) == 1, "IRQ should be 1 after transfer"

    await tqv.write_reg(REG_STATUS, 0x00)
    await ClockCycles(dut.clk, FRAME)
    assert get_irq(dut) == 1, "IRQ should still be 1 after writing 0x00"

    await tqv.write_reg(REG_STATUS, 0x02)
    await ClockCycles(dut.clk, FRAME)
    assert get_irq(dut) == 0, "IRQ should be 0 after W1C"
    dut._log.info("IRQ W1C ✓")


@cocotb.test()
async def test_config_persists(dut):
    """Case 9: Config and CLKDIV registers hold values across idle."""
    tqv = await setup(dut)

    await tqv.write_reg(REG_CONFIG, 0x0C)
    await ClockCycles(dut.clk, FRAME)
    await tqv.write_reg(REG_CLKDIV, 15)
    await ClockCycles(dut.clk, FRAME)

    cfg = await tqv.read_reg(REG_CONFIG)
    div = await tqv.read_reg(REG_CLKDIV)

    assert cfg == 0x0C, f"Config not persisted: expected 0x0C got 0x{cfg:02X}"
    assert div == 15,   f"CLKDIV not persisted: expected 15 got {div}"
    dut._log.info(f"Config=0x{cfg:02X} CLKDIV={div} ✓")


@cocotb.test()
async def test_debug_signals(dut):
    """Case 10: Log every uo_out transition during a CPU-triggered transfer."""
    tqv = await setup(dut)

    dut._log.info("=== DEBUG TRANSFER ===")
    dut._log.info(
        f"Initial: uo_out=0x{int(dut.uo_out.value):02X} "
        f"SCLK={get_sclk(dut)} MOSI={get_mosi(dut)} "
        f"CS_n={get_cs_n(dut)} IRQ={get_irq(dut)}"
    )

    cocotb.start_soon(miso_responder(dut, 0x5A))
    await tqv.write_reg(REG_DATA, 0xA5)

    prev = int(dut.uo_out.value)
    for cycle in range(5000):
        await RisingEdge(dut.clk)
        cur = int(dut.uo_out.value)
        if cur != prev:
            dut._log.info(
                f"  cyc {cycle:4d}: 0x{cur:02X} | "
                f"SCLK={(cur>>0)&1} MOSI={(cur>>1)&1} "
                f"CS_n={(cur>>2)&1} IRQ={(cur>>3)&1}"
            )
            prev = cur
        if get_irq(dut):
            dut._log.info(f"  → IRQ at cycle {cycle}")
            break

    rx = await tqv.read_reg(REG_DATA)
    status = await tqv.read_reg(REG_STATUS)
    dut._log.info(f"RX=0x{rx:02X} STATUS=0x{status:02X}")
    dut._log.info("=== DEBUG END ===")

    assert rx == 0x5A, f"Debug RX mismatch: expected 0x5A got 0x{rx:02X}"
    await tqv.write_reg(REG_STATUS, 0x02)


# =============================================================================
# Autonomous sequencer tests
# =============================================================================

@cocotb.test()
async def test_seq_fires_without_cpu(dut):
    """Seq 1: Sequencer fires a transfer automatically — no CPU write needed."""
    tqv = await setup(dut, disable_auto=False)

    dut._log.info("Waiting for autonomous IRQ (no CPU write)...")
    cocotb.start_soon(miso_responder(dut, 0x42))
    await wait_irq(dut, timeout=100000)
    dut._log.info("Autonomous IRQ fired ✓")

    rx = await tqv.read_reg(REG_DATA)
    assert rx == 0x42, f"Expected 0x42 got 0x{rx:02X}"
    dut._log.info(f"Seq RX=0x{rx:02X} ✓")
    await tqv.write_reg(REG_STATUS, 0x02)


@cocotb.test()
async def test_seq_continuous_polling(dut):
    """Seq 2: Sequencer continuously repeats transfers after each IRQ clears."""
    tqv = await setup(dut, disable_auto=False)

    responses = [0x11, 0x22, 0x33]
    for i, expected in enumerate(responses):
        cocotb.start_soon(miso_responder(dut, expected))
        await wait_irq(dut, timeout=100000)

        rx = await tqv.read_reg(REG_DATA)
        assert rx == expected, \
            f"Poll {i+1}: expected 0x{expected:02X} got 0x{rx:02X}"
        dut._log.info(f"Poll {i+1}: RX=0x{rx:02X} ✓")

        await tqv.write_reg(REG_STATUS, 0x02)
        await ClockCycles(dut.clk, FRAME)

    dut._log.info("Continuous polling ✓")


@cocotb.test()
async def test_seq_cpu_overrides_config(dut):
    """Seq 3: CPU can reconfigure clk_div while sequencer is running."""
    tqv = await setup(dut, disable_auto=False)

    # Let one auto transfer finish first
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)

    # Wait for CS to be high and any next transfer to finish before reconfiguring
    await wait_cs_high(dut)
    # Drain the next auto transfer so we start fresh
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)
    await wait_cs_high(dut)
    await ClockCycles(dut.clk, FRAME)

    # NOW write new clk_div — no transfer in flight
    await tqv.write_reg(REG_CLKDIV, 15)
    await ClockCycles(dut.clk, FRAME)

    div = await tqv.read_reg(REG_CLKDIV)
    assert div == 15, f"CLKDIV should be 15, got {div}"
    dut._log.info(f"CPU set CLKDIV={div} ✓")

    # Measure SCLK half-period on the NEXT auto transfer
    # It will use the new clk_div=15
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_cs_low(dut, timeout=200000)
    await wait_sclk(dut, 1)

    count = 0
    while get_sclk(dut) == 1:
        await RisingEdge(dut.clk)
        count += 1
        assert count < 50000, "SCLK never fell"

    dut._log.info(f"SCLK half-period={count} cycles with clk_div=15")
    assert count >= 15, f"Expected >= 15 cycles, got {count}"

    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)
    dut._log.info("CPU config override ✓")


@cocotb.test()
async def test_seq_cpu_triggers_manual_transfer(dut):
    """Seq 4: CPU can trigger an extra transfer by writing REG_DATA directly."""
    tqv = await setup(dut, disable_auto=False)

    # Wait for one auto transfer to finish
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)
    await wait_cs_high(dut)

    # Drain one more auto transfer to reset the poll timer to full
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)
    await wait_cs_high(dut)
    await ClockCycles(dut.clk, FRAME)

    # CPU manually triggers a transfer — read result immediately after IRQ
    # before the sequencer can fire another transfer and overwrite rx_hold
    cocotb.start_soon(miso_responder(dut, 0x7E))
    await tqv.write_reg(REG_DATA, 0x81)
    await wait_irq(dut, timeout=100000)

    # Read immediately — don't wait, sequencer will fire soon
    rx = await tqv.read_reg(REG_DATA)
    assert rx == 0x7E, f"Expected 0x7E got 0x{rx:02X}"
    dut._log.info(f"CPU manual transfer RX=0x{rx:02X} ✓")
    await tqv.write_reg(REG_STATUS, 0x02)


@cocotb.test()
async def test_seq_reset_restarts_sequencer(dut):
    """Seq 5: After reset the sequencer restarts from scratch."""
    tqv = await setup(dut, disable_auto=False)

    # Confirm sequencer is running
    cocotb.start_soon(miso_responder(dut, 0x00))
    await wait_irq(dut, timeout=100000)
    await tqv.write_reg(REG_STATUS, 0x02)
    dut._log.info("Sequencer confirmed running before reset")

    # Reset
    await tqv.reset(disable_auto=False)
    dut._log.info("Reset done — waiting for sequencer to restart...")

    # Sequencer should restart and fire again
    cocotb.start_soon(miso_responder(dut, 0x99))
    await wait_irq(dut, timeout=100000)
    dut._log.info("Sequencer restarted after reset ✓")

    rx = await tqv.read_reg(REG_DATA)
    assert rx == 0x99, f"Expected 0x99 got 0x{rx:02X}"
    dut._log.info(f"Post-reset RX=0x{rx:02X} ✓")
    await tqv.write_reg(REG_STATUS, 0x02)
