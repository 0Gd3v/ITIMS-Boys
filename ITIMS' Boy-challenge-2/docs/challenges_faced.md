# Challenges Faced and Solutions

## 1. Combinational Logic Bottlenecks & Timing Closure
- **Challenge**: In our initial Phase 1 RTL, dynamically formatting the 32-bit `data_in` based on word length and endianness was handled by massive asynchronous multiplexer trees. During physical synthesis, these deep logic paths caused severe routing congestion and capped our maximum frequency at 50 MHz.
- **Solution**: We executed a major Phase 2 architectural rewrite. We eliminated the combinational blocks entirely and moved data ingestion into the main sequential FSM. By utilizing the external `data_write_n` signals to directly control register loading during the `posedge clk` trigger, we slashed logic depth. This allowed us to push the clock period down to **14.0 ns (71.42 MHz)** while perfectly achieving our 0.000 ns WNS target.

## 2. Core Density and Routing Congestion
- **Challenge**: To make the IP more competitive, we needed to shrink the silicon footprint. However, increasing the placement density for a **4,039-cell** macro risks severe routing violations (shorts) in the TritonRoute phase.
- **Solution**: We carefully tuned the OpenLane physical constraints. We increased the `PL_TARGET_DENSITY` to 0.6 and adjusted the PDN vertical pitch (`FP_PDN_VPITCH: 153.6`). The combination of our refactored, streamlined RTL and these precise physical constraints allowed us to shrink the Core Area to **33,344.48 µm²** with a compact **34.69% utilization**, all while maintaining exactly 0 routing violations.

## 3. Clock Domain Crossing (CDC) Risks
- **Challenge**: External SPI signals (`spi_miso`, `spi_cs_n`) operate asynchronously relative to the internal TinyQV system clock. Passing these directly into the FSM logic created severe risks of metastability, particularly as we pushed the operating frequency beyond 71 MHz.
- **Solution**: We rigorously architected and verified dual-stage D-flip-flop synchronizers within the physical harness module. This ensures all external stimuli are safely stabilized into the local clock domain before being evaluated by the high-speed SPI Master logic.

## 4. Hardware CRC-16 Polynomial Misalignment
- **Challenge**: Implementing the real-time CRC-16 unit directly within the datapath led to checksum mismatches during simulated sensor transactions. The initial AI-generated XOR-tree utilized an incorrect shift direction and a standard polynomial representation instead of the required hardware bit-string.
- **Solution**: We manually intervened to hardcode the exact CCITT `16'h1021` hardware bit-string. Furthermore, we pipeline-aligned the XOR calculation to trigger precisely on the correct CPOL/CPHA sampling edge, ensuring zero-latency data integrity validation.

## 5. Autonomous Polling FSM Deadlocks
- **Challenge**: The integration of the Autonomous Sleep/Wake Engine introduced complex state transitions. Early Verilator simulations revealed edge cases where simultaneous manual CPU overrides and automated wake-up triggers caused the FSM to deadlock.
- **Solution**: We rigorously redefined the FSM priority logic. The transition out of the `IDLE` state now heavily prioritizes the explicit `write_en` command from the CPU. The `auto_en` background polling is only permitted to evaluate its `sleep_timer` when the CPU explicitly leaves the peripheral in a dormant state, eliminating deadlocks.