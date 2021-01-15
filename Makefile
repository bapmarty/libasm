NAME	= libasm
LIB		= libasm.a

SRCS	=

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
	ar rcs $(LIB) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean:

re:


.PHONY: all clean fclean re
