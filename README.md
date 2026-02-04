# Vending Machine Controller — Verilog HDL
A hardware-based vending machine controller implemented using **Verilog HDL** and simulated using **Xilinx tools**.  
The system models real-world vending machine behavior using a **Finite State Machine (FSM)** architecture.

## 📌 Project Overview
This project demonstrates the design and simulation of a digital vending machine controller capable of:

- Product selection
- Coin and online payment handling
- Automatic change calculation
- Transaction cancellation
- Product dispensing logic

The controller is implemented as an FSM and verified through simulation using a custom testbench.

This project highlights how real-world control systems can be translated into digital hardware logic.
## ⚙️ Features
- FSM-based control architecture
- 5 selectable products with parameterized pricing
- Coin-based and online payment support
- Automatic change return
- Cancel transaction functionality
- Testbench-driven simulation and verification
## 🧠 FSM Design
The controller uses a structured Finite State Machine with the following states:
- IDLE_STATE
- SELECT_PRODUCT_STATE
- Product selection states
- DISPENSE_AND_RETURN_STATE
The FSM ensures correct state transitions for every transaction scenario.
## 🛠 Tools Used
- Verilog HDL
- Xilinx Vivado (simulation)
- Testbench-based behavioral verification
## 📂 Project Structure
vending-machine-verilog/
│
├── src/
│ └── vending_machine.v
│
├── tb/
│ └── vending_machine_tb.v
│
├── simulation/
│ └── waveform.png
│
├── docs/
│ └── report.pdf
│
└── README.md

## ▶️ How to Run Simulation
1. Open the project in Xilinx Vivado
2. Add source and testbench files
3. Run behavioral simulation
4. Observe waveform outputs
5. Verify product dispensing and change logic

## 📊 Simulation Results
Simulation confirms correct operation for:

- Product selection
- Coin payment validation
- Online payment flow
- Change return
- Cancel handling

Waveforms demonstrate accurate FSM transitions and output behavior.

## 💡 Learning Outcomes
Through this project, I gained deeper understanding of:

- FSM design in hardware
- Digital control systems
- Verilog modeling techniques
- Simulation-driven verification
- Translating real systems into hardware logic

## 🚀 Future Improvements

- FPGA hardware implementation
- LCD or display interface
- Additional payment methods
- More product categories
- User interface expansion
