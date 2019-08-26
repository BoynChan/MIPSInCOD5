		.data
msg:   .asciiz "Hello World"
	.extern foobar 4

        .text
        .globl main
main:   li $v0, 4       # syscall 4 (print_str)
		lw $t0, 5 
        la $a0, msg     # argument: string
        syscall         # print the string
        lw $t1, foobar
        li $vo, 2
		lw $t0, foobar
		syscall
        jr $ra          # retrun to caller