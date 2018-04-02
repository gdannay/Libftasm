# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:12:52 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:12:53 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, '0'
	jl false
	cmp rdi, '9'
	jg false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
