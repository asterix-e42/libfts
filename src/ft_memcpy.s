


section .text
global	_ft_memcpy

_ft_memcpy :
	push rbp
	mov rbp, rsp

	mov rcx, 0

_next :
	cmp rdx, 0
	je _end

	dec rdx
	mov al, byte [rsi + rcx]
	mov byte [rdi + rcx], al
	
	inc rcx
	;inc rdi
	jmp _next

_end :
	mov rax, rdi
	leave
	ret
