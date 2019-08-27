# Translate C:
# void swap (int v[], int k)
# {
#   int temp;
#   temp = v[k];
#   v[k] = v[k+1];
#   v[k+1] = temp;
# }

# we use #a0 to save v address, $t0 for temp, and $a1 for k

swap:
    sll     $t1, $a1, 2
    add     $t1, $t1, $a0
    lw      $t0, 0($t1)
    lw      $t2, 4($t1)
    sw      $t0, 4($t1)
    sw      $t2, 0($t1)
    jr      $ra



