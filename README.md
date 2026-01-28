# ITIMS-Boys - Challenge [1] Submission

## Team Information
- **Team Name**: ITIMS-Boys
- **Institution**: ITIMS - Hanoi University of Science and Technology
- **Division**: 
## Team Members

# ITIMS-Boys - AI-HDL Challenge Submission

## Team Members

| Name | Primary Role | Specific Responsibilities |
|:---|:---|:---|
| **Do Tien Dung** | Verification Engineer | Testbench construction and logic verification (L vs D). |
| **Nguyen Ngoc Hai** | Documentation Lead | Technical writing and managing all reports in the `docs/` directory. |
| **Pham Viet Trung Kien** | Results Lead | Executing OpenLane flow, GDSII generation, and Metrics extraction. |
| **Cao Hoang Long** | RTL Designer | Main SRC Module design and hardware architecture development. |
| **Ta Ngoc Minh Quang** | AI & Media Specialist | AI Interaction logging (BTC Format) and Media/Visualization (Block Diagrams). |

## Project Summary
This project implements a **Half-Duplex (Transmit-Only) SPI Master Controller** (Peripheral Index: 16), specifically optimized for high-speed data transmission from the TinyQV CPU to write-only external devices. 

Designed for the **SkyWater 130nm (sky130_fd_sc_hd)** technology node using the OpenLane flow, this peripheral manages 8-bit transactions with an **Automatic Chip Select (CS_n)** mechanism. Key architectural features include a **7-bit programmable clock divider** for flexible SPI frequencies and a hardware-level **BUSY flag** for precise CPU synchronization. The design is ideal for driving DACs, LED drivers, and write-only displays where area efficiency and protocol timing are critical.

## Key Metrics
- **Flow Status**: Completed Successfully
- **Cell Count**: 753 cells
- **Clock Frequency**: 50.0 MHz
- **Core Utilization**: 20%
- **Mentor**: Nguyen Tri Dung

## Challenge Summary
Implementation of a high-performance SPI peripheral using the OpenLane digital design flow. Our design focuses on area efficiency and meeting strict timing constraints for the sky130_fd_sc_hd library.

## Key Results (Extracted from OpenLane Metrics)
- **Status**: Flow Completed Successfully
- **Total Cell Count**: 753 cells
- **Sequential Elements**: 112 DFFs
- **Core Area**: 16,493.32 µm²
- **Clock Frequency**: 50.0 MHz (Period: 20.0 ns)
- **Power Density**: 20% Core Utilization

## Technical Highlights
- Utilized **OpenLane** automated flow with the **AREA 0** strategy for minimal silicon footprint.
- Managed routing challenges to achieve a completed flow within 1 minute and 15 seconds.
