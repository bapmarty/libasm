NAME	= libasm
LIB		= libasm.a

SRCS	= ./ft_strlen.s \
		  ./ft_strcmp.s
			

NASM	= nasm
NFLAGS	= -f macho64

CC		= gcc
CFLAGS	= -Wall -Werror -Wextra

RM = rm -f


OBJ		= $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NFLAGS) $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(LIB) $(OBJ)

cc:
	@$(CC) $(CFLAGS) main.c $(LIB)

test: all cc
	@./a.out

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(LIB)
	$(RM) ./a.out

re: fclean all

.PHONY: all clean fclean re
