
bits 32
global heap
%define heap_size (1024*1024*1024/8)


section .bss
   _heap: resq heap_size
section .data
    heap: dq _heap
     
section .note.GNU-stack noalloc