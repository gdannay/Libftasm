# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:38:28 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:38:52 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower

_ft_tolower:
	mov rax, rdi
	cmp rdi, 'A'
	jl end
	cmp rdi, 'Z'
	jg end
	sub rax, 'A'
	add rax, 'a'

end:
	ret
