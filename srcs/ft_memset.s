# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/03 19:19:31 by gdannay           #+#    #+#              #
#    Updated: 2018/04/03 19:19:40 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

_ft_memset:
	cmp rdi, 0
	jz end
	push rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb

end:
	pop rax
	ret
	
