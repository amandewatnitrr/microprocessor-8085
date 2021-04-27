MVI A,22H ; Transfer the Number to be complemented to Accumulator
CMA ; CMA simply complement's the data in Accumulator and store's the 1s complement of number in itself
STA 3000H ; Store the 1s complement of number in specified memory location
ADI 01H ; Adding 01 to it gives 2s complement of number
STA 3001H ; Store the 2s complement of number in specified memory location
HLT
