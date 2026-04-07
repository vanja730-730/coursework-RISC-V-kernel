#ifndef PROJECT_BASE_V1_1_2_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_2_SYSCALL_C_HPP
#include "../lib/hw.h"
uint64 ecallWrapper(uint64 a0,uint64 a1=0,uint64 a2=0,uint64 a3=0, uint64 a4=0);
void* mem_alloc (size_t size);
int mem_free (void*);
class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_exit ();
void thread_dispatch ();
class SemC;
typedef SemC* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);
int sem_timedwait(
        sem_t id,
        time_t timeout
);
int sem_trywait(sem_t id);
typedef unsigned long time_t;
int time_sleep (time_t);
const int EOF = -1;
char getc ();
void putc (char);
#endif //PROJECT_BASE_V1_1_2_SYSCALL_C_HPP
