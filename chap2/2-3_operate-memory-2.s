# la means load address. It like the & operator in c.
# But it will load the address into a register
# lw means load word. It will load the data in memory into a register
# sw means save word. It will save a word in specified address.
    .data
n:  .word 0x2
m:  .word 0x3
r:  .space 4

    .text
    .globl main
main:
    la		$t5, n		# 
    lw		$t0, 0($t5)		# 
    
    la		$t5, m		# 
    lw		$t1, 0($t5)		# 
    
    add		$t2, $t1, $t0		# $t2 = $t1 + $t0
    
    la		$t5, r		# 
    sw		$t2, 0($t5)		# 
    
    
    