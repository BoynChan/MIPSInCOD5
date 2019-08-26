# translate:C
# f = (g + h) - (i + j);

        .text
        .globl main
main:
    ori $t0,1
    ori $t1,2
    ori $t2,3
    ori $t3,4
    add $t4,$t0,$t1
    add $t5,$t2,$t3
    sub $t6,$t4,$t5
    jr $ra