# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/04 11:13:51 by gdannay           #+#    #+#              #
#    Updated: 2018/04/04 11:13:53 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define BUFF_SIZE			2048

section .text
	global _ft_cat

_ft_cat:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	cmp rdi, 0
	jl end

display:
	push rdi
	mov rsi, buff
	mov rdx, BUFF_SIZE
	mov rax, MACH_SYSCALL(READ)
	syscall
	cmp rax, 1
	jl end
	mov rdx, rax
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall

end:
	mov rsp, rbp
	pop rbp
	ret

section .bss
	buff	resb BUFF_SIZE
