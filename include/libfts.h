/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdumouli <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/15 19:47:03 by tdumouli          #+#    #+#             */
/*   Updated: 2019/07/24 17:02:53 by tdumouli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

void	ft_bzero(void *ptr, size_t len);
char	*ft_strcat(char *s, char *d);
int		ft_isalpha(int32_t c);
int		ft_isdigit(int32_t c);
int		ft_isalnum(int32_t c);
int		ft_isascii(int32_t c);
int		ft_isprint(int32_t c);
int		ft_isspace(int32_t c);
int		ft_toupper(int32_t c);
int		ft_tolower(int32_t c);
size_t	ft_strlen(char *s);
void	*ft_memset(void *b, int32_t c, size_t len);
int		ft_putchar(char c);
int		ft_putstr(char *s);
void	ft_putnbr(int32_t nb);
int		ft_puts(char *s);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int32_t fd);
char	*ft_strchr(const char *s, int32_t c);

#endif
