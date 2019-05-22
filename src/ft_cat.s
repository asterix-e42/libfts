
%define MACH_SYSCALL(n)    0x2000000 | n

section .bss
buf:  resb 256

section .text
global	_ft_cat

_ft_cat :
	push rbp
	mov rbp, rsp
	
	push rdi
	sub rsp, 8

loop :
	mov rdi, [rsp + 8]
	mov rsi, buf
	mov rdx, 255
	mov rax, MACH_SYSCALL(3)
	syscall

	jc end
	cmp rax, 0
	jna end

	mov rdi, 1
	mov rsi, buf
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall

	jc end
	jmp loop

end :
	mov rax, 0
	leave
	ret
