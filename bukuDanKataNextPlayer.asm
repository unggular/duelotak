bukuDanKataNextPlayer:

bukuDanKataNextPlayer1:
    mov eax,soalBukuDanKata
    add eax,[soalNextPlayer1]
    mov ebx,1
    call printStrSoal
    
jawabBukuDanKataNextPlayer1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKataNextPlayer1
    cmp byte[jawaban],62h
    je cekKunciBukuDanKataNextPlayer1
    cmp byte[jawaban],63h
    je cekKunciBukuDanKataNextPlayer1
    cmp byte[jawaban],64h
    je cekKunciBukuDanKataNextPlayer1
    
    call inputanSalah
    jmp jawabBukuDanKataNextPlayer1
    
cekKunciBukuDanKataNextPlayer1:
    
    call cekJawabanBukuDanKata1
    jne bukuDanKataNextPlayer2
    call incrementNilai
    call jawabanBenar

bukuDanKataNextPlayer2:
    call clearScreen
    mov eax,soalBukuDanKata
    add eax,[soalNextPlayer2]
    mov ebx,1
    call printStrSoal
    
jawabBukuDanKataNextPlayer2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKataNextPlayer2
    cmp byte[jawaban],62h
    je cekKunciBukuDanKataNextPlayer2
    cmp byte[jawaban],63h
    je cekKunciBukuDanKataNextPlayer2
    cmp byte[jawaban],64h
    je cekKunciBukuDanKataNextPlayer2
    
    call inputanSalah
    jmp jawabBukuDanKataNextPlayer2
    
cekKunciBukuDanKataNextPlayer2:
    
    call cekJawabanBukuDanKata2
    jne bukuDanKataNextPlayer3
    call incrementNilai
    call jawabanBenar
    
bukuDanKataNextPlayer3:
    call clearScreen
    mov eax,soalBukuDanKata
    add eax,[soalNextPlayer3]
    mov ebx,1
    call printStrSoal
    
jawabBukuDanKataNextPlayer3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciBukuDanKataNextPlayer3
    cmp byte[jawaban],62h
    je cekKunciBukuDanKataNextPlayer3
    cmp byte[jawaban],63h
    je cekKunciBukuDanKataNextPlayer3
    cmp byte[jawaban],64h
    je cekKunciBukuDanKataNextPlayer3
    
    call inputanSalah
    jmp jawabBukuDanKataNextPlayer3
    
cekKunciBukuDanKataNextPlayer3:
    
    call cekJawabanBukuDanKata3
    jne exitBukuDanKataNextPlayer
    call incrementNilai
    call jawabanBenar
    
exitBukuDanKataNextPlayer:
ret