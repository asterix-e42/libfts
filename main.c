#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "include/libfts.h"

int main()
{

	char *s;
	char *d;

	s = malloc(10);
	ft_bzero(s, 10);
	s[0] = 'f';
	s[1] = 'f';
	s[2] = 'f';
	s[3] = 'f';
	ft_bzero(s, 3);
	printf("bzero   %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);

	ft_memset(s, 'g', 2);
	printf("memset   %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);

	s = malloc(10);
	d = malloc(10);
	s[0] = 'f';
	s[1] = 'f';
	s[2] = 'f';
	d[0] = 'g';
	d[1] = 'h';
	d[2] = 'i';
	d[3] = 'j';
	ft_strcat(s, d);
	printf("strcat  %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);
	printf("strcat  %s\n", s);

	ft_memcpy(s, s + 3, 2);
	printf("memcpy  %s\n", s);

	printf("isalpha %d, %d, %d\n", ft_isalpha('1'), ft_isalpha(12), ft_isalpha('s'));


	printf("isdigit %d, %d, %d\n", ft_isdigit('1'), ft_isdigit(12), ft_isdigit('s'));

	printf("isalnum %d, %d, %d\n", ft_isalnum('1'), ft_isalnum(12), ft_isalnum('s'));

	printf("isascii %d, %d, %d\n", ft_isascii('1'), ft_isascii(12), ft_isascii('s'));

	printf("isprint %d, %d, %d\n", ft_isprint('1'), ft_isprint(12), ft_isprint('s'));

	printf("strlen  %zu, %zu %zu \n", ft_strlen("fsdfsdga"), ft_strlen(s), ft_strlen(d));

	d = ft_strdup("test strdup");
	printf("strdup %s\n", d);

	puts("fsd");
	ft_puts("fsdkjdfsnksdjfg");
	//ft_cat(open("./asdasd", O_RDONLY));
	ft_cat(0);
	//ft_cat(0);
}
