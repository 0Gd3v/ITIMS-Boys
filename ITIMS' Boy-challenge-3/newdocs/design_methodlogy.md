# Design Methodology: Secure & Autonomous System Architecture

## Initial Approach
Our architectural philosophy was centered on a **Zero-Trust Hardware Model**. Initially, we recognized that a standard SPI peripheral is essentially "blind" and "dumb"—it only acts when the CPU tells it to. Our primary mission was to evolve this into a **Security-First Autonomous Hub**. We adopted a tiered architecture:
1. **The Management Tier**: Standard registers for legacy SPI operations.
2. **The Secure Tier**: A hardware-locked zone for sensitive autonomous configurations (Thresholds, Timers).
3. **The Integrity Tier**: An on-the-fly CRC engine ensuring data validity before it ever reaches the CPU.

## AI Integration Strategy
We implemented a **"Model-Specific Specialization"** strategy to maximize efficiency:
* **Gemini (Structural Lead)**: Prompted with specific Verilog-2001 constraints to generate concurrent FSM states for the Sleep-Walker.
* **Claude 3.5 Sonnet (Synthesis Specialist)**: We fed raw OpenLane `.log` files and Timing Violation reports into Claude to identify critical logic cones. We used it specifically for **Gate-Level Restructuring** to resolve setup time violations in the CRC engine.
* **Prompting Methodology**: We utilized **"Few-Shot Prompting"** by providing the AI with examples of Sky130 standard cell limitations before requesting design modifications, ensuring the generated RTL was "synthesis-ready."

## Design Evolution
The transition from Phase 2 to Phase 3 was a significant architectural leap:
- **Unified 32-bit Pipelining**: We replaced the 8-bit TX/RX buffers with a unified 32-bit shift register. This evolution was necessary to support the 16-bit CRC and 32-bit autonomous command sequences without creating multiple clock-domain crossing (CDC) issues.
- **Interrupt Vector Decoupling**: We evolved the single-bit `IRQ` into a dual-source interrupt system. This required a fundamental redesign of the Status Register logic to allow the CPU to distinguish between a "Transfer Complete" and a "Security/Threshold Breach."
- **Clock Tree Optimization**: As logic density increased, we refactored the clock divider to ensure the SCLK remained phase-aligned with the internal system clock even during high-speed 71.4 MHz operations.

## Key Decisions & PPA Trade-offs
* **Area vs. Security (The "Security Tax")**: We made a conscious engineering decision to accept a 140% area increase (totaling ~80k µm²). By implementing 32-bit hardware comparators for thresholds, we drastically reduced the DREAD risk score. This area expansion is justified as it eliminates thousands of CPU polling cycles, leading to a net **SoC Energy Reduction**.
* **Serial LFSR over Parallel XOR**: Parallel CRC logic is faster but creates a "combinational explosion." Our decision to use a **Serial LFSR (Linear Feedback Shift Register)** was the key to hitting our 14.0 ns clock target. This trade-off prioritized **Timing Closure** over single-cycle throughput, which is essential for stable ASIC manufacturing.

## Verification Strategy
Our verification went beyond functional pass/fail tests, adopting a **"Stress & Hardening"** methodology:
- **Asynchronous Attacker Coroutines**: Using `cocotb`, we simulated a "Race-to-Unlock" attack, where a malicious thread attempts to write the lock key while the hardware is busy.
- **SDF Back-Annotation**: We performed Post-Layout simulations using **Standard Delay Format (.sdf)** files to verify that physical wire delays did not create "Glitch Windows" in our security gating logic.
- **Corner Case Analysis**: Verified the reset behavior during active SPI frames to ensure the `access_violation` sticky bit is never inadvertently cleared.