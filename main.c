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
	printf("TEST = %d\n", ft_puts(NULL));
	return (0);
}
