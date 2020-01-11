;ft_strcpy

global	_ft_strcpy

	section .text
_ft_strcpy:
			mov rcx, -1
			mov rax, rdi
while:		inc rcx
			mov dl, byte [rsi + rcx]
			mov byte [rax + rcx], dl
			cmp byte [rsi + rcx], 0
			jne while
			ret
		
