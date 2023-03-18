TITLE "PROGRAM TO CLEAR THE SCREEN WITH BIOS INTERRUPT FUNCTION."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 0600H   ; AH = 06, AL = 00 for full screen
    MOV BH, 71H     ; White background(7), Blue foreground(1)
    MOV CX, 0000H   ; Upper left row column
    MOV DX, 184FH    ; lower right row column
    INT 10H        ; Bios Interrupt function
    
    MOV AX, 4C00H
    INT 21H
   MAIN ENDP
END MAIN