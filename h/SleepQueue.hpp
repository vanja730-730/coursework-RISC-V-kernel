#ifndef PROJECT_BASE_V1_1_2_SLEEPQUEUE_HPP
#define PROJECT_BASE_V1_1_2_SLEEPQUEUE_HPP
#include "Scheduler.hpp"
#include "../lib/hw.h"
#include "TCB.hpp"
class SleepQueue final{
public:
    static SleepQueue& getSleepQueueInstance();
    void updateTick();
    void put(TCB*, time_t);
    void removeInterrupted(TCB*);
private:
    SleepQueue()=default;
    static void removeFromScheduler(TCB*);
    static void returnToScheduler(TCB*);
    TCB* head=nullptr;
};
#endif //PROJECT_BASE_V1_1_2_SLEEPQUEUE_HPP
