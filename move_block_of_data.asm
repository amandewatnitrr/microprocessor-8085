LXI H,8050H ; Setup HL Pair as Pointer for Source memory
LXI D,8070H ; Setup DE Pair as Pointer for Source memory
MVI B,10H ; Setup B to Count 16 Bytes
LOOP:MOV A,M ; Get Data byte from Source
STAX D ; Store Data byte as destination
INX H ; point HL to Next Source Location
INX D ; point DE to next Destination
DCR B ; Decrement Count
JNZ LOOP ; If counter is not Zero, go back to Loop to transfer next byte
HLT
