#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
TCB* TCB::running=nullptr;
int TCB::sid=0;
time_t TCB::timeSlicePassed=0;
KernelResourceManager<TCB> TCB::threadAllocator;
TCB::TCB(void (*fptr)(void *), void *a,uint64* sp):threadBody(fptr),arg(a),userStack(sp),savedUSP((uint64)sp+DEFAULT_STACK_SIZE-1){
    resourceId=sid;
    void (*wrapperPtr)()=&TCB::threadWrapper;
    if(wrapperPtr){
        savedJmp=reinterpret_cast<uint64>(wrapperPtr);
    }
    else{
        savedJmp=0;
    }
    savedSStatus=Riscv::r_sstatus();
    Scheduler &s=Scheduler::getSchedulerInstance();
    s.put(this);
}
void *TCB::operator new(size_t) {
    return threadAllocator.allocResource(sid);
}

void TCB::setMain() {
    savedSStatus=0;
    isMain=true;
}
void TCB::operator delete(void *ptr)  {
    TCB* t=(TCB*)ptr;
    MemoryAllocator m=MemoryAllocator::getAllocatorInstance();
    m.deallocate(t->userStack);
    threadAllocator.deallocResource(t->resourceId);
}

void TCB::setCompleted(bool b) {
    completed=b;
}

bool TCB::isCompleted() const {
    return completed;
}
TCB *TCB::getRunning() {
    return running;
}

void TCB::setRunning(TCB *t) {
    running=t;
}

uint64 TCB::getSavedSStatus() const {
    return savedSStatus;
}
void TCB::threadWrapper() {
    uint64 x=0x0;
    asm volatile("mv a0, %0"::"r"(x));
    asm volatile("ecall");
    (*(running->threadBody))(running->arg);
    thread_exit();
    thread_dispatch();
}

time_t TCB::getTimeSlice() const {
    return timeSlice;
}
void TCB::incTimeSlicePassed() {
    timeSlicePassed++;
}

void TCB::setTimedWaitSem(SemC *s) {
    timedWaitSem=s;
}

SemC *TCB::getTimedWaitSem() const {
    return timedWaitSem;
}
bool TCB::getInterruptedWhileWaiting() const {
    return interruptedWhileWaiting;
}

void TCB::resetInterruptedWhileWaiting() {
    interruptedWhileWaiting=false;
}
void TCB::resetTimeSlicePassed() {
    timeSlicePassed=0;
}

time_t TCB::getTimeSlicePassed() {
    return timeSlicePassed;
}
void TCB::dispatch() {
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    resetTimeSlicePassed();
    Scheduler &s=Scheduler::getSchedulerInstance();
    TCB* newThread=s.get();
    TCB* oldThread=getRunning();
    if(!oldThread->isCompleted()){
        s.put(oldThread);
    }
    else{
        delete oldThread;
        oldThread= nullptr;
    }
    setRunning(newThread);
    if(oldThread!=newThread){
        yield(oldThread,newThread);
    }
}

void TCB::yield(TCB *oldThread, TCB *newThread) {
    if(oldThread){
        asm volatile("mv %0, sp":"=r"(oldThread->savedUSP));
        asm volatile("mv %0, ra":"=r"(oldThread->savedJmp));
    }
    asm volatile("mv sp, %0"::"r"(newThread->savedUSP));
    asm volatile("mv ra, %0"::"r"(newThread->savedJmp));
}
