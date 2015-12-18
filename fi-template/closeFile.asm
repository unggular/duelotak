; Fakhri Izzudin (G64130030)

; Fungsi untuk membuka file
; Argument: eax (Alamat file)

%ifndef _closeFileFunc
%define _closeFileFunc


section .text

closeFile:

	mov ebx, eax
	mov eax, 6
	int 0x80

	ret

%endif