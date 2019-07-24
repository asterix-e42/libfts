
section .text
global	_ft_strlen

_ft_strlen :
	push rbp
	mov rbp, rsp

	xor rax, rax

	cmp rdi, 0
	je _end

	xor rcx, rcx
	not rcx
	
	cld

	repne scasb

	not rcx
	sub rdi, rcx
	dec rcx
	mov rax, rcx


_end :
	leave
	ret
