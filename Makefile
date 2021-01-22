NAME	= libasm
LIB		= libasm.a

SRCS	= ./ft_strlen.s	\
		  ./ft_strcmp.s	\
		  ./ft_strcpy.s	\
		  ./ft_write.s	\
			
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
	@echo "Compiling..."
	@$(CC) $(CFLAGS) main.c $(LIB)

test: fclean all cc
	@echo "Execute..."
	@./a.out | cat -e

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(LIB)
	$(RM) ./a.out

re: fclean all

.PHONY: all clean fclean re
