#include <stdio.h>
#include "includes/libfts.h"

void	ft_bzero_test()
{
	int i;
	char data[6] = {5, 1, 99, 54, 78, 96};

	i = -1;
	ft_bzero(data, 0);
	while (++i < 6)
		printf("ft_bzero = %d\n", data[i]);
}

void	ft_strcat_test()
{
	char	*src = "World!";
	char	dest[20] = "Hello";
	char	*ret;

	ret = ft_strcat(dest, src);
	printf("ft_strcat = %s %s\n", dest, ret);
}


void	ft_isalpha_test(int c)
{
	int ret;

	ret = ft_isalpha(c);
	printf("ft_isalpha = %d\n", ret);
}

void	ft_isdigit_test(int c)
{
	int ret;

	ret = ft_isdigit(c);
	printf("ft_isdigit = %d\n", ret);
}

void	ft_isascii_test(int c)
{
	int ret;

	ret = ft_isascii(c);
	printf("ft_isascii = %d\n", ret);
}

void	ft_isprint_test(int c)
{
	int ret;

	ret = ft_isprint(c);
	printf("ft_isprint = %d\n", ret);
}

void	ft_toupper_test(int c)
{
	int ret;

	ret = ft_toupper(c);
	printf("ft_toupper = %c\n", ret);
}

void	ft_tolower_test(int c)
{
	int ret;

	ret = ft_tolower(c);
	printf("ft_tolower = %c\n", ret);
}

void	ft_strlen_test(char *str)
{
	printf("ft_strlen = %s %zu\n", str, ft_strlen(str));
}

void	ft_memset_test()
{
	char test[7] = {41, 42, 43, 44, 45, 46, 47};
	int i;
	char *ret;

	i = -1;
	ret = ft_memset(test, 'a', 7);
	while (++i < 7)
		printf("ft_memset = %c\n", ret[i]);
}

void	ft_memcpy_test()
{
	char *srcs = "Hello World";
	char dest[30];
	char *ret;
	int i;

	ret = ft_memcpy(dest, srcs, 6);
	i = -1;
	while (++i < 5)
		printf("ft_memcpy = %c %c\n", ret[i], dest[i]);
}

void	ft_strdup_test()
{
	char *test;
	int i;

	test = ft_strdup("HAHAHA");
	i = -1;
	while (++i < 7)
		printf("ft_strdup = %c\n", test[i]);
}

int	main()
{
	ft_bzero_test();
	ft_strcat_test();
	ft_isalpha_test('A' - 1);
	ft_isdigit_test('0');
	ft_isascii_test(5);
	ft_isprint_test(127);
	ft_toupper_test('g' - 1);
	ft_tolower_test('Z');
	printf("TEST = %d\n", ft_puts("Hello"));
	ft_puts(NULL);
	ft_strlen_test("Hello World");
	ft_memset_test();
	ft_memcpy_test();
	ft_strdup_test();
	return (0);
}
