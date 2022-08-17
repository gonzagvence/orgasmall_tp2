;      min(a, b)
;          if a > b
;            return b
;          else
;            return a

inicio:

SET R7, 0xFF   ; set stack

SET R0,  0x12
SET R1,  0xF1

CALL |R7|, min ; min entre 0x12 y 0xF1

MOV R5, R4     ; guardo resultado en R5

SET R0,  0x99
SET R1,  0x02

CALL |R7|, min ; min entre 0x99 y 0x02

MOV R6, R4     ; guardo resultado en R6

halt:
JMP halt

min:
    ; COMPLETAR
	CMP R0, R1
	JN menor
	MOV R4, R0
	RET |R7|
menor: MOV R4, R1
     RET |R7|
     
