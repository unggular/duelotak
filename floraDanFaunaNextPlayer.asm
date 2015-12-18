floraDanFaunaNextPlayer:

floraDanFaunaNextPlayer1:
    mov eax,soalFloraDanFauna
    add eax,[soalNextPlayer1]
    mov ebx,1
    call printStrSoal
    
jawabFloraDanFaunaNextPlayer1:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFaunaNextPlayer1
    cmp byte[jawaban],62h
    je cekKunciFloraDanFaunaNextPlayer1
    cmp byte[jawaban],63h
    je cekKunciFloraDanFaunaNextPlayer1
    cmp byte[jawaban],64h
    je cekKunciFloraDanFaunaNextPlayer1
    
    call inputanSalah
    jmp jawabFloraDanFaunaNextPlayer1
    
cekKunciFloraDanFaunaNextPlayer1:
    
    call cekJawabanFloraDanFauna1
    jne floraDanFaunaNextPlayer2
    call incrementNilai
    call jawabanBenar

floraDanFaunaNextPlayer2:
    call clearScreen
    mov eax,soalFloraDanFauna
    add eax,[soalNextPlayer2]
    mov ebx,1
    call printStrSoal
    
jawabFloraDanFaunaNextPlayer2:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFaunaNextPlayer2
    cmp byte[jawaban],62h
    je cekKunciFloraDanFaunaNextPlayer2
    cmp byte[jawaban],63h
    je cekKunciFloraDanFaunaNextPlayer2
    cmp byte[jawaban],64h
    je cekKunciFloraDanFaunaNextPlayer2
    
    call inputanSalah
    jmp jawabFloraDanFaunaNextPlayer2
    
cekKunciFloraDanFaunaNextPlayer2:
    
    call cekJawabanFloraDanFauna2
    jne floraDanFaunaNextPlayer3
    call incrementNilai
    call jawabanBenar
    
floraDanFaunaNextPlayer3:
    call clearScreen
    mov eax,soalFloraDanFauna
    add eax,[soalNextPlayer3]
    mov ebx,1
    call printStrSoal
    
jawabFloraDanFaunaNextPlayer3:
    ;jawaban?
    call inputSign
    mov eax,3
    mov ebx,1
    mov ecx,jawaban
    mov edx,2
    int 80h
    
    cmp byte[jawaban],61h
    je cekKunciFloraDanFaunaNextPlayer3
    cmp byte[jawaban],62h
    je cekKunciFloraDanFaunaNextPlayer3
    cmp byte[jawaban],63h
    je cekKunciFloraDanFaunaNextPlayer3
    cmp byte[jawaban],64h
    je cekKunciFloraDanFaunaNextPlayer3
    
    call inputanSalah
    jmp jawabFloraDanFaunaNextPlayer3
    
cekKunciFloraDanFaunaNextPlayer3:
    
    call cekJawabanFloraDanFauna3
    jne exitFloraDanFaunaNextPlayer
    call incrementNilai
    call jawabanBenar
    
exitFloraDanFaunaNextPlayer:
ret