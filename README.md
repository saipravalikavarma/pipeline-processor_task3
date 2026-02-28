# pipeline-processor_task3
# 🚀 Internship Task-3: 4-Stage Pipelined Processor Design

## 👩‍💻 Developed By
**Appani Saipravalika**  
Electronics and Communication Engineering  
Vaagdevi Engineering College  

🔗 GitHub Repository:  
https://github.com/saipravalikavarma/pipeline-processor_task3  

---

# 📌 Project Overview

This project implements a **4-Stage Pipelined Processor** using Verilog HDL as part of the CODTECH Internship Program.

The processor is designed to execute basic instructions such as:

- ADD  
- SUB  
- LOAD  

The objective of this project is to understand how pipelining improves processor performance by allowing multiple instructions to execute simultaneously across different stages.

---

# 🧠 Pipeline Architecture

The processor consists of four main stages:

1️⃣ Instruction Fetch (IF)  
2️⃣ Instruction Decode (ID)  
3️⃣ Execute (EX)  
4️⃣ Write Back (WB)  

Each stage works in parallel using pipeline registers to improve throughput.

---

# ⚙️ Tools Used

- Xilinx Vivado
- Verilog HDL
- Behavioral Simulation
- GitHub for version control

---

# 📂 Project Structure

```
pipeline-processor_task3/
│
├── src/
│   ├── pipeline_cpu.v
│   └── pipeline_cpu_tb.v
│
├── images/
│   └── waveform.png
│
└── README.md
```

---

# 🧪 Simulation

The design was simulated using **Vivado Behavioral Simulation**.

The waveform verifies:

- Instruction flow through all 4 stages  
- Correct ALU operation  
- Proper register update in Write Back stage  
- Sequential pipeline execution  

---

# 🖼 Simulation Waveform Output

Place your waveform screenshot inside:

```
pipeline-processor_task3/images/waveform.png
```

Then it will display automatically below:

![Simulation Output](https://github.com/saipravalikavarma/pipeline-processor_task3/upload/main/src)

If needed, you can also use this format:

```
![Simulation Output](https://raw.githubusercontent.com/saipravalikavarma/pipeline-processor_task3/main/images/waveform.png)
```

---

# ▶️ How to Run the Project

1. Open Xilinx Vivado  
2. Create a new RTL Project  
3. Add design file to Design Sources  
4. Add testbench file to Simulation Sources  
5. Run Behavioral Simulation  
6. Observe the waveform output  

---

# 🎯 Learning Outcomes

- Understanding pipelining concept  
- Multi-stage processor architecture  
- Instruction execution flow  
- Verilog HDL modeling  
- Simulation and debugging in Vivado  

---

# ✅ Result

The 4-stage pipelined processor was successfully designed and simulated.

The simulation waveform confirms proper execution of instructions across all pipeline stages.

---

# 📌 Conclusion

This project demonstrates a basic pipelined processor architecture and validates its operation using Verilog HDL and simulation tools. It provides a strong foundation for understanding advanced processor design concepts.

---

⭐ Internship Completion Certificate will be issued at the end of the internship.
