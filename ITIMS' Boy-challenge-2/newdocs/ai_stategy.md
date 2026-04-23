# AI Strategy and Usage

## Tool Selection
To navigate the immense complexities of ASIC design, Clock Domain Crossing (CDC) mitigation, and physical synthesis targeting the SkyWater 130nm process node, our team (ITIMS-Boys) employed a strategic, multi-model LLM approach. We recognized that no single AI tool excels at every phase of hardware design, so we selected specific models based on their architectural strengths:

* **Gemini 3.1 Pro (The System Architect):** Selected for its massive context window and strong analytical reasoning. We used Gemini to ingest dense Tiny Tapeout documentation, generate the initial structural skeletons (module wrappers, port definitions), and draft the complex state transitions for the Autonomous Polling FSM. It was also our primary tool for parsing thousands of lines of OpenLane physical synthesis logs.
* **Claude 3.5 Sonnet (The RTL Optimizer):** Selected for its exceptional coding precision and refactoring capabilities. Claude acted as our "Lead Code Reviewer" during the critical transition from Phase 1 to Phase 2. We tasked Claude specifically with optimizing Power, Performance, and Area (PPA) by refactoring our deep combinational multiplexer trees into high-speed sequential logic, enabling our 71.42 MHz frequency breakthrough.
* **ChatGPT-4 (The Verification Assistant):** Selected for its robust understanding of Python libraries. We utilized GPT-4 heavily to resolve `cocotb` testbench API deprecations, generate randomized multi-corner test vectors, and set up the Standard Delay Format (.sdf) back-annotation pipeline.

## Prompting Techniques
To strictly control the AI's output, prevent logic hallucination, and enforce hardware constraints, we utilized advanced prompting frameworks:

* **Interface-First & Contract-Driven Prompting:** Before any internal logic was generated, we provided the AI with the exact TinyQV harness pinouts (`ui_in`, `uo_out`) and system clock domains. We explicitly prompted: *"These I/O ports are immutable hardware contracts. Do not alter, rename, or resize them under any circumstances."*
* **Role-Based Engineering Personas:** We framed prompts with high-level engineering contexts to force optimized outputs. Example: *"Act as a Senior Physical Design Engineer optimizing RTL for the sky130_fd_sc_hd standard cell library. Focus on minimizing logic depth to achieve a 14.0ns clock period."*
* **Chain-of-Thought (State Machine Enclosure):** For the Autonomous "Wake-and-Poll" engine, we absolutely forbade the AI from writing Verilog immediately. We prompted: *"First, generate a Markdown Truth Table and a textual State Transition Diagram. Justify the conditions for moving from IDLE to SHIFT. Only write Verilog after the logic is proven."*
* **Modular "Divide and Conquer":** Rather than requesting a monolithic SPI master, we prompted the AI to build isolated sub-modules: first the 6-bit clock prescaler, then the 32-bit TX/RX shift registers, and finally the combinational CRC-16 XOR-tree, merging them manually later.

## Iteration Process
The AI was treated as a highly capable "junior engineer" generating roughly 40% of the raw codebase. Our refinement process relied heavily on a "Human-in-the-Loop" iterative feedback cycle:

* **Linter-Driven Refinement:** AI-generated RTL was immediately passed through `Verilator`. If syntax errors, inferred latches, or width-mismatches occurred, we pasted the exact error logs back into the prompt, forcing the AI to debug its own structural mistakes.
* **Synthesis Feedback Loop (Phase 1 to Phase 2):** In Phase 1, the AI generated functionally correct but physically slow asynchronous `always @(*)` blocks. During Phase 2, we extracted the Static Timing Analysis (STA) reports showing negative slack on these paths. We fed these reports back to Claude 3.5 Sonnet, specifically instructing it to *"flatten these specific logic cones by moving data ingestion into the synchronous `posedge clk` domain based on `data_write_n` transaction widths."*
* **Testbench Coverage Expansion:** Initial AI testbenches only checked "happy paths." We iteratively prompted the AI to generate corner-case scenarios, such as simultaneous CPU overrides during an autonomous polling cycle, to ensure FSM robustness.

## AI Limitations Encountered
Despite accelerating our design timeline, the LLMs exhibited severe physical hardware blindness, requiring critical human intervention:

* **Clock Domain Crossing (CDC) Ignorance:** The AI natively assumes all signals exist in a perfect, synchronous simulation environment. It completely failed to recognize the severe metastability hazards posed by external, asynchronous signals (`spi_miso`, `spi_cs_n`) entering the TinyQV clock domain. **Resolution:** The team had to manually architect and insert 2-stage D-flip-flop synchronizers into the external harness to prevent the FSM from crashing.
* **Hardware Mathematics Hallucination (CRC-16):** When tasked with generating the hardware data integrity unit, the AI repeatedly generated software-style CRC loops with incorrect shift directions and generic polynomials. **Resolution:** We manually intervened, discarded the AI's algorithm, and hardcoded the exact zero-latency XOR-tree corresponding to the CCITT `16'h1021` hardware bit-string, pipeline-aligning it to the correct CPOL/CPHA sampling edge.
* **Physical Constraint Confusion:** The AI struggled to differentiate between ASIC and FPGA targets. It frequently suggested Xilinx `.xdc` constraints to fix timing issues. **Resolution:** We bypassed the AI for physical floorplanning, manually tuning the OpenLane `config.tcl` parameters (setting `PL_TARGET_DENSITY` to 0.6) to successfully compress our 4,039 cells into a 33,344 µm² footprint without routing violations.

## Learning from AI
Collaborating with these models served as an incredible educational accelerator, fundamentally shifting our understanding of hardware design:

* **RTL vs. Physical Reality:** By having the AI explain the OpenLane synthesis logs to us, we learned the harsh reality of ASIC design: code that simulates perfectly in software can be a disaster in silicon. We learned how high-level behavioral `if-else` statements physically map to deep, slow multiplexer trees, teaching us the supreme importance of designing for the standard-cell level.
* **Advanced Parameterization:** Reading the initial AI-generated code introduced the team to highly scalable Verilog-2005 coding styles, showing us how to properly parameterize data widths and configuration registers rather than hardcoding values.
* **The Value of Sequential Design:** The iteration process taught us that slightly increasing standard cell count (adding explicit D-Flip-Flops to break up combinational logic) is actually a worthwhile trade-off. It flattens the critical path and dramatically increases the maximum operating frequency ($F_{max}$), as evidenced by our successful leap from 50 MHz to 71.42 MHz.