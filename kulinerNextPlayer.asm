kulinerNextPlayer:

kulinerNextPlayer1:
    mov eax,soalKuliner
    add eax,[soalNextPlayer1]
    mov ebx,1
    call printStrSoal
    
jawabKulinerNextPlayer1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKulinerNextPlayer1
    cmp byte[jawaban],62h
    je cekKunciKulinerNextPlayer1
    cmp byte[jawaban],63h
    je cekKunciKulinerNextPlayer1
    cmp byte[jawaban],64h
    je cekKunciKulinerNextPlayer1
    
    call inputanSalah
    jmp jawabKulinerNextPlayer1
    
cekKunciKulinerNextPlayer1:
    ;ambil kunci
    call cekJawabanKuliner1
    jne kulinerNextPlayer2
    call incrementNilai
    call jawabanBenar

kulinerNextPlayer2:
    call clearScreen
    mov eax,soalKuliner
    add eax,[soalNextPlayer2]
    mov ebx,1
    call printStrSoal
    
jawabKulinerNextPlayer2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKulinerNextPlayer2
    cmp byte[jawaban],62h
    je cekKunciKulinerNextPlayer2
    cmp byte[jawaban],63h
    je cekKunciKulinerNextPlayer2
    cmp byte[jawaban],64h
    je cekKunciKulinerNextPlayer2
    
    call inputanSalah
    jmp jawabKulinerNextPlayer2
    
cekKunciKulinerNextPlayer2:
    call cekJawabanKuliner2
    jne kulinerNextPlayer3
    call incrementNilai
    call jawabanBenar
    
kulinerNextPlayer3:
    call clearScreen
    mov eax,soalKuliner
    add eax,[soalNextPlayer3]
    mov ebx,1
    call printStrSoal
    
jawabKulinerNextPlayer3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciKulinerNextPlayer3
    cmp byte[jawaban],62h
    je cekKunciKulinerNextPlayer3
    cmp byte[jawaban],63h
    je cekKunciKulinerNextPlayer3
    cmp byte[jawaban],64h
    je cekKunciKulinerNextPlayer3
    
    call inputanSalah
    jmp jawabKulinerNextPlayer3
    
cekKunciKulinerNextPlayer3:
    call cekJawabanKuliner3
    jne exitKuliner
    call incrementNilai
    call jawabanBenar
    
exitKuliner:
ret