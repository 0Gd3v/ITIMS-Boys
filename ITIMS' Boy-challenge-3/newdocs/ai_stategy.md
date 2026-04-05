# AI Strategy and Usage Methodology

## Tool Selection & Ecosystem
To bridge the gap between abstract requirements and physical GDSII, we utilized a multi-LLM pipeline:
1. **Gemini 1.5 Pro**: Primary architect for Verilog and Python `cocotb`. We found its long context window essential for maintaining the consistency of the 32-bit Unified Shift Register logic across multiple design iterations.
2. **Claude 3.5 Sonnet**: Used as a **Physical Design Consultant**. Claude’s superior reasoning in logic-gate minimization allowed us to refactor the CRC engine when the initial design failed Timing Closure.
3. **ChatGPT-4o**: Specialized in **Threat Modeling and Compliance**. We used its analytical capabilities to map our RTL vulnerabilities to specific **Common Weakness Enumerations (CWEs)**.

## Prompting Techniques
We refined our prompting into a specialized "ASIC Design Kit" (ADK) approach:
* **Constraint-First Prompting**: We never asked "Write an SPI Master." Instead, we prompted: *"Given a 14.0 ns clock constraint on Sky130 PDK, design a serial CRC-16 engine that processes 1-bit per clock to minimize combinational depth."*
* **Iterative Debugging via Log-Injection**: When OpenLane reported TritonRoute congestion, we injected the specific routing density maps into the AI to brainstorm floorplan adjustments (e.g., modifying `PL_TARGET_DENSITY`).
* **Persona-Driven Code Review**: We tasked the AI to act as a "Malicious Firmware Developer" to find backdoors in our Hardware Lock logic, which led to the implementation of the "Sticky" `access_violation` bit.

## Iteration Process
Our workflow was a **Human-Driven, AI-Accelerated Cycle**:
1. **Drafting**: AI generated structural boilerplate.
2. **Physical Check**: We ran the code through Yosys/OpenLane immediately.
3. **Log Analysis**: Error logs (Synthesis/Timing) were fed back to AI.
4. **Human Refactoring**: Crucial timing paths and security-critical gating (like the `32'hCAFEBABE` key check) were manually hand-coded to ensure zero-cycle glitches and perfect timing.

## AI Limitations Encountered
* **Sequential Bias**: AI models frequently failed to understand the **simultaneity of Verilog**. It often suggested logic that worked in simulation but created "Race Conditions" in hardware. We had to manually convert several AI-generated blocking assignments (`=`) into non-blocking (`<=`) to ensure correct flip-flop inference.
* **ASIC vs. FPGA Hallucination**: AI models often suggested "Xilinx IP Cores" or "Clock Buffers" that do not exist in the OpenLane/Sky130 flow. We had to strictly enforce a "PDK-Neutral RTL" policy to overcome this.
* **Routing Ignorance**: LLMs cannot "see" congestion. It suggested area-heavy 32-bit parallel comparators that caused routing failure, forcing our human leads to pivot to a more serial, area-efficient architecture.

## Learning from AI
AI accelerated our transition from "Students" to "ASIC Designers." By analyzing the AI’s suggestions for `cocotb` coroutines, our verification team learned advanced **Asynchronous Testing** techniques. However, the most profound insight was learning **"Synthesis-Aware Coding"**—the AI showed us that how you write Verilog directly affects the number of standard cells (9,435 cells) and the final routability of the silicon.