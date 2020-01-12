#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define RED     "\x1b[31m"
#define GREEN   "\x1b[32m"
#define YELLOW  "\x1b[33m"
#define BLUE    "\x1b[34m"
#define MAGENTA "\x1b[35m"
#define CYAN    "\x1b[36m"

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

void hello();
int ft_strlen(char *s);
char *ft_strcpy(char *dst, char *src);
int	ft_strcmp(const char *s1,const char *s2);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
char *ft_strdup(const char *s1);
int		ft_list_size(t_list *lst);
void	ft_list_push_front(t_list **begin_lst, void *data);
void	ft_list_remove_if(t_list **begin_lst, void *data_ref, int (*cmp)(), void (*free_fct)(void *));
void	ft_list_sort(t_list **begin_list, int (*cmp)());

int main()
{
	printf("-- ft_strlen\n");
	printf("len ("") = %d\n", ft_strlen(""));
	printf("%d\n", ft_strlen("a"));
	printf("%d\n", ft_strlen("aa"));
	printf("%d\n", ft_strlen("licorne"));

	char dest[50];
	printf("-- ft_strcpy\n");
	printf("%s\n", ft_strcpy(dest, "licorne"));
	printf("%s\n", ft_strcpy(dest, "aaa"));
	printf("%s\n", ft_strcpy(dest, "aa"));
	printf("%s\n", ft_strcpy(dest, ""));

	printf("-- ft_strcmp\n");
	printf("%d\n", ft_strcmp("a", "b"));
	printf("%d\n", ft_strcmp("", "a"));
	printf("%d\n", ft_strcmp("aaaaa", "a"));
	printf("%d\n", ft_strcmp("a", "aaaaa"));

	printf("-- ft_write\n");
	printf("ret was %ld\n", ft_write(1, "licorne\n", 8));
	printf("ret was %ld\n", ft_write(1, "aaa\n", 4));

	/*
	printf("-- ft_read\n");
	int ret;
	ret = (int)ft_read(0, dest, 2);
	printf("ret is %d, read '%.*s'\n", ret, ret, dest);
	ret = (int)ft_read(0, dest, 8);
	printf("ret is %d, read '%.*s'\n", ret, ret, dest);
	*/
	printf("-- ft_strdup\n");
	printf("'%s'\n", ft_strdup("hello"));
	printf("'%s'\n", ft_strdup("unicorn"));
	printf("'%s'\n", ft_strdup(""));

	t_list *lst = NULL;
	printf("-- ft_list_push_front\n");
	ft_list_push_front(&lst, "licorne");
	ft_list_push_front(&lst, "aya");
	ft_list_push_front(&lst, "ooooo");
	ft_list_push_front(&lst, "popcorn");
	while (lst)
	{
		printf("element: '%s'\n", lst->data);
		t_list *tmp = lst;
		lst = lst->next;
		free(tmp);
	}

	printf("-- ft_list_size\n");
	printf("size = %d\n", ft_list_size(lst));
	ft_list_push_front(&lst, "aya");
	printf("size = %d\n", ft_list_size(lst));
	ft_list_push_front(&lst, "ooooo");
	printf("size = %d\n", ft_list_size(lst));
	ft_list_push_front(&lst, "ddd");
	printf("size = %d\n", ft_list_size(lst));
	ft_list_push_front(&lst, "ooddd");
	printf("size = %d\n", ft_list_size(lst));

	return (0);
}
