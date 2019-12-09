section .text
global	ft_putchar

ft_putchar :
	push rdi
	lea rsi, [rsp]
	mov rdi, 1
	mov rdx, 1
	mov rax, 1
	syscall

	add rsp, 8
	ret

