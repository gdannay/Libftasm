# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 18:28:57 by gdannay           #+#    #+#              #
#    Updated: 2018/04/03 17:44:38 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	mov rax, 0
	cmp rdi, 0
	jz end
	cmp rsi, 0
	jz end
	mov rcx, rsi
	mov rdx, 0

l1:
	mov byte [rdi + rdx], 0
	inc rdx
	loop l1

end:
	ret
