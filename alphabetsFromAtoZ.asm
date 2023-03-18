TITLE "PROGRAM TO DISPLAY ALPHABETS FROM A TO Z. [A B C D ... Z]"
;-----------------------------------------------------------------
.MODEL SMALL
.STACK
.DATA
    VAL DB 'A'
.CODE
;-----------------------------------------------------------------
SPACE MACRO
    MOV DL, ' '
    MOV AH, 02H
    INT 21H
ENDM
;-----------------------------------------------------------------
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 26
    MOV DL, VAL
   TOP:MOV AH, 02H
       INT 21H
       INC DL
       PUSH DX
       ;----------------------INVOKED SPACE MACRO
       SPACE
       ;----------------------END OF SPACE MACRO
       POP DX
       DEC CX
       JZ LAST
       JMP TOP
    LAST:
       MOV AH, 4CH
       INT 21H
   MAIN ENDP
END MAIN