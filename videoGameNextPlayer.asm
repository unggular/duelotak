videoGameNextPlayer:

videoGameNextPlayer1:
    mov eax,soalVideoGame
    add eax,[soalNextPlayer1]
    mov ebx,1
    call printStrSoal
    
jawabVideoGameNextPlayer1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGameNextPlayer1
    cmp byte[jawaban],62h
    je cekKunciVideoGameNextPlayer1
    cmp byte[jawaban],63h
    je cekKunciVideoGameNextPlayer1
    cmp byte[jawaban],64h
    je cekKunciVideoGameNextPlayer1
    
    call inputanSalah
    jmp jawabVideoGameNextPlayer1
    
cekKunciVideoGameNextPlayer1:
    
    call cekJawabanVideoGame1
    jne videoGameNextPlayer2
    call incrementNilai
    call jawabanBenar

videoGameNextPlayer2:
    call clearScreen
    mov eax,soalVideoGame
    add eax,[soalNextPlayer2]
    mov ebx,1
    call printStrSoal
    
jawabVideoGameNextPlayer2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGameNextPlayer2
    cmp byte[jawaban],62h
    je cekKunciVideoGameNextPlayer2
    cmp byte[jawaban],63h
    je cekKunciVideoGameNextPlayer2
    cmp byte[jawaban],64h
    je cekKunciVideoGameNextPlayer2
    
    call inputanSalah
    jmp jawabVideoGameNextPlayer2
    
cekKunciVideoGameNextPlayer2:
    
    call cekJawabanVideoGame2
    jne videoGameNextPlayer3
    call incrementNilai
    call jawabanBenar
    
videoGameNextPlayer3:
    call clearScreen
    mov eax,soalVideoGame
    add eax,[soalNextPlayer3]
    mov ebx,1
    call printStrSoal
    
jawabVideoGameNextPlayer3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciVideoGameNextPlayer3
    cmp byte[jawaban],62h
    je cekKunciVideoGameNextPlayer3
    cmp byte[jawaban],63h
    je cekKunciVideoGameNextPlayer3
    cmp byte[jawaban],64h
    je cekKunciVideoGameNextPlayer3
    
    call inputanSalah
    jmp jawabVideoGameNextPlayer3
    
cekKunciVideoGameNextPlayer3:
    
    call cekJawabanVideoGame3
    jne exitVideoGameNextPlayer
    call incrementNilai
    call jawabanBenar
    
exitVideoGameNextPlayer:
ret