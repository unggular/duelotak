incrementNilai:
    cmp dword[nowPlaying],1
    je p1Benar
    cmp dword[nowPlaying],2
    je p2Benar
    

p1Benar:
    inc dword[nilaiPlayer1]
    jmp keluarIncrement
p2Benar:
    inc dword[nilaiPlayer2]
    
keluarIncrement:
    ret