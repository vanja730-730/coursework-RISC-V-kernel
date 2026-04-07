#include "../h/SemC.hpp"
int SemC::sid=0;
KernelResourceManager<SemC> SemC::semaphoreAllocator;
SemC::SemC(unsigned int v):val((int)v) {
    resourceId=sid;
}

int SemC::wait() {
    if(--val<0){
        block();
    }
    if(isClosing){
        return -1;
    }
    return 0;
}

int SemC::signal() {
    if(++val<=0){
        unblock();
    }
    return 0;
}

int SemC::signalAwoken(TCB *thr) {
    val++;
    unblockAwoken(thr);
    return 0;
}
int SemC::timedwait(time_t time) {
    if(--val<0){
        TCB* thr=TCB::getRunning();
        thr->setTimedWaitSem(this);
        queue.put(thr);
        SleepQueue &sl=SleepQueue::getSleepQueueInstance();
        sl.put(thr, time);
        if(isClosing){
            TCB::getRunning()->resetInterruptedWhileWaiting();
            return -1;
        }
        if(TCB::getRunning()->getInterruptedWhileWaiting()){
            TCB::getRunning()->resetInterruptedWhileWaiting();
            return -2;
        }
        TCB::getRunning()->resetInterruptedWhileWaiting();
        return 0;
    }
    if(isClosing){
        return -1;
    }
    return 0;
}
int SemC::trywait() {

    val--;
    return val>=0;
}
void *SemC::operator new(size_t) {
    return semaphoreAllocator.allocResource(sid);
}

void SemC::operator delete(void *ptr) {
    SemC* s=(SemC*)ptr;
    semaphoreAllocator.deallocResource(s->resourceId);
}

void SemC::closing() {
    isClosing=true;
    while(queue.getNumOfBlocked()){
        unblock();
    }
}

void SemC::block() {
    Scheduler &s=Scheduler::getSchedulerInstance();
    TCB* newThread=s.get();
    TCB* oldThread=TCB::getRunning();
    if(newThread==oldThread&&s.getThreadCnt()){
        newThread=s.get();
    }
    queue.put(oldThread);
    TCB::setRunning(newThread);
    TCB::yield(oldThread,newThread);
}

void SemC::unblockAwoken(TCB *thr) {
    Scheduler &s=Scheduler::getSchedulerInstance();
    queue.removeAwoken(thr);
    s.put(thr);
}
void SemC::unblock() {
    Scheduler &s=Scheduler::getSchedulerInstance();
    TCB* t=queue.get();
    if(t->getTimedWaitSem()==this){
        SleepQueue &sl=SleepQueue::getSleepQueueInstance();
        sl.removeInterrupted(t);
    }
    s.put(t);
}