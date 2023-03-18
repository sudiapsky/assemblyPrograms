TITLE "PROGRAM TO DISPLAY CHARACTER WITH ATTRIBUTES."
.MODEL SMALL
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;;;;;;;;;;
    ;INT 10H Function 09H: Display Character
    ;AH = 09H
    ;AL = ASCII Character
    ;BH = Page number
    ;BL = Attribute of Pixel value
    ;CX = Count
    ;;;;;;;;;;
    
    MOV AH, 09H     ;Request Display
    MOV AL, 01H     ;Happy Face for display
    MOV BH, 00H     ;Page number 0
    MOV BL, 0C1H    ;Red Background, Blue foreground
    MOV CX, 79      ;No of repeated characters
    INT 10H         ;BIOS interrupt function
    
    MOV AX, 4C00H
    INT 21H
   MAIN ENDP
END MAIN