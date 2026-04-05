# 🛡️ ITIMS-Boys - AI-HDL Challenge [Phase 3] Submission

## Team Information
- **Team Name**: ITIMS-Boys
- **Institution**: Hanoi University of Science and Technology (HUST) - ITIMS
- **Division**: Lower division
- **Team Members**: 
  - **Do Tien Dung** - Verification Engineer - Dung.DT2419499@sis.hust.edu.vn
  - **Nguyen Ngoc Hai** - Documentation Lead - hai.nn2419514@sis.hust.edu.vn
  - **Pham Viet Trung Kien** - Results Lead - kien.pvt2419567@sis.hust.edu.vn
  - **Cao Hoang Long** - RTL Designer - long.ch2419579@sis.hust.edu.vn
  - **Ta Ngoc Minh Quang** - AI Specialist - quang.tnm2419611@sis.hust.edu.vn
- **Mentor**: Nguyen Tri Dung & Sudipta Paria

## Challenge Summary
In Phase 3 (Security Evaluation), we evolved our high-performance SPI Master (Index: 16) into a **Hardened Autonomous Peripheral**. Our mission was to architect a hardware-enforced security layer that protects against privilege escalation and guarantees data integrity. The core of our solution features a 32-bit Tamper-Evident Lock, a real-time CRC-16-CCITT engine, and an autonomous "Sleep-Walker" polling FSM that optimizes SoC power by offloading CPU tasks.

## Key Features
- **Tamper-Evident Hardware Lock**: A gated 32-bit lock (`32'hCAFEBABE`) isolates the secure configuration zone. Any unauthorized write attempt instantly asserts a sticky `access_violation` latch.
- **Autonomous Sleep-Walker FSM**: Enables independent sensor polling with programmable intervals and threshold monitoring, allowing the TinyQV CPU to remain in deep sleep until an anomaly is detected.
- **On-the-fly Serial LFSR CRC**: Implements high-speed data integrity verification (Polynomial: $x^{16} + x^{12} + x^5 + 1$) without the combinational timing bottlenecks of parallel logic.
- **Unified 32-bit Secure Datapath**: Supports multi-byte burst transfers with hardware-level LSB/MSB-first bit reversal.

## AI Tools Used
- **Primary LLM**: Gemini (RTL Blueprinting & cocotb verification structures).
- **Additional tools**: Claude 3.5 Sonnet (PPA Optimization & Refactoring), ChatGPT-4o (Threat Modeling & Documentation).
- **Total AI interactions**: ~150 recorded sessions.

## Results Summary
- **Functionality**: **PASS**. 100% success rate in legacy SPI regressions and DP3 Attacker Simulation.
- **ASIC Implementation**: **SUCCESS**. Clean GDSII generated via OpenLane (Sky130 PDK).
- **Resource Usage**: 9,435 Cells, 80,146.97 µm² Core Area, 29.92% Utilization.
- **Timing**: **71.4 MHz Achieved** (14.0 ns period) with a pristine **0.000 ns WNS**.

## Innovation Highlights
Our design achieves **Zero-Latency Data Integrity** by embedding a Serial LFSR directly into the sampling path. Unlike standard parallel designs, this allows our security layer to scale to high frequencies (71.4 MHz) while maintaining a strict hardware lockout that neutralizes brute-force attacks at the silicon gate level.

## Team Reflection
This project taught us that "Security is a Physical Constraint." Moving from Phase 2 to Phase 3 showed us the significant area-performance trade-offs required for hardware robustness. We learned that while AI can draft code, the engineering soul—specifically the intuition to avoid deep combinational paths in security logic—remains a human-driven discipline.