# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 20:08:34 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 20:35:15 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalpha

_ft_isalpha:
	mov rax, 0
	cmp rdi, 'A'
	jl end
	cmp rdi, 'z'
	jg end
	cmp rdi, 'Z'
	jle true
	cmp rdi, 'a'
	jge true
	jmp end

true:
	mov rax, 1

end:
	ret
