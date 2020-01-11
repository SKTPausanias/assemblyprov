#include <stdio.h>

void hello();
int ft_strlen(char *s);
char	*ft_strcpy(char *dst, char *src);

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
	hello();
	return (0);
}
