;ft_read

global	_ft_read

	section .text
_ft_read:	
			;mov rbx, rdx
			mov	rax, 0x02000003
			syscall
			;mov rax, rdx
			ret