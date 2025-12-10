	.file	"hw5.c"
	.text
	.section	.rodata
.LC0:
	.string	"Engine started!"
	.text
	.globl	startEngine
	.type	startEngine, @function
startEngine:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %edi
	call	puts
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	startEngine, .-startEngine
	.section	.rodata
.LC1:
	.string	"Car: Pressing gas pedal..."
	.text
	.globl	accelerate
	.type	accelerate, @function
accelerate:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC1, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	accelerate, .-accelerate
	.section	.rodata
.LC2:
	.string	"Car: Applying brakes..."
	.text
	.globl	brake
	.type	brake, @function
brake:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC2, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	brake, .-brake
	.globl	initCar
	.type	initCar, @function
initCar:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$startEngine, (%rax)
	movq	-8(%rbp), %rax
	movq	$accelerate, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$brake, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	initCar, .-initCar
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	initCar
	movq	-32(%rbp), %rdx
	movl	$0, %eax
	call	*%rdx
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240801 (Red Hat 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
