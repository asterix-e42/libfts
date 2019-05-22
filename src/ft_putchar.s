
%define MACH_SYSCALL(n)    0x2000000 | n

section .text
global	_ft_putchar
extern	_ft_strlen

_ft_putchar :
	push rbp
	mov rbp, rsp

	push rdi
	mov rsi, rsp
	mov rdi, 1
	mov rdx, 1
	mov rax, MACH_SYSCALL(4)
	syscall

	leave
	ret

