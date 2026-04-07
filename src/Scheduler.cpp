#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"
Scheduler &Scheduler::getSchedulerInstance() {
    static Scheduler instance;
    return instance;
}

void Scheduler::put(TCB *t) {
    if(!head){
        head=t;
        tail=t;
        threadCnt++;
        return;
    }
    threadCnt++;
    tail->nextReady=t;
    tail=t;
}

TCB *Scheduler::get() {
    if(!head) return nullptr;
    TCB* t=head;
    head=head->nextReady;
    t->nextReady=nullptr;
    threadCnt--;
    return t;
}

int Scheduler::getThreadCnt() const{
    return threadCnt;
}