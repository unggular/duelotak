sesi2:
	;player 1 pilih kategori
	mov eax,p2Pilih
	mov ebx,1
	call printStr
	
	mov word[bacaSesi],0
	mov word[bacaSesi+2],0
	mov byte[bacaSesi+4],0
	
	call inputSign
	mov eax, 3
	mov ebx, 1
	mov ecx, bacaSesi
	mov edx, 5
	int 80h
	call clearScreen
	mov al,byte[bacaSesi]
	mov byte[kategoriSesi2],al
	
	
	cmp al, byte[kategoriSesi1]
	je sesi2salah
	
	cmp byte[bacaSesi],31h
	je mulai2_1
	cmp byte[bacaSesi],32h
	je mulai2_2
	cmp byte[bacaSesi],33h
	je mulai2_3
	cmp byte[bacaSesi],34h
	je mulai2_4
	cmp byte[bacaSesi],35h
	je mulai2_5
sesi2salah:
	call inputanSalah
	call clearScreen
	call cetakKategori
	jmp sesi2
	
mulai2_1:
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
	jmp keluarSesi2

mulai2_2:
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
	jmp keluarSesi2

mulai2_3:
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
	jmp keluarSesi2
	
mulai2_4:
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
	jmp keluarSesi2

mulai2_5:
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
	jmp keluarSesi2
	
keluarSesi2: 	
	ret
