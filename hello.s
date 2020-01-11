; nasm -f macho64 64.asm
; ld -macosx_version_min 10.7.0 -lSystem -o 64 64.o
; nasm -f macho64 hello.s -o hello.o && ld -macosx_version_min 10.7.0 -lSystem -o hello hello.o && ./hello     #tod en uno
global _hello

	section	.data
message: db	"Hello, World!", 10

	section	.text

_hello:
		mov rax, 0x02000004
		mov rdi, 1
		mov rsi, message
		mov rdx, 14
		syscall

		mov rax, 0x02000001
		mov rdi, 0
		syscall
