#include "../h/BlockedQueue.hpp"
#include "../h/TCB.hpp"
void BlockedQueue::put(TCB * t) {
    if(!head){
        head=tail=t;
        cnt++;
        return;
    }
    tail->nextBlocked=t;
    t->prevBlocked=tail;
    tail=t;
    cnt++;
}
TCB *BlockedQueue::get() {
    if(!head) return nullptr;
    TCB* t=head;
    head=head->nextBlocked;
    if(head){
        head->prevBlocked= nullptr;
    }
    t->nextBlocked=nullptr;
    t->prevBlocked= nullptr;
    cnt--;
    return t;
}

void BlockedQueue::removeAwoken(TCB *thr) {
    if(thr->prevBlocked) {
        thr->prevBlocked->nextBlocked = thr->nextBlocked;
    }
    else{
        head=thr->nextBlocked;
    }
    if(thr->nextBlocked){
        thr->nextBlocked->prevBlocked=thr->prevBlocked;
    }
    else{
        tail=thr->prevBlocked;
    }
    thr->prevBlocked=thr->nextBlocked=nullptr;
    cnt--;
}
int BlockedQueue::getNumOfBlocked() const {
    return cnt;
}