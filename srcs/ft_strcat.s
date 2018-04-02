# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 19:52:30 by gdannay           #+#    #+#              #
#    Updated: 2018/04/02 19:52:32 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat

_ft_strcat:
	cmp rdi, 0
	jz end
	cmp rsi, 0
	jz end
	mov rax, rdi
	mov rcx, rsi

get_end:
	cmp byte [rax], 0
	jz concat
	inc rax
	jmp get_end

concat:
	cmp byte [rcx], 0
	jz end
	mov dh, byte [rcx]
	mov byte [rax], dh
	inc rax
	inc rcx
	jmp concat

end:
	mov rax, rdi
	ret
