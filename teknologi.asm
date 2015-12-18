teknologi:

    ;akses matriks soal
ambilTeknologi1:
    call random
    ;simpen data biar bisa diakses buat player selanjutnya
    mov eax,[hasilRandom]
    mov [soalNextPlayer1],eax
    
    mov eax,[nilaiModulo]
    mov [bandingNilai1],eax
    ;cetak soal
    mov eax,soalTeknologi
    add eax,dword[hasilRandom]
    mov ebx,1
    call printStrSoal

jawabTeknologi1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologi1
    cmp byte[jawaban],62h
    je cekKunciTeknologi1
    cmp byte[jawaban],63h
    je cekKunciTeknologi1
    cmp byte[jawaban],64h
    je cekKunciTeknologi1
    
    call inputanSalah
    jmp jawabTeknologi1
    
cekKunciTeknologi1:
    ;ambil kunci
    call cekJawabanTeknologi1
    jne ambilTeknologi2
    call incrementNilai
    call jawabanBenar
    
ambilTeknologi2:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer2],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilTeknologi2
    
    ;kalo beda cetak soal
    mov [bandingNilai2],eax
    mov eax,soalTeknologi
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabTeknologi2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologi2
    cmp byte[jawaban],62h
    je cekKunciTeknologi2
    cmp byte[jawaban],63h
    je cekKunciTeknologi2
    cmp byte[jawaban],64h
    je cekKunciTeknologi2
    
    call inputanSalah
    jmp jawabTeknologi2
    
cekKunciTeknologi2:
    
    ;ambil kunci
    call cekJawabanTeknologi2
    jne ambilTeknologi3
    call incrementNilai
    call jawabanBenar
    
ambilTeknologi3:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer3],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilTeknologi3
    cmp eax,[bandingNilai2]
    je ambilTeknologi3
    
    ;kalo beda cetak soal
    mov [bandingNilai3],eax
    mov eax,soalTeknologi
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal

    
jawabTeknologi3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologi3
    cmp byte[jawaban],62h
    je cekKunciTeknologi3
    cmp byte[jawaban],63h
    je cekKunciTeknologi3
    cmp byte[jawaban],64h
    je cekKunciTeknologi3
    
    call inputanSalah
    jmp jawabTeknologi3
    
cekKunciTeknologi3:
    ;ambil kunci
    call cekJawabanTeknologi3
    jne exitTeknologi
    call incrementNilai
    call jawabanBenar

exitTeknologi:
ret
