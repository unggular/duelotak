cetakKategori:
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori
	mov edx, lenKategori
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori1
	mov edx, lenKategori1
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori2
	mov edx, lenKategori2
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori3
	mov edx, lenKategori3
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori4
	mov edx, lenKategori4
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, kategori5
	mov edx, lenKategori5
	int 80h
ret
