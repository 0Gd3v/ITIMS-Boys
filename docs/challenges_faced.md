# Challenges Faced and Solutions

During the development of the Half-Duplex SPI Master peripheral, our team encountered several technical and operational hurdles. Below are the key challenges and how we resolved them.

## 1. FSM Timing and CS_n De-assertion Logic
- **Challenge**: Initial simulations showed that the `BUSY` flag was clearing too early, causing the Chip Select (`CS_n`) signal to return to High before the 8th bit was fully sampled by the slave. 
- **Solution**: We refined the Finite State Machine (FSM) by adding a dedicated "WAIT" state. This ensures the `BUSY` flag remains active until the final falling edge of the Serial Clock (SCK), guaranteeing protocol compliance.

## 2. Clock Divider Stability
- **Challenge**: We observed potential glitches in `SCLK` generation if the `DIVIDER` register was updated mid-transmission, leading to Master-Slave desynchronization.
- **Solution**: We implemented a logic gate that locks the `DIVIDER` register while the `BUSY` flag is High. Users must now wait for the IDLE state before reconfiguring transmission speeds.

## 3. Scaling to Full System Integration (4,035 Cells)
- **Challenge**: Integrating our SPI module into a full system of **4,035 cells** introduced significant routing complexity compared to standalone testing.
- **Solution**: By maintaining a strategic core utilization of **11.6748%**, we provided enough routing resources to integrate the SPI logic at **Index 16** without congestion.

## 4. Verification of 50MHz Timing (WNS = 0)
- **Challenge**: Functional simulations do not account for physical delays, making it difficult to guarantee the **20ns clock period** target.
- **Solution**: We utilized the **Standard Delay Format (.sdf)** for back-annotation in our testbench. This verified that the design achieved a **Worst Negative Slack (WNS) of 0.000 ns**, confirming stable 50MHz operation despite parasitic effects.

## 5. Version Control & Collaborative Conflicts
- **Challenge**: The team faced `[rejected] non-fast-forward` errors while synchronizing code and documentation.
- **Solution**: We adopted a strict workflow: using `git add .`, committing locally, and applying `git pull --rebase` to resolve upstream changes before the final push.