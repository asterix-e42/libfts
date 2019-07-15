section .data
	null_t:
	.string db "(null)"

section .text
global _ft_puts
	extern _ft_putstr
	extern _ft_putchar

_ft_puts :
	push rbp
	mov rbp, rsp

	test rdi, rdi
	jne _nlr
	lea rdi, [rel null_t.string]
;	mov rdx, null_t.len
_nlr :
	call _ft_putstr
	mov rdi, 0ah
	call _ft_putchar

_end :
	leave
	ret
