;ft_strcmp

global	_ft_strcmp

	section .text
_ft_strcmp:
			mov rcx, -1
while:		inc rcx
			mov dl, byte [rdi + rcx]
			mov bl, byte [rsi + rcx]
			cmp dl, bl
			jg	ret1
			jl	ret2
			cmp	dl, 0
			jne while
			cmp bl, 0
			jne while
			mov rax, 0
			ret

ret1: 		mov rax, 1
			ret

ret2:		mov rax, -1
			ret
