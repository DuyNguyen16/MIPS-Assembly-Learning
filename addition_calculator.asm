        .data
newl:   .asciiz "\n"
prompt: .asciiz "Enter an integer: "
prompt2: .asciiz "Enter an integer again: "
resp:   .asciiz "The answer is: "
        .text

main:
        # PRINT OUT PROMPT 1
        li		$v0,  4		# $v0 = 4 PRINT STRING
        la		$a0, prompt		# PRINT OUT THE PROMPT
        syscall

        # READ THE USER INPUT
        li		$v0, 	5	# $v0 = 5 Read integer
        syscall
        move 	$t0, $v0	# $t0 = v0 SAVE VALUE INTO TEMPORARY REGISTER

        # PRINT OUT PROMPT 2
        li		$v0, 	4	# $v0 = 4
        la		$a0, prompt2 # PRINT OUT THE PROMP2 
        syscall

        # READ THE USER INPUT
        li		$v0, 	5	# $v0 = 5 READ INTEGER
        syscall
        move 	$t1, $v0	# $t1 =$v0 SAVE VALUE INTO TEMPORARY REGISTER


        # PRINT OUT RESPONSE
        li		$v0, 	4	# $v0 = 4
        la		$a0, resp		# PRINT OUT THE ANSWER
        syscall
        
        # ADDING THE TWO VALUES
        add		$a0, $t0, $t1		# $t2 = $t0 + $t1 ADDING THE INTEGERS
        li		$v0,  1		# $v0 = 1 # PRINTING THE INTEGER
        syscall

        # QUIT PROGRAM
        li		$v0, 	10	# $v0 = 10 QUIT PROGRAM
        syscall 