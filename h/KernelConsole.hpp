#ifndef PROJECT_BASE_V1_1_2_KERNELCONSOLE_HPP
#define PROJECT_BASE_V1_1_2_KERNELCONSOLE_HPP
#include "IOBuffer.hpp"
class KernelConsole final{
public:
    static KernelConsole& getConsoleInstance();
    static void flush();
    void putCharIn(char);
    void putCharOut(char);
    char getCharIn();
    char getCharOut();
    int itemsOut() const;
    int slotsIn() const;
private:
    IOBuffer input;
    IOBuffer output;
    KernelConsole()=default;
};
#endif //PROJECT_BASE_V1_1_2_KERNELCONSOLE_HPP
