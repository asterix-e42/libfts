

section .text
global	_ft_toupper

_ft_toupper :
	push rbp
	mov rbp, rsp

	cmp rdi, 'a'
	jb _end

	cmp rdi, 'z'
	ja _end

	sub rdi, 32

_end
	mov rax, rdi
	leave
	ret
