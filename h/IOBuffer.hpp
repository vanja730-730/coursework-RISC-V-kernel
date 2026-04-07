#ifndef PROJECT_BASE_V1_1_2_IOBUFFER_HPP
#define PROJECT_BASE_V1_1_2_IOBUFFER_HPP
#include "SemC.hpp"
class IOBuffer final{
public:
    IOBuffer();
    char getChar();
    void putChar(char);
    int getSlots() const;
    int getItems() const;
    char getCharNonBlocking();
    void putCharNonBlocking(char);
private:
    SemC* semIn;
    SemC* semOut;
    int head=0;
    int tail=0;
    int items=0;
    int slots=BUF_SIZE;
    static constexpr int BUF_SIZE=256;
    char buf[BUF_SIZE];
};
#endif //PROJECT_BASE_V1_1_2_IOBUFFER_HPP
