# in this file. A new operation has appealed.
# we can see the second argument in lw sentence has been brackets around and has a number behind the left brackets.
# It means load n+4 to $t1
# And sw means opposite that store $t2 to n+8
# It shoule be noted that the offset number will be the multiple of 4
# because it take the address in memory which save a word in 32bit or

    .data
n:  .word 0x2,0x3,0x4

    .text
    .globl main
main:
    la		$t5, n		# 
    lw		$t0, 0($t5)		# 
    lw		$t1, 4($t5)		# 
    add		$t2, $t0, $t1		# $t2 = $t0 + $t1
    sw		$t2, 8($t5)		# 
    