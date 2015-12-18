hello:
	mov eax, 4
	mov ebx, 1
	mov ecx, selamat
	mov edx, lenSelamat
	int 80h
	
	call inputSign
	mov eax, 3
	mov ebx, 1
	mov ecx, bacaHello
	mov edx, 3
	int 80h

	cmp byte[bacaHello],31h
	je list1
	cmp byte[bacaHello],32h
	je list2
	cmp byte[bacaHello],33h
	je list3	
	cmp byte[bacaHello],34h
	je exit
	call inputanSalah
	call startGame

list1:
	ret

list2:
	call menuhelp
	;call clearScreen
	jmp hello

list3:
	call about
    ;call clearScreen
	jmp hello


	
