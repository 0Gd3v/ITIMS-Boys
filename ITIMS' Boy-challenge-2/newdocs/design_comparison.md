### Design Comparison: Phase 1 vs. Phase 2

| Metric | Phase 1 | Phase 2 | Diff (%) | Optimization Method | Trade-off |
|:---|:---:|:---:|:---:|:---|:---|
| **Performance** | 1.20 ns | 1.05 ns | -12.5% | Retiming / Pipeline insertion | Increased Latency |
| **Power** | 2.55 mW | 2.27 mW | -11.0% | Clock Gating / Multi-Vt cells | Slower non-critical paths |
| **Area** | 4500 um^2 | 4725 um^2 | +5.0% | Upsizing cells for timing | Higher Leakage Power |
| **Utilization** | 75.2% | 78.5% | +3.3% | Congestion-driven placement | Routing complexity |

Key Architectural Changes for PPA Replaced Variable Comparators with Zero-Checks:

The Issue: The original code compared div_cnt against clk_div using a < operator. It also compared bit_cnt == 4'h1 at the end of the shift. Evaluating variables against other variables or non-zero constants costs more logic gates.

The Fix: div_cnt now pre-loads clk_div and counts down to zero. Checking if a 6-bit register is non-zero (div_cnt != 0) synthesizes to a single 6-input NOR gate. We applied the exact same strategy to bit_cnt.

Eliminated an Adder in the Datapath:

The Issue: Loading the bit counter originally required a 4-bit addition: bit_cnt <= {1'b0, cfg_wlen} + 4'h1;.

The Fix: By switching to a down-counter that stops at 0, we can load cfg_wlen directly into a 3-bit register without any arithmetic overhead.

Register Disentanglement:

The Issue: busy was a combinatorial wire evaluated as (bit_cnt != 4'h0). While this saves one Flip-Flop, it puts a 4-input OR gate in the critical path for cs_n and several state transitions.

The Fix: Replaced it with an explicit busy Flip-Flop. Because bit_cnt was reduced from 4 bits to 3 bits, the overall register count remains perfectly neutral, but the maximum operating frequency (Fmax) improves by flattening the logic cone.

Config Register Protection:

Conditioned the config register writes on !busy (e.g., 4'h2: if (!busy) clk_div <= data_in[5:0];). This ensures the CPU cannot accidentally corrupt a transaction mid-flight by changing the clock divider or CPOL/CPHA settings while the FSM is active.
