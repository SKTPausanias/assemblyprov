#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void hello();
int ft_strlen(char *s);
char *ft_strcpy(char *dst, char *src);
int	ft_strcmp(char *s1, char *s2);

int main()
{
	char *cad = "cadena";
	printf("%d\n", ft_strlen(cad));
	//printf("%d\n", strlen(cad));
	char *cadena = malloc(10);
	//printf("%s\n",ft_strcpy(cadena, "cadenalmaolol"));
	cadena = ft_strcpy(cadena, "cadenita");
	//cadena = strcpy(cadena, "cadenita");
	printf("%s\n", cadena);
	printf("%d\n", ft_strcmp("zola", "zolas"));
	printf("%d\n", strcmp("zola", "zolas"));
	hello();
	return (0);
}
