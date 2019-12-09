section .text
global  ft_memcmp

ft_memcmp :
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
