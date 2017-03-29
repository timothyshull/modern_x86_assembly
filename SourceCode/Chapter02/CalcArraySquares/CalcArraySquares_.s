	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_CalcArraySquaresCpp
	.p2align	4, 0x90
_CalcArraySquaresCpp:                   ## @CalcArraySquaresCpp
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	imull	(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	-24(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
