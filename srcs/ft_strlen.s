# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/04 11:16:46 by gdannay           #+#    #+#              #
#    Updated: 2018/04/04 11:16:47 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	jz end
	mov rdx, rdi
	repnz scasb
	sub rdi, rdx
	mov rax, rdi
	dec rax

end:
	ret

