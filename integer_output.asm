        .data
n1:     .asciiz "\n"
        .text


main:

        # Print Integer
        li		$v0, 	1	# $v0 = 1
        li		$a0, 	17	# $a0 = 17
        syscall

        # New Line
        li		$v0, 	4	# $v0 = 4
        la		$a0, n1		# address for n1
        syscall        
        
        # Print Integer
        li		$v0, 	1	# $v0 = 1
        li		$a0, 	71	# $a0 = 71
        syscall
        
        # New Line
        li		$v0, 	4	# $v0 = 1 Print String
        la		$a0, 	n1	# address for n1
        syscall
        
        # Print Integer
        li		$v0, 1		# $v0 =1 
        li		$a0, 	45	# $a0 = 45
        syscall

        # Quit program
        li		$v0, 	10	# $v0 = 10
        syscall