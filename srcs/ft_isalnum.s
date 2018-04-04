# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/04 11:14:41 by gdannay           #+#    #+#              #
#    Updated: 2018/04/04 11:14:43 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	push rdi
	call _ft_isalpha
	cmp rax, 1
	jz end
	pop rdi
	call _ft_isdigit
	cmp rax, 1
	jz end
	mov rax, 0

end:
	mov rsp, rbp
	pop rbp
	ret
