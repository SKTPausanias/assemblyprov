# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlaplana <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/11 17:49:42 by mlaplana          #+#    #+#              #
#    Updated: 2020/01/13 16:58:12 by mlaplana         ###   ########.fr        #
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
	-@nasm -f macho64 ft_strdup.s
	-@nasm -f macho64 ft_list_push_front.s	
	-@nasm -f macho64 ft_list_size.s
	-@ar rcs $(NAME) *.o

clean:
	-@rm ft_strcpy.o ft_strlen.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o ft_list_push_front.o ft_list_size.o

fclean: clean
	-@rm $(NAME)

re: fclean all

test: re all
	-@gcc -fno-builtin main.c libasm.a -o test
	-@./test

.PHONY: all, clean, $(NAME), fclean, re, test
