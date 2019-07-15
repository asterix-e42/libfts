section .text
global _ft_bzero

_ft_bzero :
	push rbp
	mov rbp, rsp

_loop :
	
	cmp rsi, 0
	je _end

	dec rsi
	mov byte [rdi + rsi], 0
	jmp _loop

_end :
	leave
	ret
