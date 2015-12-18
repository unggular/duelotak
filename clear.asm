clearScreen:
	mov eax, 4
	mov ebx, 1
	mov ecx, clearScr
	mov edx, lenClearScr
	int 80h
ret
