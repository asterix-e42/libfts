
;;section .bss
;;buf:  resb 256
%define BUF_SIZE           256

section .text
global	ft_cat

ft_cat :
	push rbp
	mov rbp, rsp
	
	push rdi
	sub rsp, BUF_SIZE

loop :
	mov rdi, [rbp - 4]
	mov rsi, rsp

	mov rdx, BUF_SIZE
	mov rax, 0
	syscall

	jc _end
	cmp rax, 0
	jna _end

	mov rdi, 1
	mov rsi, rsp
	mov rdx, rax
	mov rax, 1
	syscall

	jc _end
	jmp loop

_end :
	leave
	ret
