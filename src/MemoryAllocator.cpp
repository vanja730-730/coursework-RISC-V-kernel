#include "../h/MemoryAllocator.hpp"
MemoryAllocator &MemoryAllocator::getAllocatorInstance() {
    static MemoryAllocator instance;
    return instance;
}
MemoryAllocator::MemoryAllocator() {
    head->blocksTaken=1;
    head->nextBlock= 0;
}

void *MemoryAllocator::allocate(int blocks) {
    BlockDescriptor *elem=head;
    while(elem->nextBlock){
        int freeblocks=(elem->nextBlock-((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
        if(freeblocks>=blocks){
            BlockDescriptor* nelem=(BlockDescriptor*)((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE);
            nelem->nextBlock=elem->nextBlock;
            nelem->blocksTaken=blocks;
            elem->nextBlock=(uint64)nelem;
            return nelem+1;
        }
        elem=(BlockDescriptor*)elem->nextBlock;
    }
    if(((uint64)HEAP_END_ADDR-((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE>=(uint64)blocks){
        BlockDescriptor* nelem=(BlockDescriptor*)((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE);
        nelem->nextBlock=0;
        nelem->blocksTaken=blocks;
        elem->nextBlock=(uint64)nelem;
        return nelem+1;
    }
    return nullptr;
}

int MemoryAllocator::deallocate(void *addr) {
    BlockDescriptor* prev=head;
    BlockDescriptor* curr=(BlockDescriptor*)head->nextBlock;
    while(curr){
        if(curr+1==addr){
            prev->nextBlock=curr->nextBlock;
            return 0;
        }
        prev=curr;
        curr=(BlockDescriptor*)curr->nextBlock;
    }
    return -1;
}

void *MemoryAllocator::reallocate(int blocks, void* addr) {
    BlockDescriptor* curr=((BlockDescriptor*)addr)-1;
    int freeblocks;
    if(curr->nextBlock){
        freeblocks=(curr->nextBlock-((uint64)curr+curr->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
    }
    else{
        freeblocks=((uint64)(HEAP_END_ADDR)-((uint64)curr+curr->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
    }
    if(freeblocks>=blocks){
        curr->blocksTaken+=blocks;
        return curr+1;
    }
    else{
        void* newAddr=allocate(curr->blocksTaken+blocks);
        if(!newAddr){
            return nullptr;
        }
        copy(newAddr,addr,curr->blocksTaken);
        deallocate(addr);
        return newAddr;
    }
}

void MemoryAllocator::copy(void *d, void *s, uint64 cnt) {
    uint64* dst=(uint64*)d;
    uint64* src=(uint64*)s;
    for(uint64 i=0;i<cnt*MEM_BLOCK_SIZE;i++){
        *dst=*src;
        dst++;
        src++;
    }
}