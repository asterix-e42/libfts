

section .text
global	_ft_strdup
extern	_malloc
extern	_ft_strlen

_ft_strdup :
	push rbp
	mov rbp, rsp
	sub rsp, 0x10

	mov [rsp + 8], rdi ; source
	call _ft_strlen

	mov [rsp], rax ; len
	mov rdi, rax
	inc rdi

	call _malloc
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
