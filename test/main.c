/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdumouli <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/15 14:28:00 by tdumouli          #+#    #+#             */
/*   Updated: 2019/12/06 18:00:54 by tdumouli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "libfts.h"
#include <ctype.h>
#include <string.h>

int main()
{

	char si[] = {"123467890-=!@#$%^&*()_+qertuiop[]]\\QWERTUIOP{}|asdfghjkl;'ASDFGJKL:\"zxcvbnm,./ZXCVNM<>?"};
	char *s;
	char *d;
	char *s2;
	char *d2;

	printf("putnbr --------------\n");
	ft_putnbr(-2147483648);
	ft_puts("\n-2147483648");

	ft_putnbr(2147483647);
	ft_puts("\n2147483647");

	ft_putnbr(-214742);
	ft_puts("\n-214742");
/*	for (int i = 0; i < 122; i++)
	{
		ft_putnbr(i);
		printf("=%d\n", i);
	}
*/
	printf("bzero --------------\n");
	s = malloc(10);
	s2 = malloc(10);
	ft_bzero(s, 10);
	bzero(s2, 10);
	s2[0] = s[0] = 'f';
	s2[1] = s[1] = 'f';
	s2[2] = s[2] = 'f';
	s2[3] = s[3] = 'f';
	ft_bzero(s, 3);
	ft_bzero(s2, 3);
	printf("ft_bzero  %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);
	printf("bzero     %d, %d, %d, %d, %d\n\n", s2[0], s2[1], s2[2], s2[3], s2[4]);

	printf("memset --------------\n");
	ft_memset(s, 'g', 2);
	memset(s2, 'g', 2);
	printf("ft_memset %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);
	printf("memset    %d, %d, %d, %d, %d\n\n", s2[0], s2[1], s2[2], s2[3], s2[4]);

	printf("strcat  --------------\n");
	s = malloc(10);
	d = malloc(10);
	s2 = malloc(10);
	d2 = malloc(10);
	s2[0] = s[0] = 'f';
	s2[1] = s[1] = 'f';
	s2[2] = s[2] = 'f';
	d2[0] = d[0] = 'g';
	d2[1] = d[1] = 'h';
	d2[2] = d[2] = 'i';
	d2[3] = d[3] = 'j';
	ft_strcat(s, d);
	strcat(s2, d);
	printf("ft_strcat %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);
	printf("strcat    %d, %d, %d, %d, %d\n", s[0], s[1], s[2], s[3], s[4]);
	printf("ft_strcat %s\n", s);
	printf("strcat    %s\n\n", s2);

	printf("memcpy  --------------\n");
	ft_memcpy(s, s + 3, 2);
	memcpy(s2, s2 + 3, 2);
	printf("ft_memcpy %s\n", s);
	printf("memcpy    %s\n\n", s2);

	printf("memcmp  --------------\n");
	printf("ft_memcmp %d\n", ft_memcmp(s, s2, 5));
	printf("memcmp    %d\n", memcmp(s, s2, 5));
	printf("ft_memcmp %d\n", ft_memcmp(s + 1, s2, 5));
	printf("memcmp    %d\n", memcmp(s + 1, s2, 5));
	printf("ft_memcmp %d\n", ft_memcmp(s + 2, s2, 5));
	printf("memcmp    %d\n", memcmp(s + 2, s2, 5));


	printf("strchr 	--------------\n");
	for (int i = 0; i < 127; i++)
		if (ft_strchr(si, i) != strchr(si, i))
			printf("fail strchr : %d  %c\n", i, i);
	printf("isalpha --------------\n");

	for (int i=1; i < 127; i++)
		if (ft_isalpha(i) != isalpha(i))
			printf("fail isalpha : nb -> %d, ft -> %d, = %d\n", i, ft_isalpha(i), isalpha(i));

	printf("isdigit --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_isdigit(i) != isdigit(i))
			printf("fail isdigit : nb -> %d, ft -> %d, = %d\n", i, ft_isdigit(i), isdigit(i));

	printf("isalnum --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_isalnum(i) != isalnum(i))
			printf("fail isalnum : nb -> %d, ft -> %d, = %d\n", i, ft_isalnum(i), isalnum(i));

	printf("isascii --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_isspace(i) != isspace(i))
			printf("fail isascii : nb -> %d, ft -> %d, = %d\n", i, ft_isalnum(i), isalnum(i));

	printf("isprint --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_isprint(i) != isprint(i))
			printf("fail isprint : nb -> %d, ft -> %d, = %d\n", i, ft_isprint(i), isprint(i));

	printf("tolower --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_tolower(i) != tolower(i))
			printf("fail tolower : nb -> %d, ft -> %d, = %d\n", i, ft_isprint(i), isprint(i));

	printf("toupper --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_toupper(i) != toupper(i))
			printf("fail toupper : nb -> %d, ft -> %d, = %d\n", i, ft_isprint(i), isprint(i));

	printf("isspace --------------\n");
	for (int i=1; i < 127; i++)
		if (ft_isspace(i) != isspace(i))
			printf("fail isspace : nb -> %d, ft -> %d, = %d\n", i, ft_isspace(i), isspace(i));

	printf("strlen  --------------\n");
	printf("ft_strlen %zu, %zu, %zu, %zu \n", ft_strlen(si), ft_strlen("fsdfsdga"), ft_strlen(s), ft_strlen(d));
	printf("strlen    %zu, %zu, %zu, %zu \n\n", strlen(si), strlen("fsdfsdga"), strlen(s), strlen(d));

	printf("strdup  --------------\n");
	d = ft_strdup("test strdup");
	d2 = strdup("test strdup");
	printf("ft_strdup %s\n", d);
	printf("strdup    %s\n", d2);

	printf("puts    --------------\n");
	puts(NULL);
	ft_puts(NULL);
	puts("fsd");
	ft_puts("fds");
	printf("cat     --------------\n");
	ft_cat(0);
//	ft_cat(open("test/main.c", O_RDONLY));
	//ft_cat(0);
}
