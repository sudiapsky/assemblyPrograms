TITLE "PROGARM TO DEMONSTRATE SCREEN SCROLL DOWN."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;;;;;;;;;;;;;;;;;
    ;INT 10H Funtion 07H:Scroll down screen
    ;AH = Function 07H
    ;AL = Number of lines to scroll, or 00H for full screen
    ;BH = Attribute value(color, blinking)
    ;CX = Strating row: column
    ;DX = Ending row: column
    ;;;;;;;;;;;;;;;;;
    
    MOV AX, 0702H   ; AH = 07, AL = 00 for Full Screen
    MOV BH, 71H     ; White background(7), Bluw foreground(1)
    MOV CX, 0C19H   ; Upper left row: column
    MOV DX, 1236H   ; Lower right row: column
    INT 10H         ; BIOS Interrupt function
    
    MOV AX, 4C00H
    INT 21H
   MAIN ENDP
END MAIN