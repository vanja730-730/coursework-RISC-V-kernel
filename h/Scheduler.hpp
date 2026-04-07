#ifndef PROJECT_BASE_V1_1_2_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_2_SCHEDULER_HPP
#include "syscall_c.hpp"
class Scheduler final{
public:
    static Scheduler& getSchedulerInstance();
    TCB* get();
    void put(TCB*);
    int getThreadCnt() const;
private:
    int threadCnt=0;
    Scheduler()=default;
    TCB* head=nullptr;
    TCB* tail=nullptr;
};
#endif //PROJECT_BASE_V1_1_2_SCHEDULER_HPP
