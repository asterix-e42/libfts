

section .text
global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum :
	push rbp
	mov rbp, rsp

	call _ft_isdigit

	cmp rax, 1
	je _end

	call _ft_isalpha

_end :
	leave
	ret
