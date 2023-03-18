TITLE "PROGRAM TO DETERMINE MULTIPLICATION TABLE OF A GIVEN NUMBER"
.MODEL SMALL
.STACK
.DATA
    VAL DB 7
.CODE
GODOWN MACRO
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
ENDM
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 0
    MOV CX, 10
    MOV BL, 1
    TOP:
        MOV AL, BL
        MUL VAL
        AAM
        
        ADD AX, 3030H
        MOV DL, AH
        MOV DH, AL
        MOV AH, 02H
        INT 21H
        MOV DL, DH
        MOV AH, 02H
        INT 21H
        
        GODOWN
        
        MOV AX, 0
        INC BL
        DEC CX
        JZ LAST
        JMP TOP
    LAST:
        MOV AX, 4C00H
        INT 21H
    MAIN ENDP
END MAIN