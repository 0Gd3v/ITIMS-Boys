from cocotb.triggers import ClockCycles
import tqv_reg
from tqv_reg import spi_write_cpha0, spi_read_cpha0

class TinyQV:
    def __init__(self, dut, peripheral_num):
        self.dut = dut

    async def reset(self, disable_auto=True):
        self.dut._log.info("Resetting Peripheral...")
        self.dut.ena.value    = 1
        self.dut.ui_in.value  = 0
        tqv_reg._s            = (1 << 4)
        self.dut.uio_in.value = tqv_reg._s
        self.dut.rst_n.value  = 0
        await ClockCycles(self.dut.clk, 10)
        self.dut.rst_n.value  = 1
        await ClockCycles(self.dut.clk, 20)

        if disable_auto:
            # Sequencer is now a submodule inside the peripheral — it has no
            # external disable pin. Instead we simply wait long enough for the
            # sequencer to finish its startup config writes, then the manual
            # tests take over via CPU writes which have priority.
            # We don't need to explicitly disable it — CPU writes always win.
            await ClockCycles(self.dut.clk, 50)

        self.dut._log.info("Reset Complete.")

    async def write_reg(self, reg, value):
        await spi_write_cpha0(self.dut.clk, self.dut.uio_in, reg, value, 0)

    async def read_reg(self, reg):
        return await spi_read_cpha0(
            self.dut.clk,
            self.dut.uio_in,
            self.dut.uio_out,
            self.dut.uio_out[3],
            reg, 0, 0
        )
