videoGame:

ambilVideoGame1:
    call random
    ;simpen data biar bisa diakses buat player selanjutnya
    mov eax,[hasilRandom]
    mov [soalNextPlayer1],eax
    
    mov eax,[nilaiModulo]
    mov [bandingNilai1],eax
    ;cetak soal
    mov eax,soalVideoGame
    add eax,dword[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabVideoGame1:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGame1
    cmp byte[jawaban],62h
    je cekKunciVideoGame1
    cmp byte[jawaban],63h
    je cekKunciVideoGame1
    cmp byte[jawaban],64h
    je cekKunciVideoGame1

    call inputanSalah
    jmp jawabVideoGame1

cekKunciVideoGame1:
    
    ;ambil kunci
    call cekJawabanVideoGame1
    jne ambilVideoGame2
    call incrementNilai
    call jawabanBenar
    
ambilVideoGame2:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer2],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilVideoGame2
    
    ;kalo beda cetak soal
    mov [bandingNilai2],eax
    mov eax,soalVideoGame
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabVideoGame2:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGame2
    cmp byte[jawaban],62h
    je cekKunciVideoGame2
    cmp byte[jawaban],63h
    je cekKunciVideoGame2
    cmp byte[jawaban],64h
    je cekKunciVideoGame2

    call inputanSalah
    jmp jawabVideoGame2

cekKunciVideoGame2:
    
    ;ambil kunci
    call cekJawabanVideoGame2
    jne ambilVideoGame3
    call incrementNilai
    call jawabanBenar
    
ambilVideoGame3:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer3],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilVideoGame3
    cmp eax,[bandingNilai2]
    je ambilVideoGame3
    
    ;kalo beda cetak soal
    mov [bandingNilai3],eax
    mov eax,soalVideoGame
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal

jawabVideoGame3:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGame3
    cmp byte[jawaban],62h
    je cekKunciVideoGame3
    cmp byte[jawaban],63h
    je cekKunciVideoGame3
    cmp byte[jawaban],64h
    je cekKunciVideoGame3

    call inputanSalah
    jmp jawabVideoGame3

cekKunciVideoGame3:
    
    ;ambil kunci
    call cekJawabanVideoGame3
    jne exitVideoGame
    call incrementNilai
    call jawabanBenar

exitVideoGame:
ret