# translate C:
# A[12] = h + A[8];
# NOTE: .space NUMBER the number represent bytes.
# So if we want to declare a array which has 20 elements equals 20 words, the number will be 80
# A line of memory has 4 words , 16 bytes in spim
    .data
array1: .space 16     # declare a array which length is 16bytes and 4 words
array2: .space 16
A_array: .space 80      # declare a array which contains 20 words
    .text
    .globl main
main:
    la      $t5, A_array
    lw      $t0, 32($t5)        # $t0 = A[8]
    li      $t1, 10             # h = 10          
    add		$t2, $t1, $t0		# $t2 = $t1 + $t0
    # sll     $t2, $t2, 2         # $t2 << 1
    sw		$t2, 48($t5)        # A[12] = $t2
    # sw		$t2, 52($t5)
    # sw		$t2, 60($t5)	
    # sw		$t2, 64($t5)	 
    # la      $t6, array2
    # lw      $t0, 32($t6)
    jr      $ra