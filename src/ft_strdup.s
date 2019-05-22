

section .text
global	_ft_strdup
extern	_malloc
extern	_ft_strlen
extern	_ft_memcpy

_ft_strdup :
	push rbp
	mov rbp, rsp

	push rdi ; source
	sub rsp, 8
	call _ft_strlen

	add rsp, 8
	push rax ; len
	mov rdi, rax
	inc rdi

	call _malloc

	mov rsi, [rsp + 8] ; source
	mov rdx, [rsp] ; len
	mov rdi, rax ; ret
	
	call _ft_memcpy

	leave
	ret
