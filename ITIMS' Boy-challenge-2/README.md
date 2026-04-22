# ITIMS-Boys - Challenge 2 Submission

## Team Information
- **Team Name**: ITIMS-Boys
- **Institution**: Hanoi University of Science and Technology (HUST)
- **Division**: Lower division
- **Team Members**: 
  - Do Tien Dung - Verification Engineer - Dung.DT2419499@sis.hust.edu.vn
  - Nguyen Ngoc Hai - Documentation Lead - hainn2419514@sis.hust.edu.vn
  - Pham Viet Trung Kien - Results Lead - kien.pvt2419567@sis.hust.edu.vn
  - Cao Hoang Long - RTL Designer - long.ch2419579@sis.hust.edu.vn
  - Ta Ngoc Minh Quang - AI & Media Specialist - quang.tnm2419611@sis.hust.edu.vn
- **Mentor**: Nguyen Tri Dung & Sudipta Paria

## Challenge Summary
Our team successfully architected, exhaustively verified, and physically implemented a highly optimized, feature-rich Full-Duplex SPI Master macro designed for high-speed, two-way data transmission within the `tt_um_tqv_peripheral_harness` of the TinyQV RISC-V core. 

For Phase 2, we aggressively evolved the design from a standard peripheral into an independent, high-speed hardware co-processor (Index: 16). By systematically replacing deep combinational multiplexer trees with streamlined sequential logic and zero-check down-counters, we maintained an advanced feature set—including autonomous sensor polling and hardware CRC validation—while significantly shrinking the silicon footprint and pushing the operational clock frequency beyond 71 MHz.

## Key Features & Microarchitecture Highlights
Our design goes far beyond a baseline SPI controller, integrating advanced SoC-level features:
- **Full-Duplex Sequential Shift Logic:** Engineered for maximum external sensor compatibility, supporting concurrent transmission (MOSI) and reception (MISO). It natively supports dynamic word lengths (scaling up to 32 bits), run-time selectable LSB-first/MSB-first endianness, and all four standard SPI modes (CPOL 0/1 and CPHA 0/1).
- **Autonomous "Wake-and-Poll" Engine:** Features a programmable 16-bit hardware sleep timer and an automated execution FSM. It independently wakes up, polls external SPI sensors, evaluates incoming payloads against configurable High/Low thresholds, and asserts hardware interrupts only when critical out-of-bounds data is detected, drastically reducing TinyQV CPU overhead.
- **Zero-Latency Hardware CRC-16 Datapath:** Integrates a purely combinational CRC-16 calculation unit explicitly locked to the CCITT 16'h1021 hardware bit-string. The unit calculates data checksums on-the-fly as MISO bits are sampled, completely bypassing software-algorithmic latencies.
- **Optimized Clock Scaling & Advanced Control:** Utilizes a highly optimized 6-bit programmable down-counter to dynamically scale SPI frequencies. The control interface includes automated active-low Chip Select (`CS_n`), a manual CS override for multi-byte bursts, and a hardware Transfer-Complete IRQ flag.
- **Industrial CDC Hardening:** We explicitly addressed metastability risks by manually instantiating robust 2-stage D-flip-flop synchronizers on all asynchronous external inputs (`spi_miso`, `spi_cs_n`) to ensure absolute signal integrity.

## AI Tools Used
- **Primary AI Tools**: ChatGPT-4, Gemini 3.1 Pro, Claude 3.5 Sonnet.
- **AI Strategy**: Gemini 3.1 Pro and ChatGPT-4 were utilized for generating initial RTL FSM skeletons, establishing memory-mapped registers, and structuring the `cocotb` testbenches. Claude 3.5 Sonnet acted as our optimization lead, assisting in the refactoring of deep combinational logic into synthesis-friendly sequential constructs to maximize Power, Performance, and Area (PPA).
- **Total AI interactions**: ~120 highly targeted prompt sessions.

## Results Summary
Implementation of this high-performance peripheral was executed using the OpenLane ASIC digital design flow, targeting the `sky130_fd_sc_hd` standard cell library.
- **Functionality**: Pass. Exhaustively verified using the `cocotb` framework for timing scaling, back-to-back full-duplex collisions, CPOL/CPHA protocol accuracy, and autonomous FSM edge cases.
- **FPGA/ASIC Implementation**: Flow Completed Successfully.
- **Resource Usage**: 4,039 Cells Total. 
- **Core Area & Density**: Compacted into a minimal footprint of 33,344.48 µm² with a Core Utilization of 34.6904%, providing a clean routing environment within the Tiny Tapeout wrapper.
- **Timing Sign-off**: Achieved an aggressive **71.42 MHz Target Clock Frequency** (14.0 ns Period) with a flawlessly optimized Worst Negative Slack (WNS) of 0.000 ns.

## Innovation Highlights
The integration of an autonomous threshold-checking engine alongside a dedicated hardware CRC-16 unit represents our core microarchitectural innovation, empowering the peripheral to validate external sensors without requiring continuous CPU intervention. 

From a physical design perspective, our greatest innovation was the strategic RTL refactoring for PPA optimization. We deliberately replaced standard variable comparators with zero-check down-counters and flattened the combinatorial logic cone for the `BUSY` flag. This deep architectural restructuring is what allowed us to shatter the initial 50 MHz barrier, pushing the physical boundaries of the SkyWater 130nm node to 71.42 MHz without a single TritonRoute violation.

## Team Reflection
This challenge catalyzed a profound paradigm shift in how our team approaches ASIC design. We learned a critical lesson in physical synthesis: functional RTL simulation is dangerously optimistic. Relying heavily on AI-generated asynchronous `always @(*)` blocks creates massive routing congestion and destroys timing slack when mapped to actual physical standard cells. By applying human engineering intuition to refactor the design into tight, synchronous sequential blocks—and strictly validating timing using the Standard Delay Format (.sdf)—we successfully bridged the gap between behavioral theory and physical silicon reality.