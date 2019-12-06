section .text
global  _ft_memcmp

_ft_memcmp :
	xor rax, rax
	test rdx, rdx
	je .ret
	mov rcx, rdx
	cld
	repe cmpsb
	setl al
	jle .ret
	not eax
.ret:
	ret
