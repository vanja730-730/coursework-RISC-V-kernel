#ifndef PROJECT_BASE_V1_1_2_CODES_HPP
#define PROJECT_BASE_V1_1_2_CODES_HPP
#include "../lib/hw.h"
constexpr uint64 MEM_ALLOC_CODE=0x01;
constexpr uint64 MEM_FREE_CODE=0x02;
constexpr uint64 THREAD_CREATE_CODE=0x11;
constexpr uint64 THREAD_EXIT_CODE=0X12;
constexpr uint64 THREAD_DISPATCH_CODE=0x13;
constexpr uint64 SEM_OPEN_CODE=0x21;
constexpr uint64 SEM_CLOSE_CODE=0x22;
constexpr uint64 SEM_WAIT_CODE=0x23;
constexpr uint64 SEM_SIGNAL_CODE=0x24;
constexpr uint64 SEM_TIMEDWAIT_CODE=0x25;
constexpr uint64 SEM_TRYWAIT_CODE=0x26;
constexpr uint64 SLEEP_CODE=0x31;
constexpr uint64 GETC_CODE=0x41;
constexpr uint64 PUTC_CODE=0x42;
constexpr uint64 ILLEGAL_INSTRUCTION_CODE=0x2;
constexpr uint64 ILLEGAL_READ_CODE=0x5;
constexpr uint64 ILLEGAL_WRITE_CODE=0x7;
constexpr uint64 UMODE_ECALL_CODE=0x8;
constexpr uint64 SMODE_ECALL_CODE=0x9;
constexpr uint64 TIMER_CODE=0x8000000000000001UL;
constexpr uint64 CONSOLE_CODE=0x8000000000000009UL;
constexpr uint32 STOP=0x5555;
constexpr uint64 STOPADR=0x100000;
#endif //PROJECT_BASE_V1_1_2_CODES_HPP
