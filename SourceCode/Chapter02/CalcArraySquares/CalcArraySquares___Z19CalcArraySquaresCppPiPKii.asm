__Z19CalcArraySquaresCppPiPKii:        // CalcArraySquaresCpp(int*, int const*, int)
    push       rbp                                         ; CODE XREF=_main+144
    mov        rbp, rsp
    mov        qword [rbp+var_8], rdi
    mov        qword [rbp+var_10], rsi
    mov        dword [rbp+var_14], edx
    mov        dword [rbp+var_18], 0x0
    mov        dword [rbp+var_1C], 0x0

loc_100001ccd:
    mov        eax, dword [rbp+var_1C]                     ; CODE XREF=__Z19CalcArraySquaresCppPiPKii+101
    cmp        eax, dword [rbp+var_14]
    jge        loc_100001d1a

    movsxd     rax, dword [rbp+var_1C]
    mov        rcx, qword [rbp+var_10]
    mov        edx, dword [rcx+rax*4]
    movsxd     rax, dword [rbp+var_1C]
    mov        rcx, qword [rbp+var_10]
    imul       edx, dword [rcx+rax*4]
    movsxd     rax, dword [rbp+var_1C]
    mov        rcx, qword [rbp+var_8]
    mov        dword [rcx+rax*4], edx
    movsxd     rax, dword [rbp+var_1C]
    mov        rcx, qword [rbp+var_8]
    mov        edx, dword [rcx+rax*4]
    add        edx, dword [rbp+var_18]
    mov        dword [rbp+var_18], edx
    mov        eax, dword [rbp+var_1C]
    add        eax, 0x1
    mov        dword [rbp+var_1C], eax
    jmp        loc_100001ccd

loc_100001d1a:
    mov        eax, dword [rbp+var_18]                     ; CODE XREF=__Z19CalcArraySquaresCppPiPKii+35
    pop        rbp
    ret
   ; endp
