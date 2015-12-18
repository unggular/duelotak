menuhelp:
	call clearScreen
	mov eax, 4
	mov ebx, 1
	mov ecx, help
	mov edx, lenHelp
	int 80h
	
	mov eax,4
	mov ebx,1
	mov ecx, kembali
	mov edx, lenKembali
	int 80h

back:
	call inputSign
	mov eax, 3
	mov ebx, 1
	mov ecx, bacaKembali
	mov edx, 3
	int 80h
	cmp byte[bacaKembali], 79h
	jne back
	
	call clearScreen
ret
