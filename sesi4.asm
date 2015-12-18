sesi4:
	;player 1 pilih kategori
	mov eax,p2Pilih
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
	cmp al,byte[kategoriSesi1]
	je sesi4Salah
	cmp al,byte[kategoriSesi2]
	je sesi4Salah
	cmp al,byte[kategoriSesi3]
	je sesi4Salah
	
	cmp byte[bacaSesi],31h
	je mulai4_1
	cmp byte[bacaSesi],32h
	je mulai4_2
	cmp byte[bacaSesi],33h
	je mulai4_3
	cmp byte[bacaSesi],34h
	je mulai4_4
	cmp byte[bacaSesi],35h
	je mulai4_5
sesi4Salah:
	call inputanSalah
	call clearScreen
	call cetakKategori
	jmp sesi4
	
mulai4_1:
	call hapusKategori1
	; p2 main
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call kuliner
	call clearScreen
	
	;p1 main
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call kulinerNextPlayer
	jmp keluarSesi4

mulai4_2:
	call hapusKategori2
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call bukuDanKata
	call clearScreen
	
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call bukuDanKataNextPlayer
	jmp keluarSesi4

mulai4_3:
	call hapusKategori3
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call teknologi
	call clearScreen
	
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call teknologiNextPlayer
	jmp keluarSesi4
	
mulai4_4:
	call hapusKategori4
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call videoGame
	call clearScreen
	
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call videoGameNextPlayer
	jmp keluarSesi4

mulai4_5:
	call hapusKategori5
	mov dword[nowPlaying],2
	mov eax,p2Main
	mov ebx,1
	call printStr
	call floraDanFauna
	call clearScreen
	
	mov dword[nowPlaying],1
	mov eax,p1Main
	mov ebx,1
	call printStr
	call floraDanFaunaNextPlayer
	jmp keluarSesi4
	
keluarSesi4: 	
	ret
