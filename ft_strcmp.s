;ft_strcmp

global	_ft_strcmp

	section .text
_ft_strcmp:
			mov rcx, -1
			mov rbx, 0
			mov rdx, 0
			mov rax, 0
while:		inc rcx
			mov dl, byte [rdi + rcx]
			mov bl, byte [rsi + rcx]
			cmp dl, bl
			jg	ret1
			jl	ret2
			cmp	dl, 0
			jne while
			ret

ret2:		sub rbx, rdx
			neg rbx
			mov rax, rbx
			ret

ret1:		sub rdx, rbx
			mov rax, rdx
			ret
