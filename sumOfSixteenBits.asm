TITLE "PROGRAM TO PRINT THE SUM OF TWO 16 BIT NUMBERS."
.MODEL SMALL
.STACK
.DATA
    VAL1 DW 2010
    VAL2 DW 2050
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, VAL1
    ADD AX, VAL2 ; AX Holds 16 bit value
    ; 16 Bit Answer Splitting Strategy
    ; 16 Bit Division is Carried Out
    ; 32 Bit Divident (DX:AX) and 16 Bit Divisor is Required
    
    XOR DX, DX ; Register DX is Cleared
    MOV CX, 100
    DIV CX ; DX:AX Divided by CX
           ; Remainder in DX and Quotient in AX
           
    AAM    ; Quotient is converted to Unpacked BCD
    ADD AX, 3030H ; Ready for display i.e. Converted to BCD
    MOV BX, AX ; Store the Quotient to BX
    
    XCHG AX, DX ; Exchange the Contents of AX and DX
    AAM ; Remainder is Converted to Unpacked BCD
    ADD AX, 3030H ; Remainder Converted to ASCII
    PUSH AX ; Remainder Pushed to Stack
    ;;;;;;;;Quotient Ready in BX and Remainder Ready in AX
    ;;;;;;;;Display Quotient First and then the Remainder
    
    ;;;;;;;;Display Operation Started
    MOV DL, BH
    MOV AH, 02H
    INT 21H
    MOV DL, BL
    MOV AH, 02H
    INT 21H
    POP AX
    MOV DL, AH
    MOV DH, AL
    MOV AH, 02H
    INT 21H
    MOV DL, DH
    MOV AH, 02H
    INT 21H
    ;;;;;;;;Display Operation End
    MOV AX, 4CH ; End Request AH = 4CH
    INT 21H ; DOS Interrupt Function
    MAIN ENDP
END MAIN