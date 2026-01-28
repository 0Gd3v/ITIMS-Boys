# AI Integration Strategy

## 1. Tool Selection
We employed a multi-model approach to leverage the strengths of different LLMs:
- **ChatGPT-4o (Primary)**: Used for generating initial RTL skeletons, FSM logic, and testbench templates due to its strong context retention.
- **Claude 3.5 Sonnet (Secondary)**: Used for "Code Review" and debugging. Claude proved superior in analyzing Verilog logic errors and suggesting synthesis-friendly constructs.

## 2. Prompting Techniques
Our team developed a **"Constraint-First"** prompting strategy:
- **Context Setting**: We explicitly defined the hardware target (Artix-7/SkyWater 130nm) and constraints (Area vs. Speed) at the start of every session.
- **Iterative Refinement**: Instead of asking for the full code at once, we broke requests down:
  1. *Prompt 1*: "Generate the block diagram and I/O list for an SPI Slave."
  2. *Prompt 2*: "Write the Verilog code for the FSM part only, ensuring 50MHz operation."
  3. *Prompt 3*: "Write a self-checking testbench for this FSM."

## 3. Integration & Validation
- **Code Generation**: AI generated approximately **60%** of the raw code.
- **Human Loop**: 100% of the AI code was manually reviewed. We specifically had to intervene in **clock domain crossing (CDC)** logic where AI tended to be less reliable.
- **Log Management**: All interactions were exported and stored in the `ai_logs/` directory to ensure transparency.

## 4. AI Limitations Encountered
- **Hallucination**: AI occasionally suggested using SystemVerilog features that are not supported by the specific synthesis tool version.
- **Pin Assignment**: AI struggled to map physical constraints (XDC) accurately for the specific board, requiring manual entry based on the schematic.