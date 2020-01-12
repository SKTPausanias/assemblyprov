; ft_list_size.s
	global _ft_list_size

section .text

_ft_list_size:
		mov rax, 0
while:	cmp rdi, 0
		je end
		mov rdi, [rdi + 8] ; rdi = rdi->next
		inc rax
		jmp while

end:
		ret
