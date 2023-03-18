TITLE "ASSEMBLY PROGRAM TO PRINT THE SUM OF TWO HEXADECIMAL NUMBERS."
.MODEL SMALL
.STACK 
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 3040H
    MOV BX, 1020H
    
    ADD AX, BX
    
    MOV CX, 100H
    DIV CX    
    
    PUSH DX
    
    MOV CL, 10H
    
    DIV CL
    
    MOV DL, AL
    MOV DH, AH
    ADD DX, 3030H
    MOV AH, 02H
    INT 21H
    
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    
    POP AX
    
    DIV CL
    MOV DL, AL
    MOV DH, AH
    ADD DX, 3030H
    MOV AH, 02H
    INT 21H 
    
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
   MAIN ENDP
END MAIN