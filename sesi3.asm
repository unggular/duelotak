sesi3:
	;player 1 pilih kategori

	mov eax,p1Pilih
	mov ebx,1
	call printStr
	
	mov dword[bacaSesi],0
	call inputSign
	mov eax, 3
	mov ebx, 1
	mov ecx, bacaSesi
	mov edx, 5
	int 80h
	call clearScreen
	mov al,byte[bacaSesi]
	mov byte[kategoriSesi3],al
	
	cmp al,byte[kategoriSesi1]
	je sesi3Salah
	cmp al,byte[kategoriSesi2]
	je sesi3Salah
	
	
	cmp byte[bacaSesi],31h
	je mulai3_1
	cmp byte[bacaSesi],32h
	je mulai3_2
	cmp byte[bacaSesi],33h
	je mulai3_3
	cmp byte[bacaSesi],34h
	je mulai3_4
	cmp byte[bacaSesi],35h
	je mulai3_5
sesi3Salah:
	call inputanSalah
	call clearScreen
	call cetakKategori
	jmp sesi3
mulai3_1:
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
	jmp exitSesi3

mulai3_2:
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
	jmp exitSesi3

mulai3_3:
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
	jmp exitSesi3
	
mulai3_4:
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
	jmp exitSesi3

mulai3_5:
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
	jmp exitSesi3
	
exitSesi3: 	
	ret
