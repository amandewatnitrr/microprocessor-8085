MVI C,55H ; Move the 1st number to Register C
MVI A,05H ; Move the other number to the Accumulator
ANA C ; AND the Accumulator data with Data in Register C
STA 0030H ; Store the Result of AND from Accumulator to the mentioned memory location                           
MVI A,05H  ; Move the number to be computed Accumulator again               
ORA C ; OR it with the number in Register C
STA 0031H ; Store the result of OR of Accumulator and Register C in specified Memory location 0031                                 
MVI A,05H ; Move the number to be computed Accumulator again                          
XRA C ; XOR the value in Accumulator to the value in Register C
STA 0032H ; Store the XOR of Data in Accumulaotr and Data in Register C to specified memory location 0032
HLT
