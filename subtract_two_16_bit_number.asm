LHLD 3000H ; Load HL pair with Address 3000H
XCHG ; Exchange HL Pair with DE Pair
LHLD 3002H ; Load HL pair with Address 3002H
MVI C,00H ; Clear C
MOV A,E ; Move Data in Register E to Accumulator. Register E contains the Lower operand of subtractend.
SUB L ; Subtract Lower Operand of Subtractor from Subtractend, i.e. A = A-L
STA 3004H ; Store there difference at specified memory location 3004H
MOV A,D ; Move the Higher Operand of Subtractend to Accumulator, i.e. from Register H to Accumulator
SBB H ; Subtract with Borrow H from Accumulator
STA 3005H ; Store there difference at specified memory location 3005H
HLT
