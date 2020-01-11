# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlaplana <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/11 17:49:42 by mlaplana          #+#    #+#              #
#    Updated: 2020/01/11 19:26:56 by mlaplana         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

all: $(NAME)

$(NAME):
	-@nasm -f macho64 ft_strcpy.s
	-@nasm -f macho64 ft_strlen.s
	-@nasm -f macho64 ft_strcmp.s
	-@nasm -f macho64 ft_write.s
	-@nasm -f macho64 ft_read.s
	-@ar rcs $(NAME) *.o

clean:
	-@rm ft_strcpy.o ft_strlen.o ft_strcmp.o ft_write.o ft_read.o

fclean: clean
	-@rm $(NAME)

re: fclean all

test: re
	-@gcc -fno-builtin main.c libasm.a -o test
	-@./test

.PHONY: all, clean, $(NAME), fclean, re, test
