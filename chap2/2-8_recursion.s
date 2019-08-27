# Translate C:
# int fact (int n)
# {
#       if (n < 1) return 1;
#       else return n * fact (n - 1);

    .text
main:
    li      $a0, 3
fact:
    addi    $sp, $sp, -8  # adjust stack of 2 items. one is $a0, another is return address
    sw      $ra, 4($sp)   # save the return address
    sw      $a0, 0($sp)   # save the $a0 value
    slti    $t0, $a0, 1   # test for n < 1 ; if true $t0 = 1
    beq     $t0, $0, L1   # if n >= 1 , go to L1
    addi    $v1, $0, 1    # if n < 1 , set $v0=1
    addi    $sp, $sp, 8
    jr      $ra
L1:
    addi    $a0, $a0, -1
    jal     fact          # call for fact(n-1)
    lw      $a0, 0($sp)
    lw      $ra, 4($sp)
    addi    $sp, $sp, 8
    mul     $v1, $a0, $v1
    jr      $ra