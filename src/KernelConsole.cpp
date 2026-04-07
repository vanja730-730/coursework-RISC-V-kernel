#include "../h/KernelConsole.hpp"

KernelConsole &KernelConsole::getConsoleInstance() {
    static KernelConsole instance;
    return instance;
}

void KernelConsole::putCharIn(char c) {
    input.putCharNonBlocking(c);
}

char KernelConsole::getCharIn() {
    return input.getChar();
}

char KernelConsole::getCharOut() {
    return output.getChar();
}

void KernelConsole::putCharOut(char c) {
    output.putChar(c);
}

int KernelConsole::itemsOut() const {
    return output.getItems();
}

int KernelConsole::slotsIn() const {
    return input.getSlots();
}

void KernelConsole::flush() {
    KernelConsole& console=KernelConsole::getConsoleInstance();
    while(console.itemsOut()){
        if((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
            char c=console.getCharOut();
            *((char*)(CONSOLE_RX_DATA))=c;
        }
    }
}