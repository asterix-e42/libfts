


section .text
global	_ft_memcpy

_ft_memcpy :
	push rbp
	mov rbp, rsp

	push rdi
	mov rcx, rdx
	cld

	rep movsb

_end :
	pop rax
	leave
	ret
