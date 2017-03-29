	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_CalcResult2_
	.p2align	4, 0x90
_CalcResult2_:                          ## @CalcResult2_
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
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %edx
	addl	-8(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	-36(%rbp), %esi
	imull	-12(%rbp), %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
