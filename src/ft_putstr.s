section .text
global	ft_putstr
extern	ft_strlen

ft_putstr :
	push rdi
	call ft_strlen
	pop rsi
	mov rdi, 1
	mov rdx, rax
	mov rax, 1
	syscall
	ret

