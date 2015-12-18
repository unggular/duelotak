; Fakhri Izzudin (G64130030)

; Fungsi untuk copy dari kata1 (dari eax) ke kata2 (dari ebx) --> ebx = eax, harus diakhiri null
; Argument: eax (alamat character pertama yang akan dicopy), ebx (alamat character pertama hasil)

%ifndef _cpyStrFunc
%define _cpyStrFunc

section .data

section .bss

section .text

cpyStr:

_cpyStrLoop:

	; rubah character eax = ebx
	mov dl, [eax]
	mov byte [ebx], dl

	; periksa apakah sudah null?
	cmp byte [eax], 0
	je _cpyStrExit

	; tambahkan counter
	add eax, 1
	add ebx, 1

	jmp _cpyStrLoop

_cpyStrExit:

	ret


%endif