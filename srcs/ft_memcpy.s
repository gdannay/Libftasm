section .text
	global _ft_memcpy

_ft_memcpy:
	cmp rdi, 0
	jz end
	cmp rsi, 0
	jz end
	mov rcx, rdx
	mov rax, rdi
	rep movsb

end:
	ret
