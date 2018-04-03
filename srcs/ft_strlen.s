section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	jz end
	mov rdx, rdi
	repnz scasb
	sub rdi, rdx
	mov rax, rdi
	dec rax

end:
	ret

