# Lessons Learned

## 1. Technical Insights: Physical Design & Timing Closure
* **The Density-Routability Balance:** In Phase 1, we believed extreme sparsity was the only way to route a 4,000+ cell macro. In Phase 2, we learned that by refactoring combinational logic into cleaner sequential paths, we could safely compress the core utilization to **34.69%** while still achieving 0 routing violations. 
* **The Reality of Combinational Bottlenecks:** Functional RTL simulation is dangerously optimistic. We learned that massive asynchronous multiplexers create unresolvable timing walls during physical synthesis. Pushing the clock to 71.42MHz required designing for the standard-cell level, not just the behavioral level.

## 2. AI Collaboration Strategy (The "Human-in-the-Loop")
* **AI as a Co-Pilot, Not an Architect:** The AI cannot "see" OpenLane routing congestion or CDC metastability; human engineering intuition remains irreplaceable.
* **Verification Assistant:** AI proved invaluable as a diagnostic tool. Ingesting OpenLane log files and Yosys warnings into the LLM allowed us to rapidly pinpoint the exact source of negative slack.

## 3. Team & Workflow Management
* **Git Discipline is Crucial:** Adopting a strict, modular Git workflow (`git pull --rebase`) and separating the directories saved the team from merge chaos.
* **Role Specialization & Parallelization:** Assigning dedicated roles was key to our rapid Phase 2 turnaround. While **Long** focused on refactoring RTL architecture, **Kien** extracted and analyzed OpenLane physical metrics, **Dung** drove the rigorous `cocotb` functional verification regressions, and **Hai** alongside **Quang** maintained real-time documentation and AI logging parity. This parallelization significantly accelerated our submission timeline.

## 4. Future Improvements
* **Advanced Datapath Decoupling:** To push the frequency boundary beyond 100MHz, we plan to implement an asynchronous dual-clock FIFO buffer to decouple the slow external SPI clock from the internal TinyQV bus clock.
* **Automated CI/CD Pipeline:** We intend to implement GitHub Actions to automatically run `Verilator` linting and `cocotb` regressions on every push.