


section .text
global	ft_strcat

ft_strcat :
	push rbp
	mov rbp, rsp

	push rdi

_len_d :
	cmp byte [rdi], 0
	je _next
	inc rdi
	jmp _len_d

_next :
	cmp byte [rsi], 0
	je _end

	mov al, byte [rsi]
	mov byte [rdi], al
	
	inc rsi
	inc rdi
	jmp _next

_end :
	pop rax
	mov byte [rdi], 0
	
	leave
	ret
