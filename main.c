#include "libasm.h"

void	check_ft_strlen() {
	printf("==========================================\n");
	printf("============== [ft_strlen] ===============\n");
	printf("==========================================\n\n");
	printf("[TEST 1]:\n");
	printf("[STRLEN] s = %zd\n", strlen("Hello world"));
	printf("[FT_STRLEN] s = %zd\n\n", ft_strlen("Hello world"));
	printf("[TEST 2]:\n");
	printf("[STRLEN] s = %zd\n", strlen("Hello I'm a french developper and student at 42"));
	printf("[FT_STRLEN] s = %zd\n\n", ft_strlen("Hello I'm a french developper and student at 42"));
	printf("[TEST 3]:\n");
	printf("[STRLEN] s = %zd\n", strlen(""));
	printf("[FT_STRLEN] s = %zd\n\n", ft_strlen(""));
}

void	check_ft_strcmp() {
	printf("==========================================\n");
	printf("============== [ft_strcmp] ===============\n");
	printf("==========================================\n\n");
	printf("[TEST 1]:\n");
	printf("[STRCMP] s = %d\n", strcmp("Hello world", "Hello word"));
	printf("[FT_STRCMP] s = %d\n\n", ft_strcmp("Hello world", "Hello word"));
	printf("[TEST 2]:\n");
	printf("[STRCMP] s = %d\n", strcmp("", "Hello world"));
	printf("[FT_STRCMP] s = %d\n\n", ft_strcmp("", "Hello world"));
	printf("[TEST 3]:\n");
	printf("[STRCMP] s = %d\n", strcmp("Hello world", "Hello world"));
	printf("[FT_STRCMP] s = %d\n\n", ft_strcmp("Hello world", "Hello world"));
}

void	check_ft_write() {
	printf("==========================================\n");
	printf("=============== [ft_write] ===============\n");
	printf("==========================================\n\n");
	printf("[TEST 1]:\n");
	printf("[WRITE] return: %zd\n", write(2, "Hello world\n", 12));
	printf("[FT_WRITE] return: %zd\n", ft_write(2, "Hello world\n", 12));
}

void	check_ft_strcpy() {

	char s1[] = "bonjour les amis";
	char s2[] = "World";
	char s1b[] = "Hello world";
	char s2b[] = "World";
	
	printf("==========================================\n");
	printf("============== [ft_strcpy] ===============\n");
	printf("==========================================\n\n");
	printf("[TEST 1]:\n");
	printf("%s\n", s1);
	printf("[STRCPY] s1: [%s], s2: [%s], return: %s\n", s1, s2, strcpy(s1, s2));
	printf("[FT_STRCPY] s1b: [%s], s2b: [%s], return: %s\n", s1b, s2b, ft_strcpy(s1b, s2b));
}

void	check_ft_read() {
	ssize_t		ret_read;
	int			fd;	
	char		buf[5000];

	printf("Bonjour\n");
	fd = open("./ft_read.s", O_RDONLY);
	printf("==========================================\n");
	printf("=============== [ft_read] ================\n");
	printf("==========================================\n\n");
	ret_read = ft_read(fd, buf, 42);
	buf[ret_read] = '\0';
	printf("|%s|\nreturn : [%zd]\n", buf, ret_read);
	close(fd);
	fd = open("./ft_read.s", O_RDONLY);
	ret_read = read(fd, buf, 42);
	buf[ret_read] = '\0';
	printf("|%s|\nreturn : [%zd]\n\n", buf, ret_read);
	close(fd);
}

int		main() {
	check_ft_write();
	check_ft_read();
	check_ft_strlen();
	check_ft_strcmp();
	check_ft_strcpy();

	//char s1[] = "bonjour les amis";
	//char s1b[] = "bonjour les amis";

//	printf("==========================================\n");
//	printf("============== [ft_strdup] ===============\n");
//	printf("==========================================\n");
//	printf("[TEST 1]:\n");
//	printf("[STRDUP] s1: [%s], return: %s\n", s1, strdup(s1));
	//printf("[FT_STRDUP] s1b: [%s], return: %s\n", s1b, ft_strdup(s1b));

	printf("\n==========================================\n\n");
	return (0);
}
