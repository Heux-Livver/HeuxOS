;----------------------------------------------
section .data
    key_buffer resb 1

section .text
    global _start

_start:
pusha
mov ah, 0x00
mov al, 0x03  ; text mode 80x25 16 colours
int 0x10
;----------------------------------------------
mov ah, 09h
mov cx, 1000h
mov al, 20h
mov bl, 30h ;30 - 80
int 10h

mov ah, 09h
mov cx, 80d
mov al, 20h
mov bl, 70h
int 10h
;-----------------------------------------------
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, 'H'
int 0x10
mov ah, 0x0e
mov al, 'e'
int 0x10
mov ah, 0x0e
mov al, 'u'
int 0x10
mov ah, 0x0e
mov al, 'x'
int 0x10
mov ah, 0x0e
mov al, 'O'
int 0x10
mov ah, 0x0e
mov al, 'S'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, '-'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, 'A'
int 0x10
mov ah, 0x0e
mov al, 'p'
int 0x10
mov ah, 0x0e
mov al, 'p'
int 0x10
mov ah, 0x0e
mov al, 'l'
int 0x10
mov ah, 0x0e
mov al, 'i'
int 0x10
mov ah, 0x0e
mov al, 'c'
int 0x10
mov ah, 0x0e
mov al, 'a'
int 0x10
mov ah, 0x0e
mov al, 't'
int 0x10
mov ah, 0x0e
mov al, 'i'
int 0x10
mov ah, 0x0e
mov al, 'o'
int 0x10
mov ah, 0x0e
mov al, 'n'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, 'L'
int 0x10
mov ah, 0x0e
mov al, 'a'
int 0x10
mov ah, 0x0e
mov al, 'u'
int 0x10
mov ah, 0x0e
mov al, 'n'
int 0x10
mov ah, 0x0e
mov al, 'c'
int 0x10
mov ah, 0x0e
mov al, 'h'
int 0x10
mov ah, 0x0e
mov al, 'e'
int 0x10
mov ah, 0x0e
mov al, 'r'
int 0x10
;-----------------------------------------------
new_line:
	mov ah, 0x0e ; Enter writing mode
	mov al, 13
	int 0x10
	mov al, 10
	int 0x10

second_line:
	mov ah, 0x0e
	mov al, 13
	int 0x10
	mov al, 10
	int 0x10


mov ah, 0x0e
mov al, 'A'
int 0x10
mov ah, 0x0e
mov al, 'p'
int 0x10
mov ah, 0x0e
mov al, 'p'
int 0x10
mov ah, 0x0e
mov al, 'l'
int 0x10
mov ah, 0x0e
mov al, 'i'
int 0x10
mov ah, 0x0e
mov al, 'c'
int 0x10
mov ah, 0x0e
mov al, 'a'
int 0x10
mov ah, 0x0e
mov al, 't'
int 0x10
mov ah, 0x0e
mov al, 'i'
int 0x10
mov ah, 0x0e
mov al, 'o'
int 0x10
mov ah, 0x0e
mov al, 'n'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10
mov ah, 0x0e
mov al, 'N'
int 0x10
mov ah, 0x0e
mov al, 'a'
int 0x10
mov ah, 0x0e
mov al, 'm'
int 0x10
mov ah, 0x0e
mov al, 'e'
int 0x10
mov ah, 0x0e
mov al, ':'
int 0x10

third_line:
	mov ah, 0x0e
	mov al, 13
	int 0x10
	mov al, 10
	int 0x10


;-----------------------------------------------


	input_loop:
        mov ah, 0
		int 0x16

        cmp al, 't'
        je text_editor

        jmp input_loop
	
	text_editor:
		pusha
		mov ah, 0x00
		mov al, 0x03  ; text mode 80x25 16 colours
		int 0x10
	
		mov ah, 09h
		mov cx, 1000h
		mov al, 20h
		mov bl, 70h ;30 - 80
		int 10h

		gettingInput:
			mov ah, 0x0
			int 16h

			mov ah, 0xE
			int 10h

			cmp al, 0x0D
			je _start

			jmp gettingInput