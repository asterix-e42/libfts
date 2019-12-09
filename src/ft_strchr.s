

section .text
global ft_strchr

ft_strchr :
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

	mov ax, si
	repne scasb
	mov rax, rdi
	
	dec rax
	mov cl, byte [rax]
	cmp cx, si
	je _end
	xor rax, rax

_end :
	leave
	ret
