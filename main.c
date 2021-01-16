#include "libasm.h"

void	check_ft_strlen() {
	printf("==========================================\n");
	printf("============== [ft_strlen] ===============\n");
	printf("==========================================\n");
	printf("[TEST 1]:\n");
	printf("[STRLEN] s = %zd\n", strlen("Hello world"));
	printf("[FT_STRLEN] s = %zd\n", ft_strlen("Hello world"));
	printf("------------------------------------------\n");
	printf("[TEST 2]:\n");
	printf("[STRLEN] s = %zd\n", strlen("Hello I'm a french developper and student at 42"));
	printf("[FT_STRLEN] s = %zd\n", ft_strlen("Hello I'm a french developper and student at 42"));
	printf("------------------------------------------\n");
	printf("[TEST 3]:\n");
	printf("[STRLEN] s = %zd\n", strlen(""));
	printf("[FT_STRLEN] s = %zd\n", ft_strlen(""));
}

void	check_ft_strcmp() {
	printf("==========================================\n");
	printf("============== [ft_strcmp] ===============\n");
	printf("==========================================\n");
	printf("[TEST 1]:\n");
	printf("[STRCMP] s = %d\n", strcmp("Hello world", "Hello word"));
	printf("[FT_STRCMP] s = %d\n", ft_strcmp("Hello world", "Hello word"));
}

void	check_ft_write() {
	printf("==========================================\n");
	printf("=============== [ft_write] ===============\n");
	printf("==========================================\n");
	printf("[TEST 1]:\n");
	write(1, "[WRITE] s = Hello world\n", 24);
	ft_write(1, "[FT_WRITE] s = Hello world\n", 27);
}
int		main() {
	check_ft_strlen();
	check_ft_strcmp();
	check_ft_write();
	return (0);
}
