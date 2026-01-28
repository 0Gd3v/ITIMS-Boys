# Design Methodology

## 1. Architectural Strategy
Our team adopted a modular design strategy for the **tqvp_spi_master** peripheral (Index 16). We decomposed the architecture into distinct functional blocks to ensure scalability:
- **CPU Interface**: Register-mapped (DATA, STATUS, DIVIDER) for TinyQV bus compatibility.
- **FSM & Control Logic**: Manages 8-bit sequences and automated CS_n timing.
- **7-bit Clock Divider**: Provides programmable SPI clock scaling via Address 2.
- **Shift Register**: Handles MSB-first serial data output.

## 2. Implementation Flow & Physical Metrics
The design was synthesized and routed using the **OpenLane automated flow** on the **SkyWater 130nm** process. The final physical implementation achieved the following results:

| Metric | Value | Source |
|:---|:---|:---|
| **Total Cell Count** | **4,035 Cells** | OpenLane Summary (Full System) |
| **Core Area** | **37,488.4544 µm²** | Floorplan Report |
| **Core Utilization** | **11.6748%** | Placement Summary |
| **Clock Period** | **20.0 ns (50 MHz)** | Timing Constraints |
| **Worst Negative Slack** | **0.000 ns** | STA Sign-off |

## 3. Key Design Decisions
- **Routability Optimization**: We maintained a strategic core utilization of **11.6748%** to prevent routing congestion within the 4,035-cell system.
- **Timing Closure**: We performed post-layout timing verification using the **Standard Delay Format (.sdf)** to ensure the 50MHz target was met with a perfectly optimized **WNS of 0.000 ns**.

## 4. Physical Sign-off
Final verification confirmed 100% manufacturing readiness:
- **DRC (Magic)**: 0 violations.
- **LVS (Netgen)**: 0 mismatches.