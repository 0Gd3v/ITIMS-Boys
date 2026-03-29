# tqv_reg.py
#
# spi_reg FSM (CPOL=0, CPHA=0 — sample on rising, shift on falling):
#
#   CS low  → STATE_ADDR: shift in 8 bits on rising edges
#   8th rising → STATE_CMD → STATE_TX_LOAD (read) or STATE_RX_DATA (write)
#   STATE_TX_LOAD: loads reg_data_i into txn_buffer (1 cycle, reg_data_i_dv=1)
#   STATE_TX_DATA: drives MISO = txn_buffer[7] COMBINATORIALLY (before rising edge!)
#                  shifts txn_buffer left on each FALLING edge
#                  counts 8 rising edges then → STATE_IDLE
#
# MISO TIMING: spi_miso = txn_buffer[7] is valid BEFORE the rising edge.
# So we must sample MISO BEFORE raising CLK, not after.
#
# Shadow register _s: never read port.value for arithmetic.

from cocotb.triggers import ClockCycles

_CS   = 4
_CLK  = 5
_MOSI = 6

HALF = 8   # sys-clk per SPI half-period

_s = 1 << _CS

def _w(p):           p.value = _s
def _hi(p, b):       global _s; _s |=  (1 << b); _w(p)
def _lo(p, b):       global _s; _s &= ~(1 << b); _w(p)
def _bit(v, i):      return (v >> i) & 1
async def _h(clk):   await ClockCycles(clk, HALF)

async def _idle(clk, port):
    global _s
    _s = (1 << _CS)
    _w(port)
    await _h(clk)

async def _send_byte(clk, port, byte):
    """Send 8 bits MSB-first. CLK starts and ends LOW."""
    for i in range(7, -1, -1):
        if _bit(byte, i): _hi(port, _MOSI)
        else:             _lo(port, _MOSI)
        await _h(clk)          # setup
        _hi(port, _CLK)        # rising — spi_reg samples
        await _h(clk)
        _lo(port, _CLK)        # falling

async def spi_write_cpha0(clk, port, address, data, width):
    await _idle(clk, port)
    _lo(port, _CS)
    await _h(clk)

    addr_byte = (1 << 7) | (_bit(width,1) << 6) | (_bit(width,0) << 5) | (address & 0xF)
    await _send_byte(clk, port, addr_byte)
    await _send_byte(clk, port, data)

    await _h(clk)
    _hi(port, _CS)
    _lo(port, _MOSI)
    await _h(clk)


async def spi_read_cpha0(clk, port_in, port_out, data_ready, address, data, width):
    await _idle(clk, port_in)
    _lo(port_in, _CS)
    await _h(clk)

    # Send addr byte (rw=0 = read)
    addr_byte = (0 << 7) | (_bit(width,1) << 6) | (_bit(width,0) << 5) | (address & 0xF)
    await _send_byte(clk, port_in, addr_byte)

    # After 8th addr rising edge:
    #   spi_reg: STATE_ADDR → STATE_CMD → STATE_TX_LOAD → STATE_TX_DATA
    #   This takes 2 extra clock cycles (STATE_CMD then STATE_TX_LOAD with dv=1).
    # Keep CLK low, wait for spi_reg to load txn_buffer from reg_data_i.
    _lo(port_in, _MOSI)
    await _h(clk)   # STATE_CMD cycle
    await _h(clk)   # STATE_TX_LOAD cycle (reg_data_i_dv=1, loads immediately)
    # Now in STATE_TX_DATA, MISO = txn_buffer[7] is already valid

    # Clock out 8 bits.
    # CRITICAL: sample MISO BEFORE raising CLK — it's driven combinatorially
    # from txn_buffer[7] and shifts LEFT on the FALLING edge.
    result = 0
    for i in range(8):
        # MISO is valid now (before rising edge)
        await _h(clk)
        miso = (int(port_out.value) >> 3) & 1   # sample BEFORE rising
        result = (result << 1) | miso
        _hi(port_in, _CLK)     # rising edge — spi_reg counts this
        await _h(clk)
        _lo(port_in, _CLK)     # falling edge — spi_reg shifts txn_buffer

    await _h(clk)
    _hi(port_in, _CS)
    await _h(clk)

    return result
