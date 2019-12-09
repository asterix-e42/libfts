

section .text
global	ft_isdigit

ft_isdigit :
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, '0'
	jb _end

	cmp rdi, '9'
	ja _end

	mov rax, 1

_end :
	leave
	ret
