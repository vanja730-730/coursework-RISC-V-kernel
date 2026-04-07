#ifndef PROJECT_BASE_V1_1_2_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_2_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"
class MemoryAllocator{
public:
    static MemoryAllocator& getAllocatorInstance();
    void* allocate(int);
    int deallocate(void *);
    void* reallocate(int, void*);
protected:
    void copy(void*, void*,uint64);
private:
    MemoryAllocator();
    struct BlockDescriptor{
        uint64 blocksTaken;
        uint64 nextBlock;
    };
    BlockDescriptor* head=(BlockDescriptor*)HEAP_START_ADDR;
};
#endif //PROJECT_BASE_V1_1_2_MEMORYALLOCATOR_HPP
