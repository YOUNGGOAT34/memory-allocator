#include "alloc_mem.h"

extern HEAP *heap;

int main(){
   i8 *p;
   p=heap;
   *p='d';
   
   return 0;
}