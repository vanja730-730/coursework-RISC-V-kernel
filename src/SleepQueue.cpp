#include "../h/SleepQueue.hpp"
#include "../h/SemC.hpp"
SleepQueue &SleepQueue::getSleepQueueInstance() {
    static SleepQueue instance;
    return instance;
}
void SleepQueue::put(TCB *thr, time_t ticks) {
    if(!head){
        head=thr;
    }
    else {
        TCB *cur = head, *prev = nullptr;
        while (cur) {
            if (ticks <= cur->sleptTime) break;
            ticks -= cur->sleptTime;
            prev = cur;
            cur = cur->nextSlept;
        }
        if(!prev){
            thr->nextSlept=head;
            thr->prevSlept= nullptr;
            head=thr;
        }
        else{
            thr->nextSlept=prev->nextSlept;
            prev->nextSlept=thr;
            thr->prevSlept=prev;
        }
        if(thr->nextSlept){
            thr->nextSlept->prevSlept=thr;
            thr->nextSlept->sleptTime-=ticks;
        }
    }
    thr->sleptTime=ticks;
    removeFromScheduler(thr);
}

void SleepQueue::removeFromScheduler(TCB *thr) {
    Scheduler &s=Scheduler::getSchedulerInstance();
    TCB* newThread=s.get();
    TCB::setRunning(newThread);
    TCB::yield(thr,newThread);
}

void SleepQueue::returnToScheduler(TCB *thr) {
    Scheduler &s=Scheduler::getSchedulerInstance();
    s.put(thr);
}

void SleepQueue::updateTick() {
    if(head){
        head->sleptTime--;
        while(head&&head->sleptTime==0){
            TCB* temp=head;
            head=head->nextSlept;
            if(head){
                head->prevSlept=nullptr;
            }
            temp->prevSlept=temp->nextSlept= nullptr;
            if(temp->timedWaitSem){
                temp->interruptedWhileWaiting=true;
                temp->timedWaitSem->signalAwoken(temp);
            }
            else{
                returnToScheduler(temp);
            }
        }
    }
}

void SleepQueue::removeInterrupted(TCB *thr) {
    if(thr->prevSlept) {
        thr->prevSlept->nextSlept = thr->nextSlept;
    }
    else{
        head=thr->nextSlept;
    }
    if(thr->nextSlept){
        thr->nextSlept->prevSlept=thr->prevSlept;
        thr->nextSlept->sleptTime+=thr->sleptTime;
    }
    thr->prevSlept=thr->nextSlept=nullptr;
}