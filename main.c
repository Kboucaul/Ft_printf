#include "libft.h"
#include "printf.h"
#include <stdio.h>
int main(void)
{
	char *str = "Batman";
	ft_printf("La chaine Batman en hexa : ");
	while (*str)
	{
		ft_printf("%x", *str);
		str++;
		if (*str)
			ft_printf(" ");
	}
	return (0);
}
