

section .text
global _ft_puts
	extern _ft_putstr
	extern _ft_putchar

_ft_puts :
	push rbp
	mov rbp, rsp

	call _ft_putstr
	mov rdi, 0ah
	call _ft_putchar

_end :
	leave
	ret
