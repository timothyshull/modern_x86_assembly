// The declaration of 'TestStruct' must be the same
// in both TestStruct.h and TestStruct_.inc

typedef struct {
    __int8 Val8;
    __int8 Pad8;
    __int16 Val16;
    __int32 Val32;
    int64_t Val64;
} TestStruct;
