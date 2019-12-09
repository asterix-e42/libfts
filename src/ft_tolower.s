

section .text
global	ft_tolower

ft_tolower :
	push rbp
	mov rbp, rsp

	cmp rdi, 'A'
	jb _end

	cmp rdi, 'Z'
	ja _end

	add rdi, 32

_end :
	mov rax, rdi
	leave
	ret
