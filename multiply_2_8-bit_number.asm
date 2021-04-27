LHLD 6501 ; Load the Multiplicand in HL Pair from the specified memory Address
XCHG ; exchange the content of HL Pair with DE
LDA 6503H ; Load the other number stored in 6503H location to the Accumulator
LXI H,0000 ; Set initial product in HL Pair to 00
MVI C,08 ; Count=08 in Register C
up:DAD H ; Shift partial Product left by 1-bit
RAL ; Rotate Multiplier by 1-bit. is multiplier = 1 ?
JNC down ; If not, than we go ahead
DAD D ; Peroduct = Product + Multiplicand
down:DCR C ; Decrement Count
JNZ up ; Jump untill C=0
SHLD 6504 ; Store result in 6504
HLT ; END
