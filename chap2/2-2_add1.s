# translate:C
# a = b + c;
# d = a - e;

        .text
        .globl main
main:
    ori $t0,$0,2  # b=2
    ori $t1,$0,3  # c=3
    add $t2,$t1,$t0  #a=b+c
    ori $t3,$0,1  # e=1
    sub $t4,$t2,$t3  #d =a-e
    jr $ra
    