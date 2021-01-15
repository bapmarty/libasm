#include "libasm.h"

int		main() {
	printf("==========================================\n");
	printf("=============== ft_strlen ================\n");
	printf("==========================================\n");
	printf("[STRLEN] s = %zd\n", strlen("Hello world"));
	printf("[FT_STRLEN] s = %zd\n", ft_strlen("Hello world"));
	return (0);
}
