
%define MACH_SYSCALL(n)    0x2000000 | n

section .text
global	_ft_putstr
extern	_ft_strlen

_ft_putstr :
	push rbp
	mov rbp, rsp

	call _ft_strlen
	push rdi
	mov rsi, [rsp]
	mov rdi, 1
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall

	leave
	ret

