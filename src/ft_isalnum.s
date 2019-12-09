

section .text
global ft_isalnum
	extern ft_isalpha
	extern ft_isdigit

ft_isalnum :
	push rbp
	mov rbp, rsp

	call ft_isdigit

	cmp rax, 1
	je _end

	call ft_isalpha

_end :
	leave
	ret
