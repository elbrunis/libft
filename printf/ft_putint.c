/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putint.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: biniesta <biniesta@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/28 19:18:58 by biniesta          #+#    #+#             */
/*   Updated: 2024/11/01 18:54:53 by biniesta         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putint(int num)
{
	char	*str;
	int		i;
	int		count;

	i = 0;
	count = 0;
	str = ft_itoa(num);
	if (!str)
		return (0);
	while (str[i])
	{
		ft_putchar_fd (str[i], 1);
		i++;
		count++;
	}
	free(str);
	return (count);
}
