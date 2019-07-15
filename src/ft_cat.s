
%define MACH_SYSCALL(n)    0x2000000 | n

;;section .bss
;;buf:  resb 256
%define BUF_SIZE           264

section .text
global	_ft_cat

_ft_cat :
	push rbp
	mov rbp, rsp
	
	push rdi
	sub rsp, BUF_SIZE

loop :
	mov rdi, [rsp + BUF_SIZE]
	mov rsi, rsp

	mov rdx, BUF_SIZE
	mov rax, MACH_SYSCALL(3)
	syscall

	jc _end
	cmp rax, 0
	jna _end

	mov rdi, 1
	mov rsi, rsp
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall

	jc _end
	jmp loop

_end :
	mov rax, 0
	leave
	ret
