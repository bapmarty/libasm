NAME	= libasm
LIB		= libasm.a

SRCS	= ./ft_strlen.s	\
		  ./ft_strcmp.s	\
		  ./ft_strcpy.s	\
		  ./ft_strdup.s	\
		  ./ft_write.s
			
NASM	= nasm
NFLAGS	= -f macho64

CC		= gcc
CFLAGS	= -Wall -Werror -Wextra

ECHO	= echo
RM		= rm -f

C_RESET         = \033[0m
C_PENDING       = \033[0;36m
C_SUCCESS       = \033[0;32m

ES_ERASE        = "\033[A\033[K\033[A"
ERASE           = $(ECHO) $(ES_ERASE)

OBJ		= $(SRCS:.s=.o)

%.o : %.s
	@$(NASM) $(NFLAGS) $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(LIB) $(OBJ)

cc:
	@$(ECHO) "Compiling...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@$(CC) $(CFLAGS) main.c $(LIB)
	@$(ERASE)
	@$(ECHO) "Compiling...\t[$(C_SUCCESS) ✅ $(C_RESET)]"

test: fclean all cc
	@$(ECHO) "Execute...\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@./a.out | cat -e
	@$(ERASE)
	@$(ECHO) "Execute...\t[$(C_SUCCESS) ✅ $(C_RESET)]"

clean:
	@$(ECHO) "Deleting OBJS\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@$(RM) $(OBJ)
	@$(ERASE)
	@$(ECHO) "Deleting OBJS\t[$(C_SUCCESS) ✅ $(C_RESET)]"

fclean: clean
	@$(ECHO) "Deleting LIB\t[$(C_PENDING) ⌛︎ $(C_RESET)]"
	@$(RM) $(LIB)
	@$(RM) ./a.out
	@$(ERASE)
	@$(ECHO) "Deleting LIB\t[$(C_SUCCESS) ✅ $(C_RESET)]"

re: fclean all

.PHONY: all clean fclean re
