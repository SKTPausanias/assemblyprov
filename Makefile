# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlaplana <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/11 17:49:42 by mlaplana          #+#    #+#              #
#    Updated: 2020/01/24 17:00:30 by mlaplana         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ASM 64bits, '.s' files, compile with nasm, Intel syntax
NAME	=	Libasm.a
SRCS	=	ft_strlen.s ft_strcpy.s	ft_strcmp.s	ft_write.s	\
			ft_read.s	ft_strdup.s
OBJS	=	$(SRCS:.s=.o)
BONUS_SRCS	=	ft_list_push_front.s	ft_list_size.s
BONUS_OBJS	=	$(BONUS_SRCS:.s=.o)
NASM_FLAGS	=	-fmacho64
%.o:	%.s
	@nasm $(NASM_FLAGS) $?

all:	$(NAME)

$(NAME):	$(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

test:	all
	@gcc main.c Libasm.a && ./a.out

test_bonus:	bonus
	@gcc main_bonus.c Libasm.a && ./a.out

clean:
	rm -rf $(OBJS) $(BONUS_OBJS)

fclean:	clean
	rm -rf $(NAME) $(BONUS)

re:	fclean all

re_bonus: fclean bonus

.PHONY:	clean fclean re bonus test_bonus
