#include "../lib/hw.h"
#include "../h/syscall_cpp.hpp"
#include "../h/TCB.hpp"
#include "../h/userMain.hpp"
#include "../h/Riscv.hpp"
#include "../h/KernelConsole.hpp"
#include "../h/KernelThreads.hpp"
static sem_t mainSem;
extern "C" void contextHandler();
void userMainWrapper(void* arg){
    userMain();
    mainSem->signal();
}
void switchFromSModeToUMode(){
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    asm volatile("sret");
}
void main(){
    Riscv::w_stvec((uint64)Riscv::contextHandler);
    thread_t outputKernelThread;
    thread_t inputKernelThread;
    thread_t userMainThread;
    thread_t mainThread;
    thread_create(&mainThread,nullptr,nullptr);
    thread_create(&userMainThread, userMainWrapper,nullptr);
    userMainThread->setMain();
    sem_open(&mainSem,0);
    thread_create(&outputKernelThread,KernelThreads::IOKernelThreadOut,nullptr);
    thread_create(&inputKernelThread,KernelThreads::IOKernelThreadIn,nullptr);
    TCB::setRunning(mainThread);
    Riscv::disable_external_interrupts();
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    asm volatile("addi sp, sp, 16");
    asm volatile("addi fp, fp, 80");
    thread_t idleHandle;
    thread_create(&idleHandle, KernelThreads::idleF,nullptr);
    mainSem->wait();
    KernelConsole::flush();
    Riscv::halt();
}
