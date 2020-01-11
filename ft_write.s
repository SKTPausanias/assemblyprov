;ft_write

global	_ft_write

	section .text
_ft_write:
			mov rbx, rdx
			mov	rax, 0x02000004
			syscall
			mov rax, rbx
			ret
