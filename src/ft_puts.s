section .data
	null_t: db "(null)", 0

section .text
global _ft_puts
	extern _ft_putstr
	extern _ft_putchar

_ft_puts :
	push rbp
	mov rbp, rsp

	test rdi, rdi
	jne _nlr
	lea rdi, [rel null_t]
_nlr :
	call _ft_putstr
	mov rdi, 0x0a
	call _ft_putchar

_end :
	leave
	ret
