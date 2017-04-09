_CalcArraySquares_:
    push       rbp                                         ; CODE XREF=_main+171
    mov        rbp, rsp
    push       rbx
    push       rsi
    push       rdi
    mov        rdi, qword [rbp+ret_addr]
    mov        rsi, qword [rbp+var_FFFFFFFFFFFFFFF4]
    mov        rcx, qword [rbp+arg_0]
    xor        rax, rax
    cmp        rcx, 0x0
    jle        EmptyArray

    shl        rcx, 0x2
    xor        rbx, rbx

loc_100001ed6:
    mov        rdx, qword [rsi+rbx]                        ; CODE XREF=_CalcArraySquares_+61
    imul       rdx, rdx
    mov        qword [rdi+rbx], rdx
    add        rax, rdx
    add        rbx, 0x4
    cmp        rbx, rcx
    jl         loc_100001ed6

EmptyArray:
    pop        rdi                                         ; CODE XREF=_CalcArraySquares_+26
    pop        rsi
    pop        rbx
    pop        rbp
    ret
   ; endp
