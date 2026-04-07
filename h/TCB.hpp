#ifndef PROJECT_BASE_V1_1_2_TCB_HPP
#define PROJECT_BASE_V1_1_2_TCB_HPP
#include "syscall_c.hpp"
#include "../h/KernelResourceManager.hpp"
#include "../h/Scheduler.hpp"
#include "SleepQueue.hpp"
class TCB final{
public:
    TCB(void(*)(void*), void*, uint64*);
    void* operator new(size_t);
    void operator delete(void*);
    static TCB* getRunning();
    static void setRunning(TCB*);
    friend class Scheduler;
    friend class BlockedQueue;
    friend class SleepQueue;
    static void dispatch();
    static void yield(TCB*, TCB*);
    void setCompleted(bool);
    bool isCompleted() const;
    time_t getTimeSlice() const;
    static void incTimeSlicePassed();
    static time_t getTimeSlicePassed();
    static void resetTimeSlicePassed();
    void setMain();
    bool getInterruptedWhileWaiting() const;
    void resetInterruptedWhileWaiting();
    void setTimedWaitSem(SemC*);
    uint64 getSavedSStatus() const;
    SemC* getTimedWaitSem() const;
private:
    SemC* timedWaitSem=nullptr;
    bool isMain=false;
    bool interruptedWhileWaiting=false;
    time_t timeSlice=DEFAULT_TIME_SLICE;
    static time_t timeSlicePassed;
    static TCB* running;
    static void threadWrapper();
    void(*threadBody)(void*);
    void* arg;
    uint64* userStack;
    uint64 savedSStatus;
    uint64 savedUSP;
    uint64 savedJmp;
    static KernelResourceManager<TCB> threadAllocator;
    static int sid;
    int resourceId;
    TCB* nextReady;
    TCB* nextBlocked;
    TCB* prevBlocked;
    TCB* prevSlept;
    TCB* nextSlept;
    time_t sleptTime;
    bool completed=false;
};
#endif //PROJECT_BASE_V1_1_2_TCB_HPP
