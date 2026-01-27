# Challenges and Solutions

## 1. Physical Design Violations (Antenna Issues)
**Problem**: The initial routing phase reported **13 pin antenna violations** and **89 net antenna violations**. These issues can cause permanent damage to transistors during manufacturing.
**Solution**: We adjusted the placement strategy and utilized OpenLane’s automated diode insertion to protect the gates from electrostatic discharge.

## 2. Timing and Flow Optimization
**Problem**: Meeting a **50 MHz** clock frequency while maintaining a clean flow.
**Solution**: We analyzed the `metrics.csv` to ensure that no setup or hold violations occurred during the 1m15s total runtime..