#ifndef PROJECT_BASE_V1_1_2_KERNELRESOURCEMANAGER_HPP
#define PROJECT_BASE_V1_1_2_KERNELRESOURCEMANAGER_HPP
#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
template<typename T> class KernelResourceManager{
public:
    KernelResourceManager(){
        for(int i=0;i<DEFAULT_SIZE;i++){
            occupied[i]=false;
        }
    };
    void* allocResource(int &id){
        if(indexFree>=DEFAULT_SIZE) return nullptr;
        void *ret=&resourceBlock[indexFree*sizeof (T)];
        occupied[indexFree]=true;
        id=indexFree;
        int i;
        for(i=indexFree;i<DEFAULT_SIZE;i++){
            if(!occupied[i]) break;
        }
        indexFree=i;
        return ret;
    };
    //T* getResource(uint64 id);
    void deallocResource(int id){
        occupied[id]=false;
        if(indexFree>id){
            indexFree=id;
        }
    };
private:
    static constexpr int DEFAULT_SIZE=1024;
    uint8 resourceBlock[DEFAULT_SIZE*sizeof(T)];
    int indexFree=0;
    bool occupied[DEFAULT_SIZE];
};
#endif //PROJECT_BASE_V1_1_2_KERNELRESOURCEMANAGER_HPP
