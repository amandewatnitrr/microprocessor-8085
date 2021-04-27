MVI C,01 ; Place 01 in Register C
MVI B,01 ; Place odd number 1 in Register B
MVI A,25 ; Load Accumulator with give number
UP: SUB B ; Subtract odd number from Accumulator
JZ DOWN ; If Accumulator contents are zero, go ahead
INR C ; Increment register C
INR B ; Increment ODD number
INR B ; Increment ODD number
JMP UP ; Repeat Subtraction
DOWN: MOV A,C ; Move content of C to A
STA 2050H ; Store the result in specified memory location
HLT

/*Another Method*/
MVI A,25 ; Move the number whose square root you want to calculate to the accumulator
MVI C,01 ; Set C to 01
MVI E,00 ; Clear Register E
AGAIN: SUB C ; Subtract C from the Accumulator value
       JC OVER ; If Carry, PC jumps to OVER and after moving result from Register E to A, it's stored in specified location.
       INR E ; If not so, increment E
       INR C ; Increment value in Register C
       INR C ; Incerment value in  Register C
       JMP AGAIN ; JUMP to Again
OVER: MOV A,E
STA 3000H
HLT
