section .text
	global _ft_strdup
	extern _ft_strlen
	extern _malloc
	extern _ft_memcpy

_ft_strdup:
	push rbp
	mov rbp, rsp
	sub rsp, 16		; align stack
	call _ft_strlen
	push rdi		; save string
	mov rdi, rax
	push rax		; save length
	inc rdi
	call _malloc
	pop rcx			; get length
	mov rdx, rcx
	mov rdi, rax
	pop rsi			; get string
	push rcx		; save length
	call _ft_memcpy
	pop rcx
	mov byte [rax + rcx + 1], 0

end:
	mov rsp, rbp
	pop rbp
	ret
