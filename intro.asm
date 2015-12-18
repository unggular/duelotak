intro:
;input player 1
	mov eax,4
	mov ebx,1
	mov ecx, tanyaUsername1
	mov edx, lenUsername1
	int 80h
	
	;baca player1
	mov eax, 3
	mov ebx, 0
	mov ecx, username1
	mov edx, 10
	int 80h
	
	mov dword[username2],0
	mov dword[username2+4],0
	mov word[username2+8],0
	
	;input player 2
	mov eax,4
	mov ebx,1
	mov ecx, tanyaUsername2
	mov edx, lenUsername2
	int 80h
	

	
	;baca player 2
	mov eax, 3
	mov ebx, 0
	mov ecx, username2
	mov edx, 10
	int 80h
	
	;tulis player1
	mov eax, 4
	mov ebx, 1
	mov ecx, p1
	mov edx, lenp1
	int 80h
	mov eax, 4
	mov ebx, 1
	mov ecx, username1
	mov edx, 10
	int 80h
	
	;tulis player2
	mov eax, 4
	mov ebx, 1
	mov ecx, p2
	mov edx, lenp2
	int 80h
	mov eax, 4
	mov ebx, 1
	mov ecx, username2
	mov edx, 10
	int 80h
	
siap:
	;siap?
	mov eax, 4
	mov ebx, 1
	mov ecx,ready
	mov edx, lenReady
	int 80h
	
	;y/n?
	call inputSign
	mov eax, 3
	mov ebx, 0
	mov ecx, bacaReady
	mov edx, 3
	int 80h
	cmp byte[bacaReady], 79h
	je yes
	cmp byte[bacaReady], 59h
	je yes
	cmp byte[bacaReady], 4Eh
	je no
	cmp byte[bacaReady], 6Eh
	je no
	
beda:
	mov dword[bacaReady],0
	mov byte[bacaReady+4],0
	mov dword[username1],0
	mov dword[username1+4],0
	mov word[username1+8],0
	mov dword[username2],0
	mov dword[username2+4],0
	mov word[username2+8],0
	call inputanSalah
	jmp startGame

no:
	call clearScreen
	jmp siap

yes:
	mov eax, 4
	mov ebx, 1
	mov ecx, mulai
	mov edx, lenMulai
	int 80h
	call delayWarning

exitIntro:
ret
