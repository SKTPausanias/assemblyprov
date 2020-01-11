;ft_strdup

global	_ft_strdup
extern	_malloc
extern	_ft_strlen

	section .text
_ft_strdup:
			cmp rdi, 0x0
			call _ft_strlen
			pop rdi
			inc	rax
			mov rdi, rax
			push rdi
			call _malloc
			pop rdi
			mov rdi, rax


		
