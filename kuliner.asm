kuliner:

    ;akses matriks soal
ambilKuliner1:
    call random
    ;simpen data biar bisa diakses buat player selanjutnya
    mov eax,[hasilRandom]
    mov [soalNextPlayer1],eax
    mov eax,[nilaiModulo]
    mov [bandingNilai1],eax
    ;cetak soal
    mov eax,soalKuliner
    add eax,dword[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabKuliner1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKuliner1
    cmp byte[jawaban],62h
    je cekKunciKuliner1
    cmp byte[jawaban],63h
    je cekKunciKuliner1
    cmp byte[jawaban],64h
    je cekKunciKuliner1
    
    call inputanSalah
    jmp jawabKuliner1
    
cekKunciKuliner1:
    ;ambil kunci
    call cekJawabanKuliner1
    jne ambilKuliner2
    call incrementNilai
    call jawabanBenar
    
ambilKuliner2:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer2],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilKuliner2
    
    ;kalo beda cetak soal
    mov [bandingNilai2],eax
    mov eax,soalKuliner
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabKuliner2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKuliner2
    cmp byte[jawaban],62h
    je cekKunciKuliner2
    cmp byte[jawaban],63h
    je cekKunciKuliner2
    cmp byte[jawaban],64h
    je cekKunciKuliner2
    
    call inputanSalah
    jmp jawabKuliner2
    
cekKunciKuliner2:
    
    ;ambil kunci
    call cekJawabanKuliner2
    jne ambilKuliner3
    call incrementNilai
    call jawabanBenar
    
ambilKuliner3:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer3],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je ambilKuliner3
    cmp eax,[bandingNilai2]
    je ambilKuliner3
    
    ;kalo beda cetak soal
    mov [bandingNilai3],eax
    mov eax,soalKuliner
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal

    
jawabKuliner3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKuliner3
    cmp byte[jawaban],62h
    je cekKunciKuliner3
    cmp byte[jawaban],63h
    je cekKunciKuliner3
    cmp byte[jawaban],64h
    je cekKunciKuliner3
    
    call inputanSalah
    jmp jawabKuliner3
    
cekKunciKuliner3:
    
    ;ambil kunci
    call cekJawabanKuliner3
    jne ex
    call incrementNilai
    call jawabanBenar

ex:
ret
