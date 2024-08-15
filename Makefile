# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dagarmil <dagarmil@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/18 20:06:41 by dagarmil          #+#    #+#              #
#    Updated: 2024/08/01 12:35:58 by dagarmil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = libftprintf.a
CFLAGS  = -Wall -Wextra -Werror -I
INCLUDES = includes/
LIBFT   = libft/
SRC_DIR = srcs/
CC      = cc
AR      = ar rcs
OBJS    = ft_printf.o ft_printstr.o ft_printptr.o ft_printnbr.o\
		  ft_printunsigned.o ft_extr.o ft_printhex.o

all: $(NAME)

$(NAME) : $(OBJS)
	make -C $(LIBFT)
	cp libft/libft.a .
	mv libft.a $(NAME)
	$(AR) $@ $(OBJS)

%.o : $(SRC_DIR)%.c $(INCLUDES) Makefile
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -rf $(OBJS)
	make clean -C $(LIBFT)

fclean: clean
	rm -rf $(NAME)
	rm -rf $(LIBFT)/libft.a

re: fclean all
.PHONY: all clean fclean re

