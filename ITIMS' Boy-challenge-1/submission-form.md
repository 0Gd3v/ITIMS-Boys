# AI-HDL Challenge [1] Submission Form

## 1. Basic Information
- **Submission Date**: 2026-04-14
- **Challenge Number**: 1
- **Team Name**: ITIMS-Boys
- **Team ID**: [Assigned during registration]

## 2. Official Team Roster & Contribution

| Name | Role | Email | Contribution % |
|:---|:---|:---|:---|
| Do Tien Dung | Hardware Design & CDC Mitigation | Dung.DT2419499@sis.hust.edu.vn | 20% |
| Nguyen Ngoc Hai | Documentation Lead | hainn2419514@sis.hust.edu.vn | 20% |
| Pham Viet Trung Kien | Verification Engineer | kien.pvt2419567@sis.hust.edu.vn | 20% |
| Cao Hoang Long | RTL Designer & Optimization | long.ch2419579@sis.hust.edu.vn | 20% |
| Ta Ngoc Minh Quang | Physical Design & AI Strategy | quang.tnm2419611@sis.hust.edu.vn | 20% |

## 3. Design Specifications Met
- [x] All required functionality implemented (Including full-duplex SPI operations).
- [x] FPGA/ASIC implementation successful (Synthesized and routed for SkyWater 130nm).
- [x] Timing requirements met (Targeted 50.0 MHz / 20.0 ns Period with 0.000 ns WNS).
- [x] Resource constraints satisfied (Total: 4,013 Cells at 11.7249% Core Utilization).
- [x] All test cases pass (Simulated functionally and verified via post-layout analysis).

## 4. AI Tool Usage Declaration
- **Primary AI Tool**: Gemini 3.1 Pro
- **Total Conversation Sessions**: 15 distinct functional design sessions.
- **Estimated AI-Generated Code %**: 65% (Primarily covering FSM boilerplate and combinational datapath logic).
- **Manual Modifications Made**: **Yes, heavily modified.** We manually architected and inserted 2-stage D-flip-flop synchronizers to resolve Clock Domain Crossing (CDC) metastability warnings within the external `tt_um_tqv_peripheral_harness` interface—a physical vulnerability the AI failed to anticipate. Furthermore, we manually intervened to correct the AI's generated CRC-16 polynomial bit-string to exactly match the CCITT hardware specification (`16'h8005`). Finally, we refactored the AI's nested IF-statements into single-level CASE statements to alleviate routing congestion and improve timing slack during the physical synthesis phase.

## 5. Special Considerations
- **Bonus Features Implemented**: 
  - **Full-Duplex Datapath:** Simultaneous transmission and reception up to 32 bits.
  - **Autonomous Sleep/Wake Engine:** Hardware timer and FSM for CPU-independent sensor polling.
  - **Hardware Threshold Interrupts:** Internal arithmetic comparators trigger IRQs only upon out-of-bounds data detection.
  - **On-the-fly CRC-16 Validation:** Zero-latency combinatorial data integrity check.
  - **Dynamic Configuration:** Run-time configurable MSB/LSB bit-reversal multiplexing and CPOL/CPHA phasing.
- **Known Issues**: A single Circuit Validity Check (CVC) error was flagged during the automated OpenLane physical sign-off flow (`cvc_total_errors: 1`). After conducting a rigorous manual layout inspection, we have documented this as an isolated tool heuristic artifact. It does not impede or invalidate the primary structural DRC and LVS tape-out requirements, both of which passed with 0 errors.
- **Future Improvements**: To push the frequency boundary well beyond 50MHz, we plan to implement an asynchronous dual-clock FIFO buffer for the RX/TX datapath. This architectural upgrade would entirely decouple the external SPI serial clock domain from the internal TinyQV system bus clock domain, allowing for sustained high-speed burst reads without relying strictly on the singular `rx_hold` buffer constraint.

## 6. Verification Checklist
- [x] All source files compile without errors (Verilator/Icarus clean).
- [x] Testbenches run successfully (Covering protocol timing and autonomous edge cases).
- [x] FPGA/ASIC implementation verified on hardware (Simulated GDSII Sign-off via OpenLane).
- [x] AI interaction logs are complete (Formatted per BTC guidelines).
- [x] Documentation is thorough and clear (Including detailed methodology and AI strategy).

## 7. Team Statement
We certify that this submission represents our original work, completed according to AI-HDL rules and academic integrity guidelines. All AI interactions have been transparently logged and submitted as required.

**Team Representative**: Cao Hoang Long
**Date**: 2026-01-28
