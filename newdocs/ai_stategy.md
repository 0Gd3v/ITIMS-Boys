# AI Integration Strategy

## 1. Tool Selection
We employed a multi-model approach to leverage the unique strengths of various LLMs:
- **ChatGPT-4o (Primary)**: Utilized for generating initial RTL skeletons, FSM logic, and comprehensive testbench templates.
- **Claude 3.5 Sonnet (Secondary)**: Acted as our "Lead Code Reviewer" for debugging Verilog logic and optimizing synthesis-friendly constructs.
- **Gemini 1.5 Pro (Research & Documentation)**: Leveraged for technical research, analyzing OpenLane logs, and summarizing hardware specifications.

## 2. Implementation Workflow
Our team adopted a structured AI-driven workflow to transition from high-level specifications to a fully verified hardware peripheral:
- **RTL Generation**: Transformed the SPI Master specification into synthesizable Verilog, specifically focusing on the FSM and register mapping (DATA, STATUS, DIVIDER).
- **Verification Architecture**: Architected a robust cocotb testbench. We explicitly requested multiple test cases to cover clock divider scaling and protocol timing.
- **Integration Support**: Generated the necessary modifications for `Makefile` and `tt_wrapper.v` to ensure the peripheral was correctly indexed at slot 16.

## 3. Prompt Engineering Techniques
- **Role-Based Prompting**: Assigned specific personas such as "Acting as a verification expert" to ensure high-quality testbench generation.
- **Chain-of-Thought Integration**: Provided the AI with the Verilog wrapper and internal SPI implementation files first, asking it to "read and study the contents" before coding.
- **Iterative Refinement**: Instead of asking for the full code at once, we broke requests down into modular prompts:
    1. Initial SPI Master skeleton.
    2. Adding a 7-bit clock divider.
    3. Generating integration steps for the Tiny Tapeout harness.
## 4. Integration & Validation
- **Code Generation**: AI generated approximately **75%** of the raw code.
- **Human Loop**: 100% of the AI code was manually reviewed. We specifically had to intervene in **clock domain crossing (CDC)** logic where AI tended to be less reliable.
- **Log Management**: All interactions were exported and stored in the `ai_logs/` directory to ensure transparency.

## 5. AI Limitations Encountered
- **Hallucination**: AI occasionally suggested using SystemVerilog features that are not supported by the specific synthesis tool version.
- **Pin Assignment**: AI struggled to map physical constraints (XDC) accurately for the specific board, requiring manual entry based on the schematic.