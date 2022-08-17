;      sum(n,d)
;        a = 0
;        while n != 0
;          a = a + mem[d]
;          d = d + 1
;          n = n - 1
;        return a

inicio:

SET R7, 0xFF   ; set stack

SET R0,  5
SET R1,  datos

CALL |R7|, sum

halt:
JMP halt

datos:
DB 0x02
DB 0x03
DB 0x04
DB 0x05
DB 0x06

sum:
    ; COMPLETAR
 	CMP R0, 0
	JZ terminar
	PUSH |R7|, R0
	LOAD R0,[R1]
	ADD R4, R0
	POP |R7|, R0
	PUSH |R7|, R4
	SET R4, 0X01
	ADD R1, R4
	SUB R0, R4
	POP |R7|, R4
	JMP sum
   terminar RET |R7|

