# Challenges Faced and Engineering Solutions

## 1. Timing Closure with CRC-16 Logic
* **The Problem**: A parallel CRC-16 implementation created a logic path with 16 layers of XOR gates, causing a fatal setup time violation and a negative WNS of -3.2 ns.
* **The Solution**: We manually re-architected the logic into an **On-the-fly Serial LFSR Engine**. By computing the checksum bit-by-bit during the shift cycle, we flattened the logic cone, achieving a perfect 0.000 ns WNS at 71.4 MHz.

## 2. OpenLane Physical Congestion
* **The Problem**: The logic explosion in Phase 3 (9,435 cells) led to severe routing congestion and over 50 TritonRoute violations during initial runs.
* **The Solution**: We strategically adjusted the floorplan by lowering the `PL_TARGET_DENSITY` and target core utilization to **29.92%**. This provided the router with sufficient whitespace to untangle dense security nets, resulting in a clean GDSII sign-off.

## 3. FSM Race Conditions in Sleep-Walker Mode
* **The Problem**: In simulation, simultaneous bus requests from the CPU and the autonomous timer led to a "Deadlock" state in the SPI FSM.
* **The Solution**: We implemented a **Mutex-like Priority Gating** mechanism. The FSM now deterministically prioritizes CPU writes while pausing the Sleep-Walker timer, ensuring bus stability under all concurrent access scenarios.