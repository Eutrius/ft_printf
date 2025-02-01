# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jyriarte <jyriarte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/25 13:21:22 by jyriarte          #+#    #+#              #
#    Updated: 2024/12/29 15:41:31 by jyriarte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
AR = ar rcs
RM = rm -f
CFLAGS = -Wall -Werror -Wextra -Iinclude

SOURCES = src/ft_printf.c src/ft_printf_utils.c src/ft_putlchar.c src/ft_putlstr.c \
			src/ft_putlmem.c src/ft_putlint.c src/ft_putluint.c src/ft_putlhex.c \
			src/ft_putlnbr_base.c src/ft_print_format.c src/ft_print_format_utils.c \
			src/ft_nbrlen_base.c src/ft_putlnchar.c 

OBJECTS = $(SOURCES:.c=.o)


$(NAME): $(OBJECTS)
	$(AR) $@ $^

bonus: all

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@  

all: $(NAME)

clean:
	$(RM) $(OBJECTS) 

fclean:
	$(RM) $(OBJECTS) 
	$(RM) $(NAME) 

re: fclean all

.PHONY: all clean fclean re test

