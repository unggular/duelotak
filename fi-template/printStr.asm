; Fakhri Izzudin (G64130030)

; Fungsi untuk print string ke stdout atau stderr, kata harus diakhiri dengan null
; Argument: eax (alamat char pertama), ebx (stdout 1 atau stderr 2)

%ifndef _printStrFunc
%define _printStrFunc

section .data
	_printEbx dd 1
	jeda:
    	detik  dd 0
    	nanodetik dd 0
section .bss

section .text

printStrSoal:

	; Push register
	pushad

	; Reset pointer ecx dari parameter
	mov ecx, eax

	; Paksa print ke stdout
	mov ebx, [_printEbx]

_printStrSoalLoop:
	mov ebx,1
	; Periksa apakah sudah null?
	cmp byte [ecx], 0
	je _printStrExit
	
	; Cetak character
	mov eax, 4
	mov edx, 1
	int 0x80
	
	; Add counter
	add ecx, 1
	
	mov dword [detik], 0
    mov dword [nanodetik], 20000000
    mov eax, 162
    mov ebx, jeda
    int 0x80
	
	jmp _printStrSoalLoop
	
printStr:

	; Push register
	pushad

	; Reset pointer ecx dari parameter
	mov ecx, eax
	
	; Paksa print ke stdout
	mov ebx, [_printEbx]

_printStrLoop:
	mov ebx,1
	; Periksa apakah sudah null?
	cmp byte [ecx], 0
	je _printStrExit
	
	; Cetak character
	mov eax, 4
	mov edx, 1
	int 0x80
	
	; Add counter
	add ecx, 1
	jmp _printStrLoop

_printStrExit:

	; Pop register
	popad
	
	ret


%endif