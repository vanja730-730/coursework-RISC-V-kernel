#include "periodicTest.hpp"
class A:public PeriodicThread{
public:
    A(int cn, char c,time_t t): PeriodicThread(t){
        cnt=cn;
        chr=c;
    }
    bool getOver()const {return over;}
protected:
    void periodicActivation() override{
        putc(chr);
        putc('\n');
        if(--cnt<0){
            terminate();
            over=true;
        }
    }
private:
    bool over=false;
    char chr;
    int cnt;
};
void periodicTest(){
    A *threads[2];
    threads[0]=new A(5,'a',2);
    threads[1]=new A(10,'b',4);
    threads[0]->start();
    threads[1]->start();
    while(!threads[0]->getOver()||!threads[1]->getOver()){}
}