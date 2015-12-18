%include 'fi-template/includeFunc.asm'
extern printf
global  main

section .data
  a db 'abcddddddddddddd',0

section .bss
  nama resb 10
section .text
    global main
    
main:
  mov eax,3
  mov ebx,1
  mov ecx,nama
  mov edx,10
  int 80h
  
  mov eax,nama
  mov ebx,1
  call printStr

  ; exit
  mov eax, 1
  mov ebx, 0
  int 0x80



