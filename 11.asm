a: DC.b #11	| Declare constant a
b: DS.b 1	| Declare varible b

MOVE.b a, D0
SUB.b #20, D0	| a - 20

BMI less	| a - 20 < 0? if so goto less

more: MOVE.b #100, D1
JMP end		| Jump to ddress with end: label

less: MOVE.b #10, D1

end: MOVE.b D1, b
