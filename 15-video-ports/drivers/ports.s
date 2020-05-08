	.file	"ports.c"
	.text
	.globl	port_byte_in
	.type	port_byte_in, @function
port_byte_in:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movw	%ax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %edx
/APP
/  14 "ports.c" 1
	in %dx, %al
/  0 "" 2
/NO_APP
	movb	%al, -1(%ebp)
	movb	-1(%ebp), %al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	port_byte_in, .-port_byte_in
	.globl	port_byte_out
	.type	port_byte_out, @function
port_byte_out:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movw	%ax, -4(%ebp)
	movb	%dl, %al
	movb	%al, -8(%ebp)
	movb	-8(%ebp), %al
	movl	-4(%ebp), %edx
/APP
/  24 "ports.c" 1
	out %al, %dx
/  0 "" 2
/NO_APP
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	port_byte_out, .-port_byte_out
	.globl	port_word_in
	.type	port_word_in, @function
port_word_in:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movw	%ax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, %edx
/APP
/  29 "ports.c" 1
	in %dx, %ax
/  0 "" 2
/NO_APP
	movw	%ax, -2(%ebp)
	movw	-2(%ebp), %ax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	port_word_in, .-port_word_in
	.globl	port_word_out
	.type	port_word_out, @function
port_word_out:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movw	%dx, -4(%ebp)
	movw	%ax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
/APP
/  34 "ports.c" 1
	out %ax, %dx
/  0 "" 2
/NO_APP
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	port_word_out, .-port_word_out
	.ident	"GCC: (GNU) 9.3.0"
