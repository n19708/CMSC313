	.file	"hw3.c"
	.text
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	imull	%ecx, %esi
	movl	%esi, %edx
	movl	-8(%rbp), %eax
	cltq
	movl	%edx, (%rdi,%rax,4)
	addl	$1, -8(%rbp)
.L3:
	cmpl	$2, -8(%rbp)
	jle	.L4
	addl	$1, -4(%rbp)
.L2:
	cmpl	$2, -4(%rbp)
	jle	.L5
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movl	$0, -8(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
.L8:
	cmpl	$2, -8(%rbp)
	jle	.L9
	addl	$1, -4(%rbp)
.L7:
	cmpl	$2, -4(%rbp)
	jle	.L10
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matadd, .-matadd
	.section	.rodata
.LC0:
	.string	"A = "
.LC1:
	.string	"    "
.LC2:
	.string	"%d"
.LC3:
	.string	"%d "
.LC4:
	.string	"B = "
	.text
	.globl	printArrays
	.type	printArrays, @function
printArrays:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L12
.L36:
	cmpl	$1, -4(%rbp)
	jne	.L13
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$124, %edi
	call	putchar
	jmp	.L14
.L13:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L14:
	cmpl	$0, -4(%rbp)
	je	.L15
	cmpl	$2, -4(%rbp)
	jne	.L16
.L15:
	movl	$91, %edi
	call	putchar
.L16:
	movl	$0, -8(%rbp)
	jmp	.L17
.L20:
	cmpl	$2, -8(%rbp)
	jne	.L18
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L19
.L18:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L19:
	addl	$1, -8(%rbp)
.L17:
	cmpl	$2, -8(%rbp)
	jle	.L20
	cmpl	$0, -4(%rbp)
	je	.L21
	cmpl	$2, -4(%rbp)
	jne	.L22
.L21:
	movl	$93, %edi
	call	putchar
.L22:
	cmpl	$1, -4(%rbp)
	jne	.L23
	movl	$124, %edi
	call	putchar
.L23:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	cmpl	$1, -4(%rbp)
	jne	.L24
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L25
.L24:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L25:
	cmpl	$0, -4(%rbp)
	je	.L26
	cmpl	$2, -4(%rbp)
	jne	.L27
.L26:
	movl	$91, %edi
	call	putchar
	jmp	.L28
.L27:
	movl	$124, %edi
	call	putchar
.L28:
	movl	$0, -12(%rbp)
	jmp	.L29
.L32:
	cmpl	$2, -12(%rbp)
	jne	.L30
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L31
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L31:
	addl	$1, -12(%rbp)
.L29:
	cmpl	$2, -12(%rbp)
	jle	.L32
	cmpl	$0, -4(%rbp)
	je	.L33
	cmpl	$2, -4(%rbp)
	jne	.L34
.L33:
	movl	$93, %edi
	call	putchar
.L34:
	cmpl	$1, -4(%rbp)
	jne	.L35
	movl	$124, %edi
	call	putchar
.L35:
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L12:
	cmpl	$2, -4(%rbp)
	jle	.L36
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printArrays, .-printArrays
	.section	.rodata
.LC5:
	.string	"        "
.LC6:
	.string	"%d  "
.LC7:
	.string	"]"
.LC8:
	.string	"A*B+A = "
.LC9:
	.string	"|"
	.text
	.globl	printResult
	.type	printResult, @function
printResult:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$91, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L38
.L41:
	cmpl	$2, -4(%rbp)
	jne	.L39
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L40:
	addl	$1, -4(%rbp)
.L38:
	cmpl	$2, -4(%rbp)
	jle	.L41
	movl	$.LC7, %edi
	call	puts
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$124, %edi
	call	putchar
	movl	$0, -8(%rbp)
	jmp	.L42
.L45:
	cmpl	$2, -8(%rbp)
	jne	.L43
	movq	-24(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L44:
	addl	$1, -8(%rbp)
.L42:
	cmpl	$2, -8(%rbp)
	jle	.L45
	movl	$.LC9, %edi
	call	puts
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$91, %edi
	call	putchar
	movl	$0, -12(%rbp)
	jmp	.L46
.L49:
	cmpl	$2, -12(%rbp)
	jne	.L47
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L48
.L47:
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L48:
	addl	$1, -12(%rbp)
.L46:
	cmpl	$2, -12(%rbp)
	jle	.L49
	movl	$.LC7, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	printResult, .-printResult
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$1, -96(%rbp)
	movl	$2, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$3, -84(%rbp)
	movl	$4, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$6, -68(%rbp)
	movl	$7, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movd	%xmm0, -112(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	leaq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printArrays
	movl	$10, %edi
	call	putchar
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	printResult
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240801 (Red Hat 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
