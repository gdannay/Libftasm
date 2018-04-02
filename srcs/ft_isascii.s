# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:13:50 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:18:28 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl false
	cmp rdi, 127
	jg false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
