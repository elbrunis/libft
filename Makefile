# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: biniesta <biniesta@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/05 21:32:21 by biniesta          #+#    #+#              #
#    Updated: 2024/12/25 14:30:16 by biniesta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I

# Directorios
SRCS_DIR = .
LIBFT_DIR = libft
GNL_DIR = get_next_line
PRINTF_DIR = printf

# Archivos fuente
SRCS = $(wildcard $(LIBFT_DIR)/**/*.c) \
       $(wildcard $(GNL_DIR)/*.c) \
       $(wildcard $(PRINTF_DIR)/*.c)

# Archivos objetos
OBJS = $(SRCS:.c=.o)

# Nombre de la librería estática
NAME = libft.a

# Regla principal: generar la librería estática
all: $(NAME)

# Crear la librería estática
$(NAME): $(OBJS)
	ar rcs $@ $^

# Regla para compilar los archivos .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpiar los archivos objeto
clean:
	rm -f $(OBJS)

# Limpiar todo (archivos objeto y librería)
fclean: clean
	rm -f $(NAME)

# Regla para reconstruir todo
re: fclean all

.PHONY: all clean fclean re