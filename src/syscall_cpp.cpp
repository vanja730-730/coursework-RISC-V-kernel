#include "../h/syscall_cpp.hpp"
#include "../h/TCB.hpp"
#include "../h/SemC.hpp"
void* operator new (size_t sz){
    return mem_alloc(sz);
}
void operator delete (void* adr){
    mem_free(adr);
}
Thread::Thread(void (*body)(void *), void *arg):body(body),arg(arg){
    thread_t handle;
    thread_create(&handle,body,arg);
    myHandle=handle;
}
Thread::Thread() {

}
void Thread::dispatch() {
    thread_dispatch();
}

int Thread::start() {
    class RunAdapter{
    public:
        static void adapter(void* a){
            Thread* t=(Thread*)a;
            t->run();
        }
    };
    thread_t handle;
    body=RunAdapter::adapter;
    arg=this;
    int status=thread_create(&handle,body,arg);
    myHandle=handle;
    return status;
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}
Thread::~Thread(){
    thread_exit();
    delete myHandle;
}
PeriodicThread::PeriodicThread(time_t period):period(period) {

}

void PeriodicThread::terminate() {
    period=0;
}

void PeriodicThread::run() {
    while(period){
        sleep(period);
        periodicActivation();
    }
}

Semaphore::Semaphore(unsigned int init) {
    sem_t handle;
    sem_open(&handle,init);
    myHandle=handle;
}
Semaphore::~Semaphore() {
    sem_close(myHandle);
    delete myHandle;
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

int Semaphore::timedWait(time_t limit) {
    return sem_timedwait(myHandle,limit);
}
char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}