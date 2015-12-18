cetakNilai:
    mov eax,skorSign1
    mov ebx,1
    call printStr
    ;nilai 1
    mov eax,skorPlayer1
    mov ebx,1
    call printStr
    
    mov eax,username1
    mov ebx,1
    call printStr

    push dword[nilaiPlayer1]
    push formatPrint
    call printf
    add esp,8
    
    ;nilai 2
    mov eax,skorPlayer2
    mov ebx,1
    call printStr
    
    mov eax,username2
    mov ebx,1
    call printStr

    push dword[nilaiPlayer2]
    push formatPrint
    call printf
    add esp,8
    
    mov eax,skorSign2
    mov ebx,1
    call printStr
ret