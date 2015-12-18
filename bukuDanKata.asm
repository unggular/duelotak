bukuDanKata:

ambilBukuDanKata1:
    call random
    ;simpen data biar bisa diakses buat player selanjutnya
    mov eax,[hasilRandom]
    mov [soalNextPlayer1],eax
    
    mov eax,[nilaiModulo]
    mov [bandingNilai1],eax
    ;cetak soal
    mov eax,soalBukuDanKata
    add eax,dword[hasilRandom]
    mov ebx,1
    call printStrSoal

jawabBukuDanKata1:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKata1
    cmp byte[jawaban],62h
    je cekKunciBukuDanKata1
    cmp byte[jawaban],63h
    je cekKunciBukuDanKata1
    cmp byte[jawaban],64h
    je cekKunciBukuDanKata1

    call inputanSalah
    jmp jawabBukuDanKata1

cekKunciBukuDanKata1:
    ;ambil kunci
    call cekJawabanBukuDanKata1
    jne ambilBukuDanKata2
    call incrementNilai
    call jawabanBenar
    
ambilBukuDanKata2:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer2],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilBukuDanKata2
    
    ;kalo beda cetak soal
    mov [bandingNilai2],eax
    mov eax,soalBukuDanKata
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabBukuDanKata2:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKata2
    cmp byte[jawaban],62h
    je cekKunciBukuDanKata2
    cmp byte[jawaban],63h
    je cekKunciBukuDanKata2
    cmp byte[jawaban],64h
    je cekKunciBukuDanKata2

    call inputanSalah
    jmp jawabBukuDanKata2

cekKunciBukuDanKata2:
    ;ambil kunci
    call cekJawabanBukuDanKata2
    jne ambilBukuDanKata3
    call incrementNilai
    call jawabanBenar
    
ambilBukuDanKata3:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer3],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilBukuDanKata3
    cmp eax,[bandingNilai2]
    je ambilBukuDanKata3
    
    ;kalo beda cetak soal
    mov [bandingNilai3],eax
    mov eax,soalBukuDanKata
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal

    
jawabBukuDanKata3:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKata3
    cmp byte[jawaban],62h
    je cekKunciBukuDanKata3
    cmp byte[jawaban],63h
    je cekKunciBukuDanKata3
    cmp byte[jawaban],64h
    je cekKunciBukuDanKata3

    call inputanSalah
    jmp jawabBukuDanKata3

cekKunciBukuDanKata3:
    ;ambil kunci
    call cekJawabanBukuDanKata3
    jne exitBukuDanKata
    call incrementNilai
    call jawabanBenar

exitBukuDanKata:
ret