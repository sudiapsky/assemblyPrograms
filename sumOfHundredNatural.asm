TITLE "SUM OF NATURAL NUMBERS UPTO 100."
.MODEL SMALL
.STACK 64H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 100
    MOV AX, 0000
    
    TOP:    ADD AX, CX
            DEC CX
            JNZ TOP
            
    MOV CX, 100
    XOR DX, DX
    DIV CX
    
    PUSH DX   
    AAM
    ADD AX, 3030H
    
    MOV DL, AH
    MOV DH, AL
    MOV AH, 02H
    INT 21H
    
    XCHG DL, DH
    MOV AH, 02H
    INT 21H
    
    POP AX    
    AAM
    ADD AX, 3030H
    MOV DL, AH
    MOV DH, AL
    MOV AH, 02H
    INT 21H
    
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
   MAIN ENDP
END MAIN