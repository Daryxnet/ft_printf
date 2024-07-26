# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dagarmil <dagarmil@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/07/18 20:06:41 by dagarmil          #+#    #+#              #
#    Updated: 2024/07/23 13:54:21 by dagarmil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = libftprintf.a
CFLAGS  = -Wall -Wextra -Werror
INCLUDES = incliudes/
LIBFT   = libft/
SRC_DIR = srcs/
CC      = cc
AR      = ar rcs
OBJS    = ft_printf.o

all: $(NAME)

$(NAME) : $(OBJS)
	make -C $(LIBFT)
	$(AR) $@ $(OBJS)

%.o : $(SRC_DIR)%.c $(INCLUDES) Makefile
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rf $(NAME)

fclean: clean
	rm -rf $(NAME)

re: fclean all
.PHONY: all clean fclean re

