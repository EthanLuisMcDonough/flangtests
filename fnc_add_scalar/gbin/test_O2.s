	.file	"test.f90"
	.text
	.p2align 4
	.globl	__test_MOD_add_arr_opt
	.type	__test_MOD_add_arr_opt, @function
__test_MOD_add_arr_opt:
.LFB0:
	.cfi_startproc
	movq	40(%rdi), %rcx
	movslq	(%rdx), %rax
	movl	$1, %edx
	testq	%rcx, %rcx
	cmove	%rdx, %rcx
	movq	(%rdi), %rdx
	testl	%eax, %eax
	jle	.L1
	salq	$2, %rcx
	leaq	(%rsi,%rax,4), %rdi
	.p2align 4,,10
	.p2align 3
.L4:
	movl	(%rsi), %eax
	addq	$4, %rsi
	addl	$27, %eax
	movl	%eax, (%rdx)
	addq	%rcx, %rdx
	cmpq	%rdi, %rsi
	jne	.L4
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	__test_MOD_add_arr_opt, .-__test_MOD_add_arr_opt
	.p2align 4
	.globl	__test_MOD_add_arr
	.type	__test_MOD_add_arr, @function
__test_MOD_add_arr:
.LFB1:
	.cfi_startproc
	movq	40(%rsi), %r8
	movq	%rdi, %rax
	movq	40(%rdi), %rdi
	movl	$1, %edx
	movq	(%rsi), %rcx
	movq	56(%rsi), %r9
	testq	%r8, %r8
	cmove	%rdx, %r8
	testq	%rdi, %rdi
	cmove	%rdx, %rdi
	movq	(%rax), %rdx
	subq	48(%rsi), %r9
	js	.L7
	salq	$2, %r8
	xorl	%esi, %esi
	salq	$2, %rdi
	.p2align 4,,10
	.p2align 3
.L11:
	movl	(%rcx), %eax
	addq	%r8, %rcx
	addl	$27, %eax
	movl	%eax, (%rdx)
	movq	%rsi, %rax
	addq	%rdi, %rdx
	addq	$1, %rsi
	cmpq	%r9, %rax
	jne	.L11
.L7:
	ret
	.cfi_endproc
.LFE1:
	.size	__test_MOD_add_arr, .-__test_MOD_add_arr
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
