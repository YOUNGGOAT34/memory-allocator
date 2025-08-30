#ifndef ALLOC_MEM_H
#define ALLOC_MEM_H

#define _GNU_SOURCE
#include<stdlib.h>
#include<stdio.h>
#include<stdbool.h>



typedef void HEAP;


typedef signed char i8;
typedef signed short int i16;
typedef signed int i32;
typedef signed long int i64;

typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long int u64;
typedef unsigned _BitInt(128) u128;

typedef struct header{
      u32 word_count:30;
      bool allocated:1;
      bool __attribute__((unused)) reserved:1;
} __attribute__((packed)) header;

void hello(void);


#endif