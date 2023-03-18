TITLE "PROGRAM TO PRINT THE SUM OF TWO 8 BIT NUMBERS."
.MODEL SMALL
.STACK
.DATA
    VAL1 DB 89
    VAL2 DB 10
    MSG DB 'SUM OF TWO NUMBERS:$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, 0
    MOV AL, VAL1
    ADD AL, VAL2
    
    AAM         ;AAM Converts Binary Value to Unpacked BCD.
    
    ADD AX, 3030H;AX is added with 3030H to obtain ASCII Value.
    
    PUSH AX
    
    ;;;;Display Message
    LEA DX, MSG
    MOV AH, 09H
    INT 21H
    ;;;;End Message
    
    POP AX
    
    MOV DL, AH
    MOV DH, AL
    MOV AH, 02H
    INT 21H
    
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    
    MOV AX, 4C00H
    INT 21H                 
    MAIN ENDP
END MAIN