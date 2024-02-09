# RISC-V Calculator

## Description
This project is a simple command-line calculator implemented in RISC-V assembly language. It supports basic arithmetic operations such as addition, subtraction, multiplication, and division. The calculator provides a user-friendly interface to select the desired operation and input the operands. This project is designed to demonstrate the use of system calls, arithmetic operations, and control flow in RISC-V assembly.

## Features
- **Arithmetic Operations**: Perform addition, subtraction, multiplication, and division.
- **Interactive Menu**: Easy-to-use interactive menu to select the desired operation.
- **User Input**: Accepts two operands from the user for the calculation.
- **Clear Results**: Displays the calculation result clearly on the console.

## Prerequisites
To run this calculator, you need:
- A RISC-V simulator or emulator (e.g., [Spike](https://github.com/riscv/riscv-isa-sim), [VENUS](https://venus.cs61c.org/))
- Basic understanding of RISC-V assembly language

## Usage
1. Clone the repository to your local machine.
2. Open your RISC-V simulator or emulator.
3. Load the calculator assembly file.
4. Run the program.
5. Follow the on-screen instructions to perform arithmetic calculations.

## System Calls
This calculator utilizes the following system calls for input/output operations:
- `SYS_exit` for exiting the program
- `SYS_printInt` for printing integers
- `SYS_readInt` for reading integers
- `SYS_printChar` for printing characters
- `SYS_readChar` for reading characters
- `SYS_printStr` for printing strings
- `SYS_readStr` for reading strings

## Example
```assembly
# Select an option:
Welcome To Calculator Select an option :
1 - Addition
2 - Subtraction
3 - Division
4 - Multiplication
5 - Exit
