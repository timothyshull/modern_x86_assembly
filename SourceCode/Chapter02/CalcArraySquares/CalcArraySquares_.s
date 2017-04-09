    .section	__TEXT,__text
    .globl	_CalcArraySquares_

# extern "C" int CalcArraySquares_(int* y, const int* x, int n);
# Description:   This function cComputes y[i] = x[i] * x[i].
# Returns:      Sum of the elements in array y.

_CalcArraySquares_:
    pushq   %rbp
    movq    %rsp, %rbp
    pushq   %rbx
    pushq   %rsi
    pushq   %rdi

# Load arguments
    movq    -8(%rbp), %rdi       # rdi = 'y'
    movq    -16(%rbp), %rsi      # rsi = 'x'
    movq    -24(%rbp), %rcx      # rcx = 'n'

# Initialize array sum register, calculate size of array in bytes,
# and initialize element offset register.
    xorq    %rax, %rax          # rax = sum of 'y' array
    cmpq    $0, %rcx
    jle     EmptyArray
    shlq    $2, %rcx            # rcx = size of array in bytes
    xorq    %rbx, %rbx          # rbx = array element offset

# Repeat loop until finished
LoopStart:
    movq    (%rsi,%rbx), %rdx   # load next x[i]
    imulq   %rdx, %rdx          # compute x[i] * x[i]
    movq    %rdx, (%rdi,%rbx)   # save result to y[i]
    addq    %rdx, %rax          # update running sum
    addq    $4, %rbx            # update array element offset
    cmpq    %rcx, %rbx
    jl      LoopStart           # jump if not finished

EmptyArray:
    popq    %rdi
    popq    %rsi
    popq    %rbx
    popq    %rbp
    retq
