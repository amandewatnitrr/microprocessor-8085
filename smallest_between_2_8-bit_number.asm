MVI A,55H ; Move the 1st number to the Accumulator
MVI B,33H ; Move the other number to register B
MOV C,A ; Move the Number in Accumulator to register C
CMP B ; COMPARE A and B
JNC LOOP ; If No, carry the smallest Number will be the number in Register B, we will move it to Accumulator and store in a particular memory location and end the program.
MOV A,C ; If not so, than the number in Register is actually the smallest, so we will move it top accumulator
STA 0001H ; Than we will be able to store the smallest number in s-pecified memory location
HLT
LOOP: MOV A,B
STA 0001H
HLT
