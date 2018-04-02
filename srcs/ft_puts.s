%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4
%define STDOUT				1

section .text
	global _ft_puts

_ft_puts:
	cmp rdi, 0
	jz display_null
	mov rdx, 0
	mov rsi, rdi
	jmp ft_strlen

display_null:
	mov rsi, [rel null_msg.string]
	mov rdx, null_msg.len
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rax, 10
	jmp end

ft_strlen:
	cmp byte [rsi], 0
	jz display
	inc rdx
	inc rsi
	jmp ft_strlen

display:
	mov rsi, rdi
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rsi, [rel null_msg.string]
	mov rdx, null_msg.len
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	mov rax, 20

end:
	ret

section .data
null_msg:
	.string db '(null)', 0xa
	.len equ $ - null_msg
new_line:
	.string db 0xa, 0xd
	.len equ $ - new_line
