# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/04 11:15:04 by gdannay           #+#    #+#              #
#    Updated: 2018/04/04 11:16:16 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memcpy

_ft_memcpy:
	cmp rdi, 0
	jz end
	cmp rsi, 0
	jz end
	mov rcx, rdx
	mov rax, rdi
	rep movsb

end:
	ret
