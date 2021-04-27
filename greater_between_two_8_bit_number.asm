MVI A,55H ; Transfer the First number to be compared to Accumulator               
MVI B,33H ; Transfer the second number to Register B
MOV C,A ; Move the 1st number from the Accdumulator to Register C
CMP B ; Now we compare the two numbers
JNC LOOP ;  If no carry is generated means, the greatest number is the number stored in Register C and program counter directly skips to LOOP and stores the number in specified location
MOV A,B ; if Not so, this means the Number in Register B is largest, so we will move it to Accumulator
STA 0000 ;  Now we will store the largest number in memory location 0000                                                 
LOOP: MOV A,C ; Now, this will get executed, now the smaller number is transfered to Accumulator
      STA 0001 ; From the accumulator the smaller number is than stored at 0001 Memory location.                                        
      HLT
