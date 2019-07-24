

section .text
global	_ft_isalpha

_ft_isalpha :
	xor rax, rax

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

_end :
	ret
