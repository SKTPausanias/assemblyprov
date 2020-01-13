; void ft_list_sort(t_list **begin_list, int (*cmp)());

global	_ft_list_sort
extern	_ft_strcmp

_ft_list_sort:
			cmp rdi, 0x0
			je _end
			cmp [rdi], 0x0
			je _end
			mov rcx, [rdi + 8]
_while1:	cmp [rdi + 8], 0
			je	_end
_while2:	mov rcx, [rcx + 8]
			cmp rcx, 0
			je	_end
			push rdi
			push rcx
			mov rdi, [rdi]
			mov rax, rsi
			mov rsi, [rcx] 
			call rax
			cmp rax, 0
			jg _swap
			pop rcx
			pop rdi 
			mov rdi, [rdi + 8]

_swap		mov rbx, 0
			mov rbx, rdi
			mov rdi, rsi
			mov rsi, rbx 

