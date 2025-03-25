## 4-bit RISC CPU - Verilog Implementation

### Overview  
This project implements a **4-bit RISC CPU** using Verilog, featuring a simple instruction set, a 2-register architecture, and an ALU supporting basic arithmetic and logic operations.
It showcases my knowledge of CPU Architecture and Digital Design Synthesis.


### Features  
- **4-bit Instruction Set Architecture (ISA)**  
- **2 General Purpose Registers (R0, R1)**  
- **Basic ALU (ADD, SUB, AND, OR)**    
- **Clock-Driven Execution**  

### 1. Instruction Set Architecture (ISA)  

| Opcode  | Mnemonic | Operation |
|---------|----------|------------|
| `0000`  | ADD R1, R2 | R1 = R1 + R2 |
| `0001`  | SUB R1, R2 | R1 = R1 - R2 |
| `0010`  | AND R1, R2 | R1 = R1 & R2 |
| `0011`  | OR  R1, R2 | R1 = R1 \| R2 |
| `0100`  | LOAD R1, Imm | R1 = Immediate |
| `0110`  | JUMP Addr | Jump to address |
| `0111`  | HALT | Stop execution |

### 2. Verilog Code Overview 

#### 2.1 CPU Module (`RISC_CPU.v`)  
- **Program Counter (PC)**: Tracks instruction execution.  
- **Register File**: Two 4-bit general-purpose registers (`R0`, `R1`).  
- **Instruction Memory**: Stores the program.  
- **ALU (Arithmetic Logic Unit)**: Handles basic operations (ADD, SUB, AND, OR).  
- **Control Logic**: Decodes opcodes and executes instructions.  

#### 2.2 Testbench (`RISC_CPU_tb.v`)  
- Generates a **clock signal**.  
- Applies a **reset condition** to initialize the CPU.  
- Runs a small program to **verify execution**.  
- Uses `$monitor` to **track register and PC values** in simulation.

### 3. Guide to local development

- Clone the repository local using **git clone github.com/vineetbambah/risc4bit**
- Run the files using Vivado or some other Verilog Simulator
