The Subtraction here is of HexaDecimal numbers.

/*1st Way*/
MVI A,14H ; Transfers Hexadecimal Data 14H to Accumulator
MVI B,86H ; Transfers Hexadecimal Data 86H to register B
SUB B ; Subtract the data in Register B to Data in Accumulator
HLT ; End of Program

/*2nd Way*/
LXI H,7500H ; Get the number stored at Memory Address  7500H. This loads the data to Memory
MOV A,M ; Now move the number in Memory to Accumulator
INX H ; Increment H to point to next memory location, that contains the other number and now this number is transfered to the memory.
SUB M ; Now Subtract the value in Accumulator to the number in Memory or the number pointed by the pointer.
INX H ; Again increment the pointer to the next location here we will save our output
MOV M,A ; Move the result from the memory to the Accumulator
HLT ; End of program
