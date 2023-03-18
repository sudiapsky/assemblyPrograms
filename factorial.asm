TITLE "PROGRAM TO FIND FACTORIAL OF A GIVEN NUMBER"
.MODEL SMALL
.STACK
.DATA
    X DW 6
    Y DW 100
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 1
    MOV BX, X
    
    TOP: MUL BX
         DEC BX
         JNZ TOP
         
    DIV Y
    MOV CX, DX
    AAM
    ADD AX, 3030H
    
    MOV DL, AH
    MOV BL, AL
    MOV AH, 02H
    INT 21H
    
    MOV DL, BL
    MOV AH, 02H
    INT 21H
    
    MOV AX, CX
    MOV DL, AH
    MOV BL, AL
    MOV AH, 02H
    INT 21H
    
    MOV DL, BL
    MOV AH, 02H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN