

section .text
global	_ft_isalpha

_ft_isalpha :
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 'A'
	jb _end

	cmp rdi, 'Z'
	jbe _ok

	cmp rdi, 'a'
	jb _end

	cmp rdi, 'z'
	ja _end

_ok :
	mov rax, 1

_end
	leave
	ret
