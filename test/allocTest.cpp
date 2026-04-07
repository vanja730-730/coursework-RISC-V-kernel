#include "allocTest.hpp"
class K:public Thread{
public:
    K(int ii):i(ii){}
protected:
    void run() override{
        putc('0'+i);
        putc('\n');
    }
private:
    int i;
};
void allocTest(){
    K* arr[100];
    for(int i=0;i<100;i++){
        arr[i]=new K(i);
        arr[i]->start();
    }
    thread_dispatch();
    for(int i=0;i<10;i++){
        delete arr[i];
    }
}