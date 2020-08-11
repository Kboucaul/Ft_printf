# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kboucaul <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/27 16:26:54 by kboucaul          #+#    #+#              #
#    Updated: 2019/03/27 17:24:27 by kboucaul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =	./libft/ft_atoi.c 				\
		./libft/ft_bzero.c 				\
		./libft/ft_isalnum.c 			\
		./libft/ft_isalpha.c 			\
		./libft/ft_isdigit.c 			\
		./libft/ft_itoa.c 				\
		./libft/ft_itoa_base.c			\
		./libft/ft_unsitoa_base.c 		\
		./libft/ft_memalloc.c 			\
		./libft/ft_memccpy.c 			\
		./libft/ft_memchr.c 			\
		./libft/ft_memcmp.c 			\
		./libft/ft_memcpy.c 			\
		./libft/ft_memdel.c 			\
		./libft/ft_memmove.c 			\
		./libft/ft_memset.c 			\
		./libft/ft_putchar.c 			\
		./libft/ft_putnbr.c 			\
		./libft/ft_putstr.c 			\
		./libft/ft_strcat.c 			\
		./libft/ft_strchr.c 			\
		./libft/ft_strclr.c 			\
		./libft/ft_strcmp.c 			\
		./libft/ft_strcpy.c 			\
		./libft/ft_strdel.c 			\
		./libft/ft_strdup.c 			\
		./libft/ft_strequ.c 			\
		./libft/ft_striter.c 			\
		./libft/ft_striteri.c 			\
		./libft/ft_strjoin.c 			\
		./libft/ft_strlcat.c 			\
		./libft/ft_strlen.c 			\
		./libft/ft_strmap.c 			\
		./libft/ft_strmapi.c 			\
		./libft/ft_strncat.c 			\
		./libft/ft_strncmp.c 			\
		./libft/ft_strncpy.c 			\
		./libft/ft_strnequ.c 			\
		./libft/ft_strnew.c 			\
		./libft/ft_strnstr.c 			\
		./libft/ft_strrchr.c 			\
		./libft/ft_strsplit.c 			\
		./libft/ft_strstr.c 			\
		./libft/ft_strsub.c 			\
		./libft/ft_strtrim.c 			\
		./libft/ft_tolower.c 			\
		./libft/ft_toupper.c			\
		./src/ft_ftoa.c					\
		./src/get_char.c				\
		./src/get_str.c					\
		./src/manage_precision.c		\
		./src/get_deci.c				\
		./src/get_unsigned_int.c		\
		./src/get_float.c				\
		./src/manage_width.c			\
		./src/get_hexa.c				\
		./src/manage_zero.c				\
		./src/get_num.c					\
		./src/parser.c					\
		./src/get_octal.c				\
		./src/manage_hash.c				\
		./src/ft_printf.c				\
		./src/get_pointer.c				\
		./src/manage_plus_and_space.c

OBJS = $(SRCS:%.c=%.o)

INC = includes/

CC = gcc

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(INC) $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c
	$(CC) $(FLAGS) -o $@ -c $< -I$(INC)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all re fclean clean
