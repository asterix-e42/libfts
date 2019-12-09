

section .text
global	ft_isspace

ft_isspace :
	push rbp
	mov rbp, rsp

	xor rax, rax

	cmp rdi, ' '
	je _ok

	cmp rdi, 9
	jb _end

	cmp rdi, 13
	ja _end

_ok :
	mov rax, 1

_end :
	leave
	ret
