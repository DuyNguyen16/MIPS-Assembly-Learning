        .data
one:    .asciiz "This is string one!\n"
two:    .asciiz "This is string two!"
        .text

main:   li		$v0, 	4	# $v0 = 4
        la		$a0, one	# a0 = address of one
        syscall
        
        la      $a0, two    # a0 = address of two
        syscall

        li      $v0,    10
        syscall