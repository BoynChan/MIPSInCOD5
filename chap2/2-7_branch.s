# Translate C:
# if (i == j) f = g + h; else f = g - h;
# this is a if else structure
# the grammer is:
# (if)  bqe(branch equal)  registerA,registerB,branch
# which means if registerA equals registerB , it will jump to the address of branch
# (if not)  bne(branch not equal) registerA,registerB,branch
# which is opposite with bqe sentence
# and there has slt command
# slt(set on less than)  $t0, $t3, $t4  # $t0=1 if $s3 < $s4  else $t0 = 0
# slti  $t0, $t3, immidiate

# we can use beq, bnq, slt, slti to make all compare
    .data
g:  .word 0x4
h:  .word 0x4

    .text
    .globl main
main:
    la		$t6, g		# 
    la		$t7, h		# 
    lw		$t1, 0($t6)		# 
    lw		$t2, 0($t7)		#
    beq		$t2, $t1, eq	# if 2 == $t1 then target
    sub		$t5, $t1, $t2
    jr      $ra
eq:
    add		$t5, $t1, $t2	
    jr      $ra
    
    