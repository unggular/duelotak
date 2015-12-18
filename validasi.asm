
inputanSalah:
    mov eax,salahInputan
    mov ebx,1
    call printStr
    call delayWarning
ret

delayWarning:
    mov dword [tv_sec], 1
    mov dword [tv_usec], 5000000
    mov eax, 162
    mov ebx, timeval
    int 0x80
ret

jawabanBenar:
    call clearScreen
    mov eax,true
    mov ebx,1
    call printStr
    call delayWarning
ret

    
