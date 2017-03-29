	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_CalcResult1_
	.p2align	4, 0x90
_CalcResult1_:                          ## @CalcResult1_
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edx
	addl	-8(%rbp), %edx
	imull	-12(%rbp), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
