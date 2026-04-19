🔌 SPI Slave with Single Port RAM
A Verilog implementation of an SPI (Serial Peripheral Interface) slave module interfaced with a single-port synchronous RAM, designed for FPGA deployment with comprehensive verification and timing optimization.

📋 Project Overview
This project implements a complete SPI slave communication system that interfaces with a single-port RAM module. The design allows external masters to read from and write to memory through the standardized SPI protocol, making it suitable for embedded systems and FPGA-based applications.

🏗️ Architecture
🧩 System Components
SPI Slave Interface

4-wire SPI communication (MOSI, MISO, SCK, SS_n)
FSM-based implementation with multiple encoding options
Serial-to-parallel and parallel-to-serial data conversion
Single Port RAM

Parameterizable memory depth (default: 256 words)
8-bit data width with 10-bit command interface
Synchronous operation with active-low reset
Separate read/write address handling
📡 SPI Interface Signals
Signal	Direction	Description
MOSI	Input	Master Out, Slave In - Data from master
MISO	Output	Master In, Slave Out - Data to master
SCK	Input	Serial Clock from master
SS_n	Input	Slave Select (active low)
clk	Input	System clock
rst_n	Input	Active low synchronous reset
💾 RAM Interface Signals
Signal	Direction	Width	Description
din	Input	10	Data input with command bits
rx_valid	Input	1	Data valid signal
dout	Output	8	Data output
tx_valid	Output	1	Output data valid
📟 Command Protocol
The system uses a 10-bit command structure where din[9:8] determines the operation:

din[9:8]	Command	Description
00	Write Address	Store din[7:0] as write address
01	Write Data	Write din[7:0] to previously stored write address
10	Read Address	Store din[7:0] as read address
11	Read Data	Read from previously stored read address, output on dout
🤖 State Machine
The SPI slave operates using a finite state machine with the following states:

IDLE: Default state, waiting for SS_n assertion
CHK_CMD: Command detection based on first received bit
WRITE: Handle write operations (address/data)
READ_ADD: Handle read address setup
READ_DATA: Handle read data transmission
✨ Features
Multiple FSM Encodings: Gray, One-hot, and Sequential encoding options
Timing Optimization: Encoding selection based on timing analysis
FPGA Ready: Complete constraint files and bitstream generation
Debug Support: Integrated debug cores for signal analysis
Comprehensive Testing: Full testbench with state transition verification
🚀 Usage
🔬 Simulation
In QuestaSim:
vsim -do run.do
🛠️ FPGA Implementation
Synthesis: The design supports multiple FSM encodings
Implementation: Choose encoding based on timing reports
Constraints: Map signals to FPGA pins using provided constraints
Bitstream: Generate and deploy to target FPGA
📍 Pin Mapping
rst_n: Connected to switch
SS_n: Connected to switch
MOSI: Connected to switch
MISO: Connected to LED
💡 Operation Examples
✍️ Write Operation
Send write address (din[9:8] = 00, din[7:0] = address)
Send write data (din[9:8] = 01, din[7:0] = data)
Data is stored at specified address
📖 Read Operation
Send read address (din[9:8] = 10, din[7:0] = address)
Send read command (din[9:8] = 11)
Data appears on MISO during read command when tx_valid is high
⚙️ Parameters
💾 RAM Parameters
MEM_DEPTH: Memory depth (default: 256)
ADDR_SIZE: Address width (default: 8)
🛠️ Requirements
🔧 Tools
QuestaSim/ModelSim for simulation
Vivado for FPGA implementation
QuestaLint for code analysis
📚 Documentation
Complete project documentation includes:

Simulation waveforms
Synthesis reports
Implementation reports
Timing analysis
Resource utilization
Critical path analysis
