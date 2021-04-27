LDA 7501H ; Load the Divisor from Memory Location 7501 to Accumulator
MOV B,A ; Take divisor in reg.B
LDA 7502H ; Take dividend in reg.A
MVI C,00  ; Quotient=00
CMP B  ; Compare A to B
JC down   ; Jump if carry
up:SUB B  ; Accumulator = Dividend-divisor
INR C   ; C=C+1
CMP B   ; Is dividend < divisor
JNC up  ; If not,go back
down:STA 7503H ; Store Remainder
MOV A,C   ; Move the Counte to the Accumulator
STA 7504H ;  Store Quotient at 7405
HLT ; Terminate
