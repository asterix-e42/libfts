

section .text
global	_ft_isascii

_ft_isascii :
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 0
	jb _end

	cmp rdi, 127
	ja _end

	mov rax, 1

_end
	leave
	ret
