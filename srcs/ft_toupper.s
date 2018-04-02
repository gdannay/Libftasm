# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:37:58 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:37:59 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper

_ft_toupper:
	mov rax, rdi
	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jg end
	sub rax, 'a'
	add rax, 'A'

end:
	ret
