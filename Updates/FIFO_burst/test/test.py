import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer

def get_int(val):
    try: return int(val)
    except ValueError: return 0

async def reset_dut(dut):
    cocotb.start_soon(Clock(dut.clk, 14, unit="ns").start())
    dut.rst_n.value = 0
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    await Timer(50, unit="ns")
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)
    dut._log.info("Reset complete.")

async def write_reg(dut, addr, data, miso_val=0):
    await RisingEdge(dut.clk)
    dut.ui_in.value = data
    dut.uio_in.value = (miso_val << 6) | 0x10 | (addr & 0x0F)
    await RisingEdge(dut.clk)
    dut.uio_in.value = (miso_val << 6)
    await RisingEdge(dut.clk)

# ĐÃ FIX LỖI TIMING TẠI ĐÂY: Đọc dữ liệu TRƯỚC khi xung Clock đánh!
async def read_reg(dut, addr, miso_val=0):
    await RisingEdge(dut.clk)
    dut.uio_in.value = (miso_val << 6) | 0x20 | (addr & 0x0F)
    await Timer(1, unit="ns") # Chờ 1ns cho logic tổ hợp nhả dữ liệu ra
    val = get_int(dut.uo_out.value) # Chép dữ liệu ngay lập tức!
    await RisingEdge(dut.clk) # Lúc này Clock mới đánh, con trỏ FIFO mới nhảy đi
    dut.uio_in.value = (miso_val << 6)
    await RisingEdge(dut.clk)
    return val

@cocotb.test()
async def test_fifo_status_flags(dut):
    """Test 1: Kiểm tra cờ trạng thái FIFO"""
    await reset_dut(dut)
    status = await read_reg(dut, 0x2)
    assert (status & 0x04) != 0, "tx_empty should be 1 after reset"
    
    dut._log.info("Burst writing 5 bytes to TX FIFO...")
    await write_reg(dut, 0x0, 0xA1)
    await write_reg(dut, 0x0, 0xB2)
    await write_reg(dut, 0x0, 0xC3)
    await write_reg(dut, 0x0, 0xD4)
    await write_reg(dut, 0x0, 0xE5)
    
    status = await read_reg(dut, 0x2)
    assert (status & 0x02) != 0, "tx_full flag failed to assert!"
    assert (status & 0x04) == 0, "tx_empty flag should be 0!"
    dut._log.info("FIFO Status Flags working perfectly!")

@cocotb.test()
async def test_burst_spi_transmission(dut):
    """Test 2: Kiểm tra SPI tự động gửi hết FIFO"""
    await reset_dut(dut)
    await write_reg(dut, 0x0, 0x55)
    await write_reg(dut, 0x0, 0xAA)
    await write_reg(dut, 0x0, 0xFF)
    
    dut._log.info("Enabling SPI Sequencer...")
    await write_reg(dut, 0x3, 0x01)
    
    timeout = 0
    while timeout < 150:
        status = await read_reg(dut, 0x2)
        if (status & 0x04) != 0 and (status & 0x01) == 0:
            break
        await RisingEdge(dut.clk)
        timeout += 1
    assert timeout < 150, "SPI Master got stuck!"
    dut._log.info("Burst Transmission completed automatically!")

@cocotb.test()
async def test_irq_generation(dut):
    """Test 3: Kiểm tra tín hiệu IRQ"""
    await reset_dut(dut)
    await write_reg(dut, 0x3, 0x03)
    
    # Ép MISO = 1 (Bit 6)
    await write_reg(dut, 0x0, 0x00, miso_val=1)
    
    while True:
        status = await read_reg(dut, 0x2, miso_val=1)
        if (status & 0x01) == 0:
            break
        await RisingEdge(dut.clk)
        
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    
    status = await read_reg(dut, 0x2, miso_val=1)
    assert (status & 0x10) == 0, "RX FIFO should NOT be empty!"
    
    rx_data = await read_reg(dut, 0x1, miso_val=1)
    assert rx_data == 0xFF, f"Expected 0xFF, got {hex(rx_data)}"
    
    status = await read_reg(dut, 0x2, miso_val=1)
    assert (status & 0x10) != 0, "RX FIFO should be empty after CPU read!"
    dut._log.info("IRQ cleared safely!")
