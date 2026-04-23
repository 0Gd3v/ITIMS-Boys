# AI-HDL Challenge 2 Submission Form

## Basic Information
- **Submission Date**: 2026-04-19
- **Challenge Number**: 2
- **Team Name**: ITIMS-Boys
- **Team ID**: [Assigned during registration]

## Team Members
| Name | Role | Email | Contribution % |
|------|------|-------|----------------|
| Do Tien Dung | Verification Engineer | Dung.DT2419499@sis.hust.edu.vn | 20% |
| Nguyen Ngoc Hai | Documentation Lead | hainn2419514@sis.hust.edu.vn | 20% |
| Pham Viet Trung Kien | Results Lead | kien.pvt2419567@sis.hust.edu.vn | 20% |
| Cao Hoang Long | RTL Designer | long.ch2419579@sis.hust.edu.vn | 20% |
| Ta Ngoc Minh Quang | AI & Media Specialist | quang.tnm2419611@sis.hust.edu.vn | 20% |

## Design Specifications Met
- [x] All required functionality implemented
- [x] FPGA/ASIC implementation successful
- [x] Timing requirements met (Pushed to 71.42 MHz / 14.0 ns Period)
- [x] Resource constraints satisfied (4,039 Cells compacted into 33,344.48 µm²)
- [x] All test cases pass

## AI Tool Usage Declaration
- **Primary AI Tools**: ChatGPT-4, Gemini 3.1 Pro, Claude 3.5 Sonnet
- **Total Conversation Sessions**: 15 main architectural sessions
- **Estimated AI-Generated Code %**: 40%
- **Manual Modifications Made**: Yes. We manually stripped out AI-generated deep combinational logic blocks to engineer a leaner sequential loading mechanism. We explicitly locked the CRC calculation to the hardware specification (16'h1021) and manually maintained CDC 2-stage synchronizers. Furthermore, we manually tuned the OpenLane physical density targets (`PL_TARGET_DENSITY: 0.6`) to achieve physical closure.

## Special Considerations
- **Bonus Features Implemented**: Full-Duplex Datapath, Autonomous Sleep/Wake Engine, Hardware Threshold Interrupts, On-the-fly CRC-16 Validation.
- **Known Issues**: None. The Phase 1 CVC heuristic warning has been fully resolved. OpenLane reports 0 DRC, 0 LVS mismatches, and 0 Routing violations.
- **Future Improvements**: Implement an asynchronous dual-clock FIFO buffer for the RX/TX datapath to completely decouple the SPI serial clock from the internal TinyQV bus clock.

## Verification Checklist
- [x] All source files compile without errors
- [x] Testbenches run successfully
- [x] FPGA/ASIC implementation verified via OpenLane
- [x] AI interaction logs are complete
- [x] Documentation is thorough and clear

## Team Statement
We certify that this submission represents our original work, completed according to AI-HDL rules and academic integrity guidelines. All AI interactions have been logged and submitted.

**Team Representative**: Cao Hoang Long
**Date**: 2026-04-19