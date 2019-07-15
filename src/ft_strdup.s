

section .text
global	_ft_strdup
extern	_malloc
extern	_ft_strlen
extern	_ft_memcpy
extern	_ft_memset

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
	
	test rax, rax
	je _end 
	push rax
	mov rdi, rax
	mov rsi, 0x0
	mov rdx, [rsp + 0x8]
	inc rdx
	call _ft_memset
	pop rax
	;mov byte [rax + rdi + 1], 0x0
	mov rsi, [rsp + 8] ; source
	mov rdx, [rsp] ; len
	mov rdi, rax ; ret
	
	call _ft_memcpy

_end :
	leave
	ret
