TITLE "PROGRAM TO SET THE CURSOR IN DESIRED LOCATION."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;;;;;;;;;;;;;;
    ;INT 10H Function 02H; Set Cursor Position
    ;AH = Request Cursor with AH = 02H
    ;BH = Page Number [Default 00H]
    ;DH = Row
    ;DL = Column
    ;;;;;;;;;;;;;;
    
    MOV AH, 02H     ;Request Set cursor
    MOV BH, 00      ;Page Number to 0
    MOV DH, 08      ;Row 8
    MOV DL, 50      ;Column 50
    INT 10H         ;Bios Interrupt function
    
    MOV DL, 'C'     ;Character to be Displayed in DL
    MOV AH, 02H     ;Character mode
    INT 21H         ;DOS Interrupt function
    
    MOV AH, 4CH
    INT 21H
   MAIN ENDP
END MAIN