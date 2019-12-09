section .data
	min_int:
	.str db "-2147483648"
	.len equ $ - min_int.str

section .text
global	ft_putnbr

ft_putnbr :
	push rbp
	mov rbp, rsp


	mov rcx, 0x0a
	mov eax, edi
	xor rbx, rbx

	and edi, 0x80000000

	test rdi, rdi
	je _loop		; jump

	test eax, 0x80000000
	je min ; jump

	xor rdi, rdi
	mov bh, '-'
	neg eax

_loop :
	xor rdx, rdx	; floating point exception
	div rcx

	add dl, 0x30  ; '0'
	mov dh, dl
	push dx
	inc rsp
	inc rdi

	test al, al
	jne _loop		; jump

	test rbx, rbx
	je _finish_pos

	push bx
	inc rsp
	inc rdi

_finish_pos :
	lea rsi, [rsp]
	mov rdx, rdi
_finish_min :
	and rsp, -16
	mov rdi, 1
	mov rax, 1
	syscall

	leave
	ret

min :
	lea rsi, [rel min_int.str]
	mov rdx, min_int.len
	jmp _finish_min
