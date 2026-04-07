#include "../test/timedWaitTest.hpp"
#include "../test//printing.hpp"
static Semaphore* semem;
class T1:public Thread{
public:
    T1(time_t w):waitTime(w){

    }
    bool getOver() const{
        return over;
    }
protected:
    void run() override{
        sem->timedWait(waitTime);
        printString("Prvi\n");
        sem->timedWait(waitTime);
        printString("Drugi\n");
        over=true;
    }
private:
    time_t waitTime;
    Semaphore* sem=semem;
    bool over=false;
};
class T2:public Thread{
public:
    T2(){

    }
    bool getOver() const{return over;}
protected:
    void run() override{
        sleep(20);
        sem->signal();
        over=true;
    }
private:
    Semaphore* sem=semem;
    bool over=false;
};
void timedWaitTest(){
    semem=new Semaphore(0);
    printString("a\n");
    T1* a=new T1(100);
    printString("b\n");
    T2* b=new T2();
    a->start();
    b->start();
    while(!(a->getOver()&&b->getOver())){}
}
