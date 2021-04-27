LHLD 3000H ; Load a 16-bit number from specified memory 3000 into HL register pair
MOV A,L ; Move content of register L to accumulator
CMA ; Complement content of accumulator
MOV L,A ; Move content of accumulator to register L
MOV A,H ; Move content of register H to accumulator
CMA ; Complement content of accumulator
MOV H,A ; Move content of accumulator to register H
SHLD 3002H ; Store content of register pair in specified memory location 3002 (1’s complement)
INX H ; Increment content of register pair by 1
SHLD 3004H ; Store content of register pair in memory 3004
HLT
