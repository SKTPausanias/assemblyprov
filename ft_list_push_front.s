; _ft_list_push_front
	global _ft_list_push_front
	extern _malloc

	section .text

_ft_list_push_front:
	push rdi  ; rdi = t_list **begin_lst, rsi = void *data
	push rsi  ; pushear 2 arg aunque malloc solo use 1 por si acaso porque necessitamos los dos para nuestra func
	mov	rdi, 16 ; sizeof(t_list)
	call _malloc
	pop rsi
	pop rdi ; rax apunta a direccion de memoria con espacio reservado
	mov [rax], rsi ; rax->data = rsi mover lo que hay en registro rsi a espacio reservado
	mov rcx, [rdi] ; guardar direccion rdi en rcx
	mov [rax + 8], rcx ; rax->next = rdi asignar a ->next el comienzo de la lista [rdi]
	mov [rdi], rax ; cambiar el comienzo de la lista al nuevo elemento
	ret
