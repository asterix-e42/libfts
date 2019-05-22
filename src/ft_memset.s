

section .text
global _ft_memset

_ft_memset :
	push rbp
	mov rbp, rsp

_loop :
	
	cmp rdx, 0
	jbe _end

	dec rdx
	mov rax, rsi
	mov byte [rdi + rdx], al
	jmp _loop

_end :
	mov rax, rdi
	leave
	ret
