FILES = ft_atoi\
			ft_bzero\
			ft_calloc\
			ft_isalnum\
			ft_isalpha\
			ft_isascii\
			ft_isdigit\
			ft_isprint\
			ft_itoa\
			ft_memchr\
			ft_memcmp\
			ft_memcpy\
			ft_memmove\
			ft_memset\
			ft_putchar_fd\
			ft_putendl_fd\
			ft_putnbr_fd\
			ft_putstr_fd\
			ft_split\
			ft_strchr\
			ft_strdup\
			ft_striteri\
			ft_strjoin\
			ft_strlcat\
			ft_strlcpy\
			ft_strlen\
			ft_strmapi\
			ft_strncmp\
			ft_strnstr\
			ft_strrchr\
			ft_strtrim\
			ft_substr\
			ft_tolower\
			ft_toupper\
			ft_lstadd_back\
			ft_lstadd_front\
			ft_lstlast\
			ft_lstnew\
			ft_lstsize\
			ft_lstdelone\
			ft_lstclear\
			ft_free_ptr\
			get_next_line\
			ft_free_tab\

CFILES = $(FILES:%=%.c)
OFILES = $(FILES:%=%.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

all: $(NAME)

$(NAME): $(OFILES)
	@ar rcs $@ $(OFILES)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(OFILES)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re