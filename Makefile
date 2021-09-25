# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qfeuilla <qfeuilla@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/07 11:56:45 by qufeuill          #+#    #+#              #
#    Updated: 2019/10/23 11:48:53 by qfeuilla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
BN = .bonus
CFLAGS = -Wall -Werror -Wextra
INCLUDES = -I libft.h
FILES = ft_atoi.c \
	    ft_calloc.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_memccpy.c \
		ft_memcmp.c \
		ft_memmove.c \
		ft_strchr.c \
		ft_strlcat.c \
		ft_strlen.c \
		ft_strnstr.c \
		ft_tolower.c \
		ft_bzero.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_memchr.c \
		ft_memcpy.c \
		ft_memset.c \
		ft_strdup.c \
		ft_strlcpy.c \
		ft_strncmp.c \
		ft_strrchr.c \
		ft_toupper.c \
		ft_itoa.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_strjoin.c \
		ft_strmapi.c \
		ft_strtrim.c \
		ft_substr.c
BONUSFILES = ft_lstadd_back.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c \
			ft_lstsize.c \
			ft_lstadd_front.c \
			ft_lstdelone.c \
			ft_lstlast.c \
			ft_lstnew.c
OBJ = $(FILES:.c=.o)
BONUSOBJ = $(BONUSFILES:.c=.o)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

all: $(NAME)

clean:
	rm -f $(OBJ) $(BONUSOBJ)

fclean: clean
	rm -f $(NAME) $(BN)

re: fclean all

bonus: $(BN)

$(BN): $(BONUSOBJ) $(OBJ)
	ar rcs $(NAME) $(OBJ) $(BONUSOBJ)
	touch $(BN)

.PHONY: clean fclean bonus re