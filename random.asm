random:
    ;get time di variabel hasil
    mov dword[time],0
    mov dword[hasilRandom],0
    mov dword[nilaiModulo],0
    
    mov eax,13
    mov ebx,0
    int 80h
    mov dword[time],eax
    mov edx,0
    mov ebx,10
    div ebx
    mov dword[nilaiModulo],edx
    mov eax,dword[nilaiModulo]
    mov edx,0
    mov ebx,201
    mul ebx
    mov dword[hasilRandom],eax
 
ret