LHLD 6500H ; Load 1st 16 bit in HL Pair with address 6500
XCHG ; Exchange DE and HL Pair
LHLD 6502H	; Load 2nd 16 bit in HL Pair with address 6502
MOV A, E ; Move data from Register E to Accumulator
SUB L ; A = A-L
STA 6054H ; Store the subtraction result of lower operand to memory location 6504 from Accumulator
MOV L,A
MOV A, D ; Move value from Register D to Accumulator
SBB H ; Subtract with Borrow the Higher Bits
MOV H,A
SHLD 6505H ;  Store the subtraction result of higher operand to memory location 6505 from Accumulator
HLT
