#ifndef PROJECT_BASE_V1_1_2_KERNELTHREADS_HPP
#define PROJECT_BASE_V1_1_2_KERNELTHREADS_HPP
#include "Riscv.hpp"
#include "syscall_c.hpp"
#include "KernelConsole.hpp"
class KernelThreads{
public:
    static void idleF(void*);
    static void IOKernelThreadOut(void*);
    static void IOKernelThreadIn(void*);
};
#endif //PROJECT_BASE_V1_1_2_KERNELTHREADS_HPP
