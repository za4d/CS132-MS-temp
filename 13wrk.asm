|sum: DS.b 1	 Define Variable/Address for sum
num: DS.b 10	| Allocate 10 bytes for numbers
MOVE.w #num, A0	| Stores array first element address in A0

MOVE.b #0, D0	| D0 reg us to store SUM
MOVE.b #-1, D1	| D1 stores COUNTER i
MOVE.b #0, D2	| D2 stores CHECK VALUE

istr:INC.b D1	| Increment counter
MOVE.b #10, D2	| resets CHK VAL
MOVE.b D1, (A0)	| Store i in location A0
INC.b A0	| Inc A0 no refrance next element in array
SUB.b D1, D2	| CHK - i > CHK

BNE istr
DEC.b A0

isum:ADD.b (A0), D0	| Add value at A0 to SUM
DEC.b A0		| Decrement array pointer
BEQ end			| Check if array ponter = 0
JMP isum



end: MOVE.b D0, 48
