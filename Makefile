# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gdannay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/02 14:48:44 by gdannay           #+#    #+#              #
#    Updated: 2018/04/03 17:25:20 by gdannay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libfts.a

SRCS	=	srcs/ft_bzero.s		\
			srcs/ft_strcat.s	\
			srcs/ft_isalpha.s	\
			srcs/ft_isdigit.s	\
			srcs/ft_isprint.s	\
			srcs/ft_isascii.s	\
			srcs/ft_toupper.s	\
			srcs/ft_tolower.s	\
			srcs/ft_puts.s		\
			srcs/ft_strlen.s	\
			srcs/ft_memset.s	\
			srcs/ft_memcpy.s	\
			srcs/ft_strdup.s

OBJS	=	$(SRCS:.s=.o)

CC		=	nasm

CFLAGS	=	-f macho64

all		:	$(NAME)

$(NAME)	:	$(OBJS)
			ar rc $(NAME) $(OBJS)
			ranlib $(NAME)

%.o		:	%.s
			$(CC) $(CFLAGS) $< -o $@

clean	:
			rm -rf $(OBJS)

fclean	:	clean
			rm -rf $(NAME)

re		:	fclean all
