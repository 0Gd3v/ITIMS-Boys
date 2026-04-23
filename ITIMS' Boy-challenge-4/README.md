# 🛡️ ITIMS-Boys: Secure & Autonomous SPI Master for IoT Edge
## AI-HDL Challenge 2026 [Phase 4 Submission]

## Team Information
- **Team Name**: ITIMS-Boys
- **Institution**: Hanoi University of Science and Technology (HUST) - ITIMS
- **Division**: Lower division
- **Team Members**: 
  - **Do Tien Dung** - Verification Engineer - Dung.DT2419499@sis.hust.edu.vn
  - **Nguyen Ngoc Hai** - Documentation Lead - hai.nn2419514@sis.hust.edu.vn
  - **Pham Viet Trung Kien** - Results Lead - kien.pvt2419567@sis.hust.edu.vn
  - **Cao Hoang Long** - RTL Designer - long.ch2419579@sis.hust.edu.vn
  - **Ta Ngoc Minh Quang** - AI & Media Specialist - quang.tnm2419611@sis.hust.edu.vn
- **Mentor**: Sudipta Paria

## Challenge Summary
For Phase 4 (Synthesis Security Improvement), we transitioned our high-performance SPI Master (Index: 16) into a **Hardened Autonomous Peripheral**. Designed for secure Edge Computing, this IP offloads continuous sensor polling from the TinyQV CPU while mathematically guaranteeing data integrity via hardware-level CRC and neutralizing privilege escalation threats through a 32-bit Tamper-Evident Lockout mechanism.

Following Phase 3 submission, we conducted a comprehensive **PPA optimization pass** targeting area reduction without sacrificing performance or security guarantees. The final optimized implementation achieves a **53% core area reduction** and **75% logic cell reduction** versus our initial hardened baseline, while maintaining identical timing closure and full functional verification.

## Key Features
- **🛡️ Hardware Tamper-Evident Lock**: A gated 32-bit lock (`32'hCAFEBABE`) isolates the Secure Configuration Zone. Unauthorized access instantly triggers a permanent hardware trap, preventing malicious firmware from altering threshold parameters.
- **🤖 Autonomous Sleep-Walker FSM**: Implements an independent hardware-polling loop with 16-bit interval timers. This allows the main CPU to remain in a deep sleep state (saving SoC power) until the peripheral detects a data anomaly via threshold comparison.
- **⚡ Serial LFSR CRC-16-CCITT**: Integrated data integrity verification (Polynomial: $x^{16} + x^{12} + x^5 + 1$) executed on-the-fly. By avoiding deep combinational XOR trees, we achieved high-frequency timing closure at 71.4 MHz.
- **📡 Unified 32-bit Secure Datapath**: Supports multi-byte burst transfers with deterministic LSB/MSB-first bit reversal, optimized for modern high-resolution sensor interfaces.

## AI Tools Used
- **Primary LLM**: Gemini 1.5 Pro (Architecture blueprinting, FSM state mapping, and cocotb coroutine generation).
- **Additional tools**: Claude 3.5 Sonnet (Gate-level optimization & PPA analysis), ChatGPT-4o (STRIDE/DREAD threat modeling).
- **Total AI interactions**: ~150 recorded sessions across all design phases.

## Results Summary

### ✅ Optimized Final Implementation (Post-PPA Optimization)

| Metric | Value |
|---|---|
| **Flow Status** | ✅ Flow Completed |
| **Logic Cells** | 2,392 |
| **Total Cells (incl. physical)** | 5,400 |
| **Core Area** | 37,488.45 µm² |
| **Die Area** | 0.04 mm² |
| **Utilization** | 57.23% |
| **Clock Frequency** | **71.43 MHz** (14.0 ns period) |
| **Critical Path** | 10.26 ns |
| **WNS** | **0.000 ns** |
| **TNS** | **0.000 ns** |
| **DRC Violations** | 0 |
| **LVS Errors** | 0 |
| **Antenna Violations** | 0 |
| **Routing Violations** | 0 |
| **Typical Power (Internal)** | 1.57 µW |
| **Typical Power (Switching)** | 0.72 µW |

### 📊 PPA Improvement vs. Phase 3 Baseline

| Metric | Phase 3 Baseline | Optimized | Improvement |
|---|---|---|---|
| Logic Cells | 9,435 | 2,392 | **↓ 74.6%** |
| Core Area | 80,146.97 µm² | 37,488.45 µm² | **↓ 53.2%** |
| Utilization | 29.92% | 57.23% | **↑ more efficient packing** |
| Frequency | 71.4 MHz | 71.43 MHz | Maintained |
| WNS | 0.000 ns | 0.000 ns | Maintained |

### Routing Layer Utilization

| Layer | Usage |
|---|---|
| Metal 1 | 0% |
| Metal 2 | 39.44% |
| Metal 3 | 39.25% |
| Metal 4 | 7.29% |
| Metal 5 | 8.76% |

## Innovation Highlights
Our **"Security-as-a-Service"** hardware layer uniquely addresses the latency-security trade-off. By embedding a Serial LFSR instead of a parallel XOR tree, we removed the timing bottlenecks that usually plague security logic. This ensures that every bit sampled from the MISO line is verified before it even touches the internal system bus.

The PPA optimization phase applied aggressive synthesis strategies (`AREA 3`) combined with placement density tuning, eliminating over 7,000 redundant cells identified during post-synthesis analysis. Critically, all security primitives — the tamper lock, CRC engine, and threshold comparator — were preserved intact through formal equivalence verification.

## Team Reflection
This project reshaped our understanding of the "Area-Security-Tax." We learned that robust hardware security requires a calculated investment in silicon real estate. While our area increased by ~140% compared to the pre-security baseline, the resulting mitigation of Critical DREAD risks (9.2/10) provides a significantly more resilient SoC architecture for real-world deployments.

The subsequent PPA optimization phase taught us an equally important lesson: **security and efficiency are not mutually exclusive**. Through disciplined RTL refinement and OpenLane tuning, we recovered more than half the area overhead introduced by the security layer — without compromising a single security guarantee.