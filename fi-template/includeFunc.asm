

	; Fungsi untuk membuka file
	; Argument: eax (Alamat nama string)
	; Result: eax (Alamat file yg sudah di open); Fakhri Izzudin (G64130030)

; Fungsi untuk menginclude semua fungsi yang telah dibuat sebelumnya

%ifndef _includeFunc
%define _includeFunc

	; Fungsi untuk scan angka
	; Result: eax (int)
	;%include "fi-template/scanNum.asm"

	; Fungsi untuk cetak angka
	; Argument: eax (int)
	%include "fi-template/printNum.asm"

	; Fungsi untuk print character ke stdout atau stderr
	; Argument: al (char), ebx (stdout 1 atau stderr 2)
	;%include "fi-template/printChar.asm"


	; Fungsi untuk membaca kata
	; Result: eax (alamat character pertama), ebx (int atau panjang kata)
	;%include "fi-template/scanStr.asm"

	; Fungsi untuk print string ke stdout atau stderr, kata harus diakhiri dengan null
	; Argument: eax (alamat char pertama), ebx (stdout 1 atau stderr 2)
	%include "fi-template/printStr.asm"

	; Fungsi untuk membandingkan 2 kata, kata harus diakhiri dengan null
	; Argument: eax (alamat char pertama kata ke 2), ebx (alamat char pertama kata ke 2)
	; Result: eax (1: sama, 0: beda)
	%include "fi-template/cmpStr.asm"

	; Fungsi untuk copy dari kata1 (dari eax) ke kata2 (dari ebx) --> ebx = eax, harus diakhiri null
	; Argument: eax (alamat character pertama yang akan dicopy), ebx (alamat character pertama hasil)
	%include "fi-template/cpyStr.asm"

	; Fungsi untuk clean hasil scan
	;%include "fi-template/scanClean.asm"

	; Fungsi untuk konversi string ke integer
	; Argument: eax (alamat string)
	; Result: eax (int)
	;%include "fi-template/strToNum.asm"


	; Fungsi untuk membuka file
	; Argument: eax (Alamat string nama file)
	; Result: eax (Alamat file)
	;%include "fi-template/createFile.asm"

	; Fungsi untuk membuka file
	; Argument: eax (Alamat nama string)
	; Result: eax (Alamat file yg sudah di open)
	;%include "fi-template/openFile.asm"

	; Fungsi untuk membuka file
	; Argument: eax (Alamat file)
	%include "fi-template/closeFile.asm"


%endif