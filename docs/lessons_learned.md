# Lessons Learned

## 1. Technical Insights
- **Physical Design Matters**: We learned that "correct code" is not enough. The physical layout (Floorplanning, Placement) significantly impacts timing and antenna violations, as seen in our OpenLane iterations.
- **Toolchain Mastery**: Navigating the open-source EDA ecosystem (OpenLane, Yosys, Magic) taught us the importance of scripting and automation over GUI-based workflows.

## 2. AI Collaboration
- **Prompt Engineering**: The quality of the output is directly proportional to the specificity of the input. We learned to treat AI as a junior engineer: it needs clear specifications and constant supervision.
- **Trust but Verify**: AI is great for boilerplate code but unreliable for critical timing paths. We learned to never trust AI-generated constraints files blindly.

## 3. Team Management
- **Directory Structure**: Maintaining a strict, standard directory structure (as enforced by the challenge rules) saved us hours of integration time.
- **Role Specialization**: Assigning a dedicated Documentation Lead ensured that technical members could focus on the design while keeping the submission package professional and complete.

## 4. Future Improvements
- For the next challenge, we plan to implement a Continuous Integration (CI) pipeline using GitHub Actions to automatically run testbenches whenever code is pushed.