TITLE "PROGRAM TO PRINT THE INPUT STRING IN REVERSE ORDER."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 0       ; initialise the count as 0
    
    READ_CHAR:
        MOV AH, 01H ; Put AH = 01h to read character from keyboard
        INT 21H     ; reads character and puts it in AL
        CMP AL, 0DH ; ODh is the ASCII code for Enter key
                    ; check if enter key is pressed
        JE END_OF_LINE ; If Enter pressed go to the END_OF_LINE
        PUSH AX        ; Push character into stack
        INC CX         ; Increment Counter CX
        JMP READ_CHAR  ; Unconditional jump to READ_CHAR
        
    END_OF_LINE:
        POP DX         ; Pop Character from stack to DX
        MOV AH, 02H    ; Code for Displaying character on VDU
        INT 21H        ; DOS interrupt function
        LOOP END_OF_LINE    ; Loop until CX = 0
        
        MOV AX, 4CH
        INT 21H
       MAIN ENDP
END MAIN