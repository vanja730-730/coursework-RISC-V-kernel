#include "../h/IOBuffer.hpp"
IOBuffer::IOBuffer(){
    semIn=new SemC(0);
    semOut=new SemC(BUF_SIZE);
}

void IOBuffer::putChar(char c) {
    semOut->wait();
    semIn->signal();
    buf[head]=c;
    items++;
    slots--;
    head=head>=BUF_SIZE-1?0:head+1;
}

void IOBuffer::putCharNonBlocking(char c) {
    semOut->trywait();
    semIn->signal();
    buf[head]=c;
    items++;
    slots--;
    head=head>=BUF_SIZE-1?0:head+1;
}

char IOBuffer::getCharNonBlocking() {
    semIn->trywait();
    semOut->signal();
    char ret=buf[tail];
    items--;
    slots++;
    tail=tail>=BUF_SIZE-1?0:tail+1;
    return ret;
}
char IOBuffer::getChar() {
    semIn->wait();
    semOut->signal();
    char ret=buf[tail];
    items--;
    slots++;
    tail=tail>=BUF_SIZE-1?0:tail+1;
    return ret;
}

int IOBuffer::getItems() const {
    return items;
}

int IOBuffer::getSlots() const {
    return slots;
}
