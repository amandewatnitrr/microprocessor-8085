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

/*Another Method*/
LXI H,0001H ; Extract both the 2 8-bit numbers from memory location 0001 and load to HL Pair
MOV A,M ; Move the first number to the Accumulator
INX H ;  increment the HL Pointer to point to the next memory location
CMP M ; Compare the value in Accumulator with the value at the location wehre currently HL Pointer points
JNC UP ; If no carry is generated, the Program counter jumps to UP and increments the HL Pointer to next location and stores the value in Accumulator over there, as it's the largest.
MOV A,M ; if Carry is generated, this mean the number pointed by HL Pointer is larger compared to that in Accumulator and hence we need to transfer it to Accumulator
UP: INX H ; Once the larger number is transfered to Accumulator, increment the HL Pointer to next memory location and store the largest number over there.
STA 0003H
HLT
