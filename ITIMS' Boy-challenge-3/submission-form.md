# AI-HDL Challenge [Phase 3] Submission Form

## Basic Information
- **Submission Date**: 2026-03-25
- **Challenge Number**: 3
- **Team Name**: ITIMS-Boys
- **Team ID**: [Điền Team ID của nhóm bạn vào đây]

## Team Members
| Name | Role | Email | Contribution % |
|------|------|-------|----------------|
| Do Tien Dung | Verification | Dung.DT2419499@sis.hust.edu.vn | 20% |
| Nguyen Ngoc Hai | Documentation | hai.nn2419514@sis.hust.edu.vn | 20% |
| Pham Viet Trung Kien | Results Lead | kien.pvt2419567@sis.hust.edu.vn | 20% |
| Cao Hoang Long | RTL Designer | long.ch2419579@sis.hust.edu.vn | 20% |
| Ta Ngoc Minh Quang | AI Specialist | quang.tnm2419611@sis.hust.edu.vn | 20% |

## Design Specifications Met
- [x] All required functionality implemented
- [x] ASIC/OpenLane implementation successful
- [x] Timing requirements met (WNS 0.000 ns at 71.4 MHz)
- [x] Resource constraints satisfied (Clean DRC/LVS/Antenna)
- [x] All test cases pass

## AI Tool Usage Declaration
- **Primary AI Tool**: Gemini (Version 1.5 Pro)
- **Total Conversation Sessions**: ~45 formal sessions.
- **Estimated AI-Generated Code %**: 30% - 35%
- **Manual Modifications Made**: Yes. We manually re-architected the AI's parallel CRC suggestion into a Serial LFSR to meet timing and restructured all FSM assignments to non-blocking (`<=`) to eliminate race conditions found in simulation.

## Special Considerations
- **Bonus Features Implemented**: Autonomous Sleep-Walker FSM for intelligent sensor polling and significant SoC power reduction.
- **Known Issues**: The area tax (+140%) is significant but justified for the achieved DREAD risk reduction (from 9.2/10 to safe baseline).
- **Future Improvements**: Integration of hardware-level AES-128 encryption for the datapath.

## Verification Checklist
- [x] All source files compile without errors
- [x] Testbenches run successfully
- [x] ASIC/OpenLane implementation verified (GDSII)
- [x] AI interaction logs are complete (in `ai_logs/`)
- [x] Documentation is thorough and clear

## Team Statement
We certify that this submission represents our original work, completed according to AI-HDL rules and academic integrity guidelines. All AI interactions have been logged and submitted.

**Team Representative**: Nguyen Ngoc Hai
**Date**: 2026-03-25