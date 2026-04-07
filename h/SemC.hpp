#ifndef PROJECT_BASE_V1_1_2_SEMC_HPP
#define PROJECT_BASE_V1_1_2_SEMC_HPP
#include "KernelResourceManager.hpp"
#include "TCB.hpp"
#include "BlockedQueue.hpp"
class SemC final{
public:
    SemC(unsigned int);
    void closing();
    void* operator new(size_t);
    void operator delete(void*);
    int wait();
    int signal();
    int signalAwoken(TCB*);
    int timedwait(time_t);
    int trywait();
protected:
    void block();
    void unblockAwoken(TCB*);
    void unblock();
private:
    bool isClosing=false;
    int val;
    BlockedQueue queue=BlockedQueue();
    static KernelResourceManager<SemC> semaphoreAllocator;
    static int sid;
    int resourceId;
};
#endif //PROJECT_BASE_V1_1_2_SEMC_HPP
