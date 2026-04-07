#ifndef PROJECT_BASE_V1_1_2_BLOCKEDQUEUE_HPP
#define PROJECT_BASE_V1_1_2_BLOCKEDQUEUE_HPP
#include "syscall_c.hpp"
class BlockedQueue final{
public:
    BlockedQueue()=default;
    TCB* get();
    void put(TCB*);
    int getNumOfBlocked() const;
    void removeAwoken(TCB*);
private:
    TCB* head=nullptr;
    TCB* tail=nullptr;
    int cnt=0;
};
#endif //PROJECT_BASE_V1_1_2_BLOCKEDQUEUE_HPP
