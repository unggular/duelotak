floraDanFauna:

floraDanFauna1:
    call random
    ;simpen data biar bisa diakses buat player selanjutnya
    mov eax,[hasilRandom]
    mov [soalNextPlayer1],eax
    
    mov eax,[nilaiModulo]
    mov [bandingNilai1],eax
    ;cetak soal
    mov eax,soalFloraDanFauna
    add eax,dword[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabFloraDanFauna1:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFauna1
    cmp byte[jawaban],62h
    je cekKunciFloraDanFauna1
    cmp byte[jawaban],63h
    je cekKunciFloraDanFauna1
    cmp byte[jawaban],64h
    je cekKunciFloraDanFauna1

    call inputanSalah
    jmp jawabFloraDanFauna1

cekKunciFloraDanFauna1:
    
    ;ambil kunci
    call cekJawabanFloraDanFauna1
    jne floraDanFauna2
    call incrementNilai
    call jawabanBenar
    
floraDanFauna2:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer2],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je floraDanFauna2
    
    ;kalo beda cetak soal
    mov [bandingNilai2],eax
    mov eax,soalFloraDanFauna
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal
    
jawabFloraDanFauna2:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFauna2
    cmp byte[jawaban],62h
    je cekKunciFloraDanFauna2
    cmp byte[jawaban],63h
    je cekKunciFloraDanFauna2
    cmp byte[jawaban],64h
    je cekKunciFloraDanFauna2

    call inputanSalah
    jmp jawabFloraDanFauna2

cekKunciFloraDanFauna2:
    
    ;ambil kunci
    call cekJawabanFloraDanFauna2
    jne floraDanFauna3
    call incrementNilai
    call jawabanBenar
    
floraDanFauna3:
    call clearScreen
    call random
    mov eax,[hasilRandom]
    mov [soalNextPlayer3],eax
    ;cek sama kayak soal sebelumnya gak?
    mov eax,[nilaiModulo]
    cmp eax,[bandingNilai1]
    je floraDanFauna3
    cmp eax,[bandingNilai2]
    je floraDanFauna3
    
    ;kalo beda cetak soal
    mov [bandingNilai3],eax
    mov eax,soalFloraDanFauna
    add eax,[hasilRandom]
    mov ebx,1
    call printStrSoal

jawabFloraDanFauna3:    
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFauna3
    cmp byte[jawaban],62h
    je cekKunciFloraDanFauna3
    cmp byte[jawaban],63h
    je cekKunciFloraDanFauna3
    cmp byte[jawaban],64h
    je cekKunciFloraDanFauna3

    call inputanSalah
    jmp jawabFloraDanFauna3

cekKunciFloraDanFauna3:
    
    ;ambil kunci
    call cekJawabanFloraDanFauna3
    jne exitFloraDanFauna
    call incrementNilai
    call jawabanBenar

exitFloraDanFauna:
ret