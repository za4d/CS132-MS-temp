n: DC.b #10 	| set number of integers to add
sum: DS.b 1	| Define Variable/Address for sum

MOVE.b #0, D0	| D0 reg us to store SUM
MOVE.b #0, D1	| D1 stores COUNTER


iter:INC.b D1	| Increment counter
MOVE.b n, D2	| D2 stores N for testing
ADD.b D1, D0	| Add counter to sum
SUB.b D1, D2	| N = N - counter 


BEQ end

JMP iter

end:MOVE.b #0, D1
