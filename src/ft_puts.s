section .text
global ft_puts
	extern ft_putstr
	extern ft_putchar

ft_puts :
	test rdi, rdi
	jne _nlr
	ret
_nlr :
	call ft_putstr
	mov rdi, 0x0a
	call ft_putchar

_end :
	ret
