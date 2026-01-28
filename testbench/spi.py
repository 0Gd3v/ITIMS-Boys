import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge, FallingEdge
from tqv import TinyQV

PERIPHERAL_NUM = 16

async def setup_test(dut):
    """Initializes the 10MHz system clock and performs reset."""
    # Fixed: Changed 'unit' to 'units' for cocotb v1.9.2 compatibility
    clock = Clock(dut.clk, 100, units="ns") 
    cocotb.start_soon(clock.start())
    tqv = TinyQV(dut, PERIPHERAL_NUM)
    await tqv.reset()
    return tqv

@cocotb.test()
async def test_varying_clock_speeds(dut):
    """Case 1: Verify SPI busy bit behavior across different clock dividers."""
    tqv = await setup_test(dut)
    
    for divider in [0, 4, 10]:
        dut._log.info(f"Testing with clk_divider = {divider}")
        await tqv.write_reg(2, divider) # Addr 2: Clock Divider [cite: 3, 10]
        await tqv.write_reg(0, 0xAA)    # Addr 0: Data Register (Starts TX) [cite: 3, 8]

        # Poll Status Register (Addr 1) until Busy bit (bit 0) is 0 [cite: 3, 17]
        while (await tqv.read_reg(1)) & 0x01:
            await ClockCycles(dut.clk, 5)
        
        dut._log.info(f"Transmission finished for divider {divider}")

@cocotb.test()
async def test_back_to_back_transmissions(dut):
    """Case 2: Ensure CS toggles correctly between consecutive writes."""
    tqv = await setup_test(dut)
    test_bytes = [0xA5, 0x5A]

    for data in test_bytes:
        # Wait if busy
        while (await tqv.read_reg(1)) & 0x01:
            await ClockCycles(dut.clk, 5)
        
        await tqv.write_reg(0, data)
        
    await ClockCycles(dut.clk, 100)
    # uo_out[2] is spi_cs_n [cite: 18]
    assert (int(dut.uo_out.value) >> 2) & 0x01 == 1, "CS should be high (idle)"

@cocotb.test()
async def test_reset_during_transmission(dut):
    """Case 3: Verify asynchronous reset clears the busy state and CS."""
    tqv = await setup_test(dut)
    
    await tqv.write_reg(0, 0xFF)
    await ClockCycles(dut.clk, 20)
    
    assert (await tqv.read_reg(1)) & 0x01 == 1, "Peripheral should be busy"

    dut._log.info("Triggering mid-transfer reset...")
    await tqv.reset() # Pulls rst_n low [cite: 6]

    assert (await tqv.read_reg(1)) & 0x01 == 0, "Busy bit failed to clear"
    assert (int(dut.uo_out.value) >> 2) & 0x01 == 1, "CS failed to return high"

@cocotb.test()
async def test_msb_first_verification(dut):
    """Case 4: Verify that 0x80 results in MOSI=1 for the first bit."""
    tqv = await setup_test(dut)
    
    await tqv.write_reg(0, 0x80) # 1000_0000
    
    # Wait for CS to go low [cite: 9]
    while (int(dut.uo_out.value) >> 2) & 0x01:
        await RisingEdge(dut.clk)
    
    # Wait for first SPI clock rising edge [cite: 13]
    while not (int(dut.uo_out.value) & 0x01):
        await RisingEdge(dut.clk)
        
    # Check MOSI (uo_out[1]) [cite: 18]
    mosi = (int(dut.uo_out.value) >> 1) & 0x01
    assert mosi == 1, "MOSI should be 1 for MSB of 0x80"

@cocotb.test()
async def test_divider_timing_precision(dut):
    """Case 5: Measure clock cycles between SPI clock toggles to verify divider."""
    tqv = await setup_test(dut)
    divider_val = 2
    await tqv.write_reg(2, divider_val)
    await tqv.write_reg(0, 0xFF)

    # Wait for CS low
    while (int(dut.uo_out.value) >> 2) & 0x01:
        await RisingEdge(dut.clk)

    # Measure cycles for one half-period of spi_clk
    count = 0
    initial_clk_state = int(dut.uo_out.value) & 0x01
    while (int(dut.uo_out.value) & 0x01) == initial_clk_state:
        await RisingEdge(dut.clk)
        count += 1
    
    # The logic is: if (div_count < clk_divider) count++, else toggle [cite: 11, 13]
    # So a divider of 2 should result in ~3 system clock cycles per toggle.
    dut._log.info(f"Detected clock toggle after {count} system cycles")
    assert count >= divider_val, f"Clock toggled too fast! Got {count} cycles"
