LHLD 7601H ; Get the 1st number in HL Pair from memory 7601H
XCHG ; exchange content of DE and HL
LHLD 7603H ;  Get 2nd number in HL Pair from location 7603H
MVI C,00H ; Clear Carry Register
DAD D ; HL = HL + DE
JNC LOOP ; If no Carry move to loop, if carry then move to next step
INR C ; Increment Register C
LOOP: MOV A,C ; Move carry from Register C to Register A
STA 7605H ; Store Carry at 7502H
SHLD 7606H ; Store result in 7606H
HLT
