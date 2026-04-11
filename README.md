# coursework-RISC-V-kernel
A feature-complete, preemptive microkernel developed for the RISC-V (RV64) architecture. This project implements the core components of an operating system, including a multi-layered system call API, thread scheduling, and interrupt-driven I/O.

**Core Features**

* Memory Management: Implements a robust kernel-level memory allocator for dynamic partitioning and hardware-level page management.

* Multithreading & Scheduling: * Supports both preemptive and cooperative multitasking.

* Context switching implemented in assembly for low-latency transitions between kernel and user modes.

* Thread synchronization using Counting Semaphores.

* Interrupt Handling: * Hardware timer interrupts for time-slicing and sleep functionality.

* Console I/O via UART interrupts, allowing for non-blocking keyboard input and display output.

* System Call API: A clean, three-tier interface:

   * C++ API: High-level object-oriented interface for user applications.

   * C API: Standard procedural wrapper.

   * C ABI: Low-level assembly interface using the ecall instruction for secure U-mode to S-mode transitions.

**Architecture**

The system is designed to run on the QEMU virt machine emulator. The kernel operates in Supervisor-mode (S-mode), providing protected services to User-mode (U-mode) applications.

* Trap Handler: Centralized handling for hardware interrupts, software exceptions, and system calls.

* Synchronization: Semaphore-based blocking to prevent busy-waiting and ensure thread safety.

**Build & Execution**

The project utilizes a Makefile for cross-compilation and emulation.

**Requirements**

* RISC-V 64-bit GNU Toolchain (riscv64-unknown-elf-gcc)

* QEMU (with qemu-system-riscv64 support)

**Run Commands**

* To compile and launch the OS in the QEMU emulator: make qemu

* To launch with the GDB server enabled for kernel debugging: make qemu-gdb
  
**Implementation Details**

* Full semaphore implementation.

* Interrupt-driven console (UART).

* Complete C++ wrapper for kernel services.

* Periodic thread support and sleep mechanisms.
