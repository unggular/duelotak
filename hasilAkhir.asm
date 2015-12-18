hasilAkhir:

    mov eax,selesai
    mov ebx,1
    call printStr
    
    mov eax,dword[nilaiPlayer1]
    mov ebx,dword[nilaiPlayer2]
    cmp eax,ebx
    jg p1win
    cmp eax,ebx
    je draw
    
    mov eax,win
    mov ebx,1
    call printStr
    mov eax,username2
    mov ebx,1
    call printStr
    jmp exitHasilAkhir
    
p1win:
    mov eax,win
    mov ebx,1
    call printStr
    mov eax,username1
    mov ebx,1
    call printStr
    jmp exitHasilAkhir


draw:
    mov eax,seri
    mov ebx,1
    call printStr
    
exitHasilAkhir:    
ret 