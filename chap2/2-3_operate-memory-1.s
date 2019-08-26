# each label represent a word in memory
# and it is in order.
# n lable in the first word
# m lable in the secode word... etc.
# lable only represent the address of memory but no data

# the number behind .word means the data
# usually a .word represent 32bits in spim
# and if it over 32bits in file it will only take the low 32bits

# the number behind .space means how many memory will be applied
# in general the number of 4 means apply a word


    .data
n:  .word 0x7fffff831
m:  .word 0x3
r:  .space 4
q:  .space 4

    .text
    .globl main
main:
    lw $t0,n
    lw $t1,m

    sub $t2,$t1,$t0
    sw $t2,r
    add $t2,$t1,$t0
    sw $t2,q