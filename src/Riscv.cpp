#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/SemC.hpp"
#include "../h/KernelConsole.hpp"
void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::trap() {
    uint64 cause;
    asm volatile("mv a7, a4");
    cause=Riscv::r_scause();
    switch(cause){
        case ILLEGAL_INSTRUCTION_CODE:
        case ILLEGAL_READ_CODE:
        case ILLEGAL_WRITE_CODE:{
            Riscv::halt();
            break;
        }
        case UMODE_ECALL_CODE:
        case SMODE_ECALL_CODE:{
            Riscv::handleSyscall();
            break;
        }
        case TIMER_CODE:{
            Riscv::handleTimer();
            break;
        }
        case CONSOLE_CODE:{
            Riscv::handleConsole();
            break;
        }
    }
}
void Riscv::handleSyscall() {
    uint64 sepc;
    uint64 sstatus;
    sepc=Riscv::r_sepc();
    sstatus=Riscv::r_sstatus();
    Riscv::disable_external_interrupts();
    uint64 syscall=Riscv::r_a0();
    switch(syscall){
        case 0x00UL:{
            Riscv::w_sstatus(TCB::getRunning()->getSavedSStatus());
            sstatus=Riscv::r_sstatus();
            break;
        }
        case MEM_ALLOC_CODE:{
            MemoryAllocator &m=MemoryAllocator::getAllocatorInstance();
            int arg=(int)Riscv::r_a1();
            void* retval=m.allocate(arg);
            asm volatile("mv a0, %0"::"r"(retval));
            break;
        }
        case MEM_FREE_CODE:{
            MemoryAllocator &m=MemoryAllocator::getAllocatorInstance();
            void* arg=(void*)Riscv::r_a1();
            int retval=m.deallocate(arg);
            asm volatile("mv a0, %0"::"r"(retval));
            break;
        }
        case THREAD_CREATE_CODE:{
            asm volatile("mv a4, a7");
            void* arg=(void*)Riscv::r_a3();
            void(*fptr)(void*)=(void(*)(void*))Riscv::r_a2();
            thread_t* handle=(thread_t*)Riscv::r_a1();
            uint64* sp=(uint64*)Riscv::r_a4();
            thread_t createdThread=new TCB(fptr, arg, sp);
            *handle=createdThread;
            int retval;
            if(createdThread== nullptr){
                retval=-1;
            }
            else{
                retval=0;
            }
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case THREAD_EXIT_CODE:{
            TCB* exiting=TCB::getRunning();
            exiting->setCompleted(true);
            int retval=0;
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case THREAD_DISPATCH_CODE:{
            TCB::dispatch();
            break;
        }
        case SEM_OPEN_CODE:{
            sem_t* handle=(sem_t*)Riscv::r_a1();
            unsigned int val=(unsigned int)Riscv::r_a2();
            sem_t createdSem=new SemC(val);
            *handle=createdSem;
            int retval;
            if(createdSem== nullptr){
                retval=-1;
            }
            else{
                retval=0;
            }
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SEM_CLOSE_CODE:{
            sem_t handle=(sem_t)Riscv::r_a1();
            int retval=-1;
            if(handle){
                handle->closing();
                retval=0;
            }
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SEM_WAIT_CODE:{
            sem_t handle=(sem_t)Riscv::r_a1();;
            int retval=handle->wait();
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SEM_SIGNAL_CODE:{
            sem_t handle=(sem_t)Riscv::r_a1();;
            int retval=handle->signal();
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SEM_TIMEDWAIT_CODE:{
            sem_t handle=(sem_t)Riscv::r_a1();;
            time_t time=(time_t)Riscv::r_a2();
            int retval=handle->timedwait(time);
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SEM_TRYWAIT_CODE:{
            sem_t handle=(sem_t)Riscv::r_a1();;
            int retval=handle->trywait();
            asm volatile("mv a0,%0"::"r"(retval));
            break;
        }
        case SLEEP_CODE:{
            time_t ticks=(time_t)Riscv::r_a1();
            int retval;
            if(ticks>0){
                SleepQueue& sl=SleepQueue::getSleepQueueInstance();
                sl.put(TCB::getRunning(),ticks);
                retval=0;
            }
            else{
                retval=-1;
            }
            asm volatile("mv a0, %0"::"r"(retval));
            break;
        }
        case GETC_CODE:{
            KernelConsole &console=KernelConsole::getConsoleInstance();
            char retval=console.getCharIn();
            asm volatile("mv a0, %0"::"r"(retval));
            break;
        }
        case PUTC_CODE:{
            char c=(char)Riscv::r_a1();
            KernelConsole &console=KernelConsole::getConsoleInstance();

            console.putCharOut(c);
            break;
        }
    }
    Riscv::w_sepc(sepc);
    Riscv::w_sstatus(sstatus);
}

void Riscv::handleTimer() {
    Riscv::mc_sip(Riscv::SIP_SSIP);
    TCB::incTimeSlicePassed();
    uint64 volatile sepc;
    uint64 volatile sstatus;
    Riscv::disable_external_interrupts();
    sepc=Riscv::r_sepc()-4;
    sstatus=Riscv::r_sstatus();
    if(TCB::getTimeSlicePassed()>=TCB::getRunning()->getTimeSlice()){
        TCB::dispatch();
        Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);
    }
    Riscv::w_sepc(sepc);
    Riscv::w_sstatus(sstatus);
    SleepQueue& sl=SleepQueue::getSleepQueueInstance();
    sl.updateTick();
}

void Riscv::handleConsole() {
    uint64 volatile sepc;
    uint64 volatile sstatus;
    sepc=Riscv::r_sepc()-4;
    sstatus=Riscv::r_sstatus();
    if(plic_claim()!=CONSOLE_IRQ){
        Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);
        return;
    }
    KernelConsole& console=KernelConsole::getConsoleInstance();
    while(*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT){
        volatile char c=*((char*)(CONSOLE_TX_DATA));
        if(console.slotsIn()){
            console.putCharIn(c);
        }
    }
    plic_complete(CONSOLE_IRQ);
    Riscv::w_sepc(sepc);
    Riscv::w_sstatus(sstatus);
    Riscv::disable_external_interrupts();
}