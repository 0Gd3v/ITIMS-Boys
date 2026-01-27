# AI Conversation Log - [Date/Session]

## Conversation 1: Initial Design
**Timestamp**: 2026-01-25 10:30:00

**Tool**: Gemini

**Purpose**: Generate basic module structure

**Prompt**:make changes to some of these file according to the readme files for a simple spi module

**Response**:Based on the instructions in the provided README.md and README1.md, here are the necessary modifications to your files to correctly integrate and test your tqvp_matt_pwm module.
1. Update Makefile

You need to ensure the PROJECT_SOURCES variable includes your specific Verilog files so the simulator knows what to compile.
```MakeFile
# Change in Makefile
PROJECT_SOURCES = peripheral.v 
ADDITIONAL_SOURCES = tt_wrapper.v
# Ensure the path to the SPI helper logic is included if not in the same folder
```
2. Update tt_wrapper.v

The template requires you to instantiate your specific module within the harness. You have already correctly updated the module name to tqvp_matt_pwm. Ensure the port mapping matches your peripheral.v definition.
```verilog
// Inside tt_wrapper.v
  tqvp_matt_pwm user_peripheral(
    .clk(clk),
    .rst_n(rst_reg_n),
    .ui_in(ui_in_sync),
    .uo_out(uo_out),
    .address(address),
    .data_write(data_valid),
    .data_in(data_in),
    .data_out(data_out)
  );
```
3. Update test.py

To test via the SPI harness, your PERIPHERAL_NUM should generally be set to 16 (which corresponds to the base index for simple byte peripherals in this template).
```Python
# Inside test.py
PERIPHERAL_NUM = 16 

@cocotb.test()
async def test_pwm_peripheral(dut):
    # ... clock setup ...
    tqv = TinyQV(dut, PERIPHERAL_NUM)
    await tqv.reset()

    # The TinyQV class handles the SPI protocol described in the README:
    # Bit 7: Read/Write, Bits 3-0: Address
    await tqv.write_reg(0, 64)  # Sets pwm_level_0 to 64
    await tqv.write_reg(1, 192) # Sets pwm_level_1 to 192
    await tqv.write_reg(2, 10)  # Sets strobe_period to 10
```
4. Documentation and Indexing

According to the submission checklist in the README.md, you should rename your documentation to reflect its assigned slot:
•	File Rename: Move docs/info.md to docs/user_peripherals/16_pwm_controller.md (assuming index 16).
•	Module Name: You have already correctly changed the module from tqvp_example to tqvp_matt_pwm.


