# Design Methodology

## Initial Approach
Our team followed a modular design strategy for the **DP_1tt_um_tqv_peripheral_harness**. We decomposed the architecture into distinct functional blocks to ensure scalability and ease of AI-assisted debugging.

## Implementation Flow
We utilized the **OpenLane automated RTL-to-GDSII flow**. The synthesis was performed using the **sky130_fd_sc_hd** standard cell library with an **AREA 0** optimization strategy to minimize the physical footprint.

## Key Design Decisions
- **Cell Density**: Maintained a low core utilization (approx. 20%) to prevent routing congestion and facilitate easier timing closure.
- **Process Node**: Leveraged the SkyWater 130nm process for its balance between power efficiency and manufacturability.