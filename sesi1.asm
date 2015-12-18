sesi1:
	;player 1 pilih kategori

	mov eax,p1Pilih
	mov ebx,1
	call printStr
	
	call inputSign
	mov eax, 3
	mov ebx, 1
	mov ecx, bacaSesi
	mov edx, 5
	int 80h
	call clearScreen
	
	mov al,byte[bacaSesi]
	mov byte[kategoriSesi1],al
	
	cmp byte[bacaSesi],31h
	je mulai1
	cmp byte[bacaSesi],32h
	je mulai2
	cmp byte[bacaSesi],33h
	je mulai3
	cmp byte[bacaSesi],34h
	je mulai4
	cmp byte[bacaSesi],35h
	je mulai5
	call inputanSalah
	call clearScreen
	call cetakKategori
	jmp sesi1
mulai1:
	call hapusKategori1
	; p1 main
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call kuliner
	call clearScreen
	
	;p2 main
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call kulinerNextPlayer
	jmp keluar

mulai2:
	call hapusKategori2
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call bukuDanKata
	call clearScreen
	
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call bukuDanKataNextPlayer
	jmp keluar

mulai3:
	call hapusKategori3
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call teknologi
	call clearScreen
	
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call teknologiNextPlayer
	jmp keluar
	
mulai4:
	call hapusKategori4
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call videoGame
	call clearScreen
	
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call videoGameNextPlayer
	jmp keluar

mulai5:
	call hapusKategori5
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call floraDanFauna
	call clearScreen
	
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call floraDanFaunaNextPlayer
	jmp keluar
	
keluar: 	
	ret
