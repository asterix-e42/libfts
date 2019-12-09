

section .text
global	ft_strdup
extern	malloc
extern	ft_strlen

ft_strdup :
	push rbp
	mov rbp, rsp
	sub rsp, 0x10

	mov [rsp + 8], rdi ; source
	call ft_strlen

	mov [rsp], rax ; len
	mov rdi, rax
	inc rdi

	call malloc
	test rax, rax
	je _end 
	
	mov rcx, [rsp]
	mov rdi, rax
	mov rsi, [rsp + 8] ; source
	cld

	rep movsb
	mov byte[rdi], 0x0

_end :
	leave
	ret
