%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
mov ebx, 31
mul ebx
add eax, -5
add eax, 10
call iprintLF
call quit
