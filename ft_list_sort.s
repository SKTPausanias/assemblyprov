; void ft_list_sort(t_list **begin_list, int (*cmp)());

global	_ft_list_sort
extern	_ft_strcmp

_ft_list_sort:
			cmp rdi, 0x0
			je _end
			;cmp byte [rdi], 0
			;je _end
_while1:	cmp byte [rdi + 8], 0
			je	_end
			mov rcx, [rdi + 8]
_while2:	push rdi
			push rcx
			mov rdi, [rdi]
			mov rax, rsi
			mov rsi, [rcx] 
			call rax
			cmp rax, 0
			jg _swap
_continue	cmp byte [rcx + 8], 0
			jne _prewhile
			mov rdi, [rdi + 8]
			jmp _while1

_prewhile	mov rcx, [rcx + 8]
			jmp _while2

_swap:		mov bl, byte [rsi]
			mov dl, byte [rdi]
			pop rcx
			pop rdi
			mov [rdi], bl
			mov [rcx], dl
			jmp _continue 

_end:		ret
