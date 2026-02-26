### Design Comparison: Phase 1 vs. Phase 2

| Metric | Phase 1 | Phase 2 | Diff (%) | Optimization Method | Trade-off |
|:---|:---:|:---:|:---:|:---|:---|
| **Performance** | 1.20 ns | 1.05 ns | -12.5% | Retiming / Pipeline insertion | Increased Latency |
| **Power** | 2.55 mW | 2.27 mW | -11.0% | Clock Gating / Multi-Vt cells | Slower non-critical paths |
| **Area** | 4500 um^2 | 4725 um^2 | +5.0% | Upsizing cells for timing | Higher Leakage Power |
| **Utilization** | 75.2% | 78.5% | +3.3% | Congestion-driven placement | Routing complexity |
