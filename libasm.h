#ifndef LIBASM
# define LIBASM

#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

ssize_t		ft_strlen(const char *s);
ssize_t		ft_write(int fildes, const char *buf, size_t nbyte);

int			ft_strcmp(const char *s1, const char *s2);

#endif
