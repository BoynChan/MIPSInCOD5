# Translate C:
# while(save[i] != k) i += 1;

        .data
save:    .word 0x1 0x2 0x3 0x4     # save[] = {1,2,3,4}
k:       .word 0x3       # k=3
    .text
    .globl main

main:
    la      $t0, k          # $t0 store the address of k
    lw      $s5, 0($t0)     # $s5 store the value of k
    li      $s3, 0          #  i = 0
    la      $s6, save       # $s6 store the first address of save array
loop:
    sll     $t1, $s3, 2     # the real address n = i*4, we can do this by move left twice
    add     $t1, $t1, $s6   # $s6 is base address of save , add offset to the base address to take dirrerent value
    lw      $t2, 0($t1)     # get the value of save[i]
    beq     $s5, $t2, exit  # if k == save[i], then exit
    addi    $s3, $s3, 1     # if not, then make i++
    j       loop            # jump to loop
exit:
    jr      $ra
