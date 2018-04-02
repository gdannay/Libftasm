# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:23:54 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:23:56 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jg false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
