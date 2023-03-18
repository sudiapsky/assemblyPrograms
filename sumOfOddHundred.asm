TITLE "SUM OF ODD NATURAL NUMBERS FROM 1 TO 100."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV CX, 100
    MOV AX, 0000
    TOP:    DEC CX
            ADD AX, CX
            DEC CX
            JNZ TOP
            
            MOV CX, 100
            XOR DX, DX
            DIV CX
            
            AAM
            ADD AX, 3030H
            PUSH DX
            
            MOV DL, AH
            MOV DH, AL
            MOV AH, 02H
            INT 21H
            
            XCHG DH, DL
            MOV AH, 02H
            INT 21H
            
            POP AX
            AAM
            ADD AX, 3030H
            MOV DL, AH
            MOV DH, AL
            MOV AH, 02H
            INT 21H
            
            XCHG DH, DL
            MOV AH, 02H
            INT 21H
            
            MOV AH, 4CH
            INT 21H
           MAIN ENDP
END MAIN