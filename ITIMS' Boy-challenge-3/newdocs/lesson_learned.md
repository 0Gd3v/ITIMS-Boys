# Lessons Learned

## 1. Security is a Physical Constraint
We learned that hardware security is fundamentally about area and timing trade-offs. The 140% "Security Tax" on area proved that protecting an SoC at the gate level requires a complete reimagining of the floorplan and routing strategy compared to standard functional IPs.

## 2. The Importance of SDF Back-Annotation
Functional RTL simulation is not enough for high-speed protocols. Performing **Standard Delay Format (.sdf)** verification in `cocotb` was a turning point, as it revealed that physical wire delays could impact our security lockout timing—a detail that was invisible in baseline RTL simulation.

## 3. Version Control and Team Synergy
With five engineers working on a dense 9,435-cell design, we learned that strict **Git discipline** (rebase over merge) is non-negotiable. Synchronizing the Register Map early allowed our RTL and Verification teams to work in parallel, significantly accelerating our submission timeline.