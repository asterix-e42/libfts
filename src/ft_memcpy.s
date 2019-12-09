section .text
global	ft_memcpy

ft_memcpy :
	mov rax, rdi
	mov rcx, rdx
	cld
	rep movsb
	ret
