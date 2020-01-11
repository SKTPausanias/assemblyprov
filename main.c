#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void hello();
int ft_strlen(char *s);
char *ft_strcpy(char *dst, char *src);
int	ft_strcmp(const char *s1,const char *s2);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);

int main()
{
	/*char *cad = "cadena";
	printf("%d\n", ft_strlen(cad));
	//printf("%d\n", strlen(cad));
	char *cadena = malloc(10);
	//printf("%s\n",ft_strcpy(cadena, "cadenalmaolol"));
	cadena = ft_strcpy(cadena, "cadenita");
	//cadena = strcpy(cadena, "cadenita");
	printf("%s\n", cadena);*/
	printf("%d\n", ft_strcmp("hola", "what"));
	printf("%d\n", strcmp("hola", "what"));
	/*printf("%d\n", ft_write(1, "holaq", 20));
	write(1, "\n", 1);
	printf("%d\n", write(1, "holaq", 20));*/
	//char buf[100];
	//char buf2[100];
	//printf("%d\n", read(0, buf, 2));
	//printf("%d\n", ft_read(0, buf2, 2));
	//printf("%s\n", buf);
	//printf("%s\n", buf2);
	//hello();
	return (0);
}
