; Fakhri Izzudin (G64130030)

; Fungsi untuk membandingkan 2 kata, kata harus diakhiri dengan null
; Argument: eax (alamat char pertama kata ke 2), ebx (alamat char pertama kata ke 2)
; Result: eax (1: sama, 0: beda)

%ifndef _cmpStrFunc
%define _cmpStrFunc

section .data

section .bss

section .text

cmpStr:

_cmpStrLoop:

	; bandingkan apakah kata pertama dan kata ke dua sama?
	mov dl, [ebx]
	cmp dl, [eax]
	jne _cmpStrBeda

	; bandingkan apakah sudah null?
	cmp byte [eax], 0
	je _cmpStrSama

	; tambahkan counter untuk ke huruf berikutnya
	add eax, 1
	add ebx, 1

	jmp _cmpStrLoop

_cmpStrSama:
	; rubah eax menjadi 1 karena sama
	mov eax, 1
	jmp _cmpStrExit

_cmpStrBeda:
	; rubah eax menjadi 0 karena beda
	mov eax, 0

_cmpStrExit:

	ret


%endif