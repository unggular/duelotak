hapusKategori1:
    mov dword[kategori1],0
    mov dword[kategori1+4],0
    mov dword[kategori1+8],0
ret

hapusKategori2:
    mov dword[kategori2],0
    mov dword[kategori2+4],0
    mov dword[kategori2+8],0
    mov dword[kategori2+12],0
    mov word[kategori2+16],0
ret

hapusKategori3:
    mov dword[kategori3],0
    mov dword[kategori3+4],0
    mov dword[kategori3+8],0
    mov word[kategori3+12],0
ret

hapusKategori4:
    mov dword[kategori4],0
    mov dword[kategori4+4],0
    mov dword[kategori4+8],0
    mov word[kategori4+12],0
    mov byte[kategori4+14],0
ret
hapusKategori5:
    mov dword[kategori5],0
    mov dword[kategori5+4],0
    mov dword[kategori5+8],0
    mov dword[kategori5+12],0
    mov dword[kategori5+16],0
ret
    