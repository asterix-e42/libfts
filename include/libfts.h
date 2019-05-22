#ifndef LIBFTS_H
# define LIBFTS_H

void    ft_bzero(void *, size_t len);
char    *ft_strcat(char *s, char *d);
int     ft_isalpha(int c);
int     ft_isdigit(int c);
int     ft_isalnum(int c);
int     ft_isascii(int c);
int     ft_isprint(int c);
int     ft_toupper(int c);
int     ft_tolower(int c);
size_t  ft_strlen(char *s);
void    *memset(void *b, int c, size_t len);
void    *ft_memset(void *b, int c, size_t len);
int     ft_putchar(char c);
int     ft_putstr(char *s);
int     ft_puts(char *s);
void    *ft_memcpy(void *dst, const void *src, size_t n);
char    *ft_strdup(const char *s1);
void    ft_cat(int fd);

#endif
