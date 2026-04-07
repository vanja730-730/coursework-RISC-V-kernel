#include "../h/syscall_c.hpp"
#include "../h/codes.hpp"
void* mem_alloc (size_t size){
    size_t newsize=(size+2*sizeof(uint64))%MEM_BLOCK_SIZE?(size+2*sizeof(uint64))/MEM_BLOCK_SIZE+1:(size+2*sizeof(uint64))/MEM_BLOCK_SIZE;
    return (void*)ecallWrapper((uint64)MEM_ALLOC_CODE,(uint64)newsize);
}
int mem_free (void* adr){
    return (int) ecallWrapper(MEM_FREE_CODE,(uint64)adr);
}
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    void* allocatedUserStack= mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    return (int)ecallWrapper(THREAD_CREATE_CODE,(uint64)handle,(uint64)start_routine,(uint64)arg,(uint64)allocatedUserStack);
}
int thread_exit (){
    return (int) ecallWrapper(THREAD_EXIT_CODE);
}
void thread_dispatch (){
    ecallWrapper(THREAD_DISPATCH_CODE);
}
int sem_open (sem_t* handle, unsigned init){
    return (int) ecallWrapper((uint64)SEM_OPEN_CODE,(uint64)handle,(uint64)init);
}
int sem_close (sem_t handle){
    return (int) ecallWrapper((uint64)SEM_CLOSE_CODE,(uint64)handle);
}
int sem_wait (sem_t id){
    return (int) ecallWrapper((uint64)SEM_WAIT_CODE,(uint64)id);
}
int sem_signal (sem_t id){
    return (int)ecallWrapper((uint64)SEM_SIGNAL_CODE,(uint64)id);
}
int sem_timedwait(sem_t id, time_t timeout){
    return (int) ecallWrapper(SEM_TIMEDWAIT_CODE,(uint64)id,(uint64)timeout);
}
int sem_trywait(sem_t id){
    return (int) ecallWrapper(SEM_TRYWAIT_CODE,(uint64)id);
}
int time_sleep (time_t time){
    return (int) ecallWrapper((uint64)SLEEP_CODE,(uint64)time);
}
char getc (){
    return (char) ecallWrapper(GETC_CODE);
};
void putc (char c){
    ecallWrapper(PUTC_CODE,(uint64)c);
}
uint64 ecallWrapper(uint64 a0,uint64 a1,uint64 a2,uint64 a3, uint64 a4){
    asm volatile("ecall");
    uint64 retval;
    asm volatile("mv %0, a0":"=r"(retval));
    return retval;
}