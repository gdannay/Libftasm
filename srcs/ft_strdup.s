# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/04 11:16:52 by gdannay           #+#    #+#              #
#    Updated: 2018/04/04 11:16:53 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _malloc
	extern _ft_memcpy

_ft_strdup:
	push rbp
	mov rbp, rsp
	sub rsp, 16		; align stack
	push rdi		; save string
	call _ft_strlen
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
	mov byte [rax + rcx], 0

end:
	mov rsp, rbp
	pop rbp
	ret
