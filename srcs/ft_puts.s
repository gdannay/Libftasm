%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4
%define STDOUT				1

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	cmp rdi, 0
	jz display_null
	push rdi
	call _ft_strlen
	mov rdx, rax
	jmp display

display_null:
	lea rsi, [rel null_msg.string]
	mov rdx, null_msg.len
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jmp end

display:
	pop rsi
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	lea rsi, [rel new_line.string]
	mov rdx, new_line.len
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall

end:
	mov rsp, rbp
	pop rbp
	ret

section .data
null_msg:
	.string db '(null)', 0xA
	.len equ $ - null_msg
new_line:
	.string db 0x0a
	.len equ $ - new_line
