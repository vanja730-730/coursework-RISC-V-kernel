#include "../h/KernelThreads.hpp"
void KernelThreads::IOKernelThreadIn(void *a) {
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    while(true){
        Riscv::enable_external_interrupts();
        thread_dispatch();
    }
}

void KernelThreads::IOKernelThreadOut(void *a) {
    while(true){
        KernelConsole& console=KernelConsole::getConsoleInstance();
        int i=0;
        while((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
            char c=console.getCharOut();
            if(c==13){
                c='\n';
            }
            *((char*)(CONSOLE_RX_DATA))=c;
            i++;
            if(i==32){
                time_sleep(1);
                i=0;
            }
        }
    }
}

void KernelThreads::idleF(void *a) {
    while(true){
        thread_dispatch();
    }
}