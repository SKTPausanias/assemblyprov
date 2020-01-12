;ft_strdup

global	_ft_strdup
extern	_malloc
extern	_ft_strlen
extern	_ft_strcpy

	section .text
_ft_strdup:
			cmp rdi, 0
			je _error
			call _ft_strlen
			inc	rax
			push rdi
			mov rdi, rax
			call _malloc
			cmp rax, 0
			je _error
			pop rdi
			mov rsi, rdi
			mov rdi, rax
			call _ft_strcpy
			ret

_error:
			mov rax, 0
			ret
		
