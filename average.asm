TITLE "PROGRAM TO COMPUTE AVERAGE OF 10 NUMBERS."
.MODEL SMALL
.STACK
.DATA 
    X DB 10, 5, 4, 3, 5, 10, 10, 3, 9, 1
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CL, 10
    MOV SI, 0
    MOV AL, 0
    
    TOP:    MOV DL, X[SI]
            ADD AL, DL
            
            INC SI
            DEC CL
            JNZ TOP
            
            XOR AH, AH
            
            MOV BL, 10
            DIV BL
            
            MOV DH, AH
            
            XOR AH, AH
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