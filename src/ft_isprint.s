

section .text
global	ft_isprint

ft_isprint :
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 32
	jb _end

	cmp rdi, 126
	ja _end

	mov rax, 1

_end :
	leave
	ret
