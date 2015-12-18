teknologiNextPlayer:

teknologiNextPlayer1:
    mov eax,soalTeknologi
    add eax,[soalNextPlayer1]
    mov ebx,1
    call printStrSoal
    
jawabTeknologiNextPlayer1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologiNextPlayer1
    cmp byte[jawaban],62h
    je cekKunciTeknologiNextPlayer1
    cmp byte[jawaban],63h
    je cekKunciTeknologiNextPlayer1
    cmp byte[jawaban],64h
    je cekKunciTeknologiNextPlayer1
    
    call inputanSalah
    jmp jawabTeknologiNextPlayer1
    
cekKunciTeknologiNextPlayer1:
    call cekJawabanTeknologi1
    jne teknologiNextPlayer2
    call incrementNilai
    call jawabanBenar

teknologiNextPlayer2:
    call clearScreen
    mov eax,soalTeknologi
    add eax,[soalNextPlayer2]
    mov ebx,1
    call printStrSoal
    
jawabTeknologiNextPlayer2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologiNextPlayer2
    cmp byte[jawaban],62h
    je cekKunciTeknologiNextPlayer2
    cmp byte[jawaban],63h
    je cekKunciTeknologiNextPlayer2
    cmp byte[jawaban],64h
    je cekKunciTeknologiNextPlayer2
    
    call inputanSalah
    jmp jawabTeknologiNextPlayer2
    
cekKunciTeknologiNextPlayer2:
    call cekJawabanTeknologi2
    jne teknologiNextPlayer3
    call incrementNilai
    call jawabanBenar
    
teknologiNextPlayer3:
    call clearScreen
    mov eax,soalTeknologi
    add eax,[soalNextPlayer3]
    mov ebx,1
    call printStrSoal
    
jawabTeknologiNextPlayer3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciTeknologiNextPlayer3
    cmp byte[jawaban],62h
    je cekKunciTeknologiNextPlayer3
    cmp byte[jawaban],63h
    je cekKunciTeknologiNextPlayer3
    cmp byte[jawaban],64h
    je cekKunciTeknologiNextPlayer3
    
    call inputanSalah
    jmp jawabTeknologiNextPlayer3
    
cekKunciTeknologiNextPlayer3:
    call cekJawabanTeknologi3
    jne exitTeknologiNextPlayer
    call incrementNilai
    call jawabanBenar
    
exitTeknologiNextPlayer:
ret