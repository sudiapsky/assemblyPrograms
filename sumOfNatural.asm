TITLE "PROGRAM TO CALCULATE AND PRINT THE SUM OF NATURAL NUMBERS FROM 1 TO 10."
.MODEL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 10
    MOV AX, 00
    
    ADDER: ADD AX, CX
    DEC CX
    JNZ ADDER  
    
    AAM
    ADD AX, 3030H
    
    MOV DL, AL
    MOV DH, AH
    
    MOV AH, 02H
    INT 21H
    
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN