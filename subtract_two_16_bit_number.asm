LHLD 6500 ; Load HL Pair with address 6500
XCHG ; Exchange DE and HL Pair
LHLD 6502	; Load H-L pair with address 6502
MVI C, 00 ; Set C 00H
MOV A, E ; Move data from Register E to Accumulator
SUB L ; A = A-L
STA 6054 ; Store the subtraction result of lower operand to memory location 6504 from Accumulator
MOV A, D ; Move value from Register D to Accumulator
SBB H ; Subtract with Borrow the Higher Bits
STA 6505 ;  Store the subtraction result of higher operand to memory location 6505 from Accumulator
HLT
