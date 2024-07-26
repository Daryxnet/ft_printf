/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dagarmil <dagarmil@student.42barcelon      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/23 13:52:44 by dagarmil          #+#    #+#             */
/*   Updated: 2024/07/23 14:24:59 by dagarmil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	ft_formats(va_list args, const char format)
{
	int	size;

	size = 0;
	if (format == 'c')
		size = += ft_putchar_fd(va_arg(args, int), 1);
	return (size);
}

int	ft_printf(const char *str, ...)
{
	int	    i;
	int	    size;
	va_list	args;

	i = 0;
	size = 0;
	va_start(args, str);
	while (str[i])
	{
		if (str[i] == '%')
		{
			size += ft_formats(args, str[i + 1]);
			i++;
		}
		else
			size += ft_putchar_fd(str[i], 1);
		i++
	}
	va_end(args);
	return (size);
}
