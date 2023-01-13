li x2, 11 # Input month
li x3, 14	# Input day

li x4, 1 	# i
li x9, 1 	# 1
li x8, 7 	# 7
li x6, 5 	# 5 (2022 starts with saturday)
# monday - 1; tuesday - 2; wednesway - 3; thursday - 4; friday - 5; saturday - 6; sunday - 7; 
# 31 28 31 30 31 30 31 31 30 31 30 31

# Registers with days, where each month sums up it's days
li x10, 31
li x11, 59
li x12, 90
li x13, 120
li x14, 151
li x15, 181
li x16, 212
li x17, 243
li x18, 273
li x19, 304
li x20, 334

comp:
	sub x5, x2, x4 # x5 = m - 1
	mv x22, x0
    beq x5, x0, end1 # m - 1 == 0 -> m = 1
    
    add x4, x4, x9 # i + 1 -> i = 2
	sub x5, x2, x4 # x5 = m - 2
	mv x22, x10
    beq x5, x0, end1 # m - 2 == 0 -> m = 2
    
    add x4, x4, x9 # i + 1 -> i = 3
	sub x5, x2, x4 # x5 = m - 3
	mv x22, x11
    beq x5, x0, end1 # m - 3 == 0 -> m = 3
    
    add x4, x4, x9 # i + 1 -> i = 4
	sub x5, x2, x4 # x5 = m - 4
	mv x22, x12
    beq x5, x0, end1 # m - 4 == 0 -> m = 4
    
    add x4, x4, x9 # i + 1 -> i = 5
	sub x5, x2, x4 # x5 = m - 5
	mv x22, x13
    beq x5, x0, end1 # m - 5 == 0 -> m = 5
    
    add x4, x4, x9 # i + 1 -> i = 6
	sub x5, x2, x4 # x5 = m - 6
	mv x22, x14
    beq x5, x0, end1 # m - 6 == 0 -> m = 6
    
    add x4, x4, x9 # i + 1 -> i = 7
	sub x5, x2, x4 # x5 = m - 7
	mv x22, x15
    beq x5, x0, end1 # m - 7 == 0 -> m = 7
    
    add x4, x4, x9 # i + 1 -> i = 8
	sub x5, x2, x4 # x5 = m - 8
	mv x22, x16
    beq x5, x0, end1 # m - 8 == 0 -> m = 8
    
    add x4, x4, x9 # i + 1 -> i = 9
	sub x5, x2, x4 # x5 = m - 9
	mv x22, x17
    beq x5, x0, end1 # m - 9 == 0 -> m = 9
    
    add x4, x4, x9 # i + 1 -> i = 10
	sub x5, x2, x4 # x5 = m - 10
	mv x22, x18
    beq x5, x0, end1 # m - 10 == 0 -> m = 10
    
    add x4, x4, x9 # i + 1 -> i = 11
	sub x5, x2, x4 # x5 = m - 11
	mv x22, x19
    beq x5, x0, end1 # m - 11 == 0 -> m = 11
    
    add x4, x4, x9 # i + 1 -> i = 12
	sub x5, x2, x4 # x5 = m - 12
	mv x22, x20
    beq x5, x0, end1 # m - 12 == 0 -> m = 12

end1:
	add x22, x22, x6
	add x22, x22, x3
	mv x23, x22
    j day_count

day_count:
	bgt x22, x8, end2
    j end3
    
end2:
    sub x22, x22, x8
    j day_count
	
end3:
	nop
