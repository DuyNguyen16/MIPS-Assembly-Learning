        .data
newl:   .asciiz "\n"
        .text

main:

        li		$t0, 	2	# $t0 = 2
        li		$t1, 	7	# $t1 = 7
        li		$t2, 	5	# $t2 = 5
        li		$t3, 	8	# $t3 = 8

        add		$a0, $t0, $t3	# $a0 = $0 + $t3
        li		$v0, 	1	# $v0 = 1
        syscall

        li		$v0, 	4	# $v0 = 4
        la		$a0, newl		# 
        syscall

        addi	$a0, $t2, 17			# $a0 = $t2 + 17
        li		$v0, 	1	# $v0 = 1
        syscall 

        li		$v0, 	4	# $v0 = 4
        la		$a0, newl		# 
        syscall

        mult	$t1, $t2			# $t1 * $t2 = Hi and Lo registers
        mflo	$a0					# copy Lo to $a0
        li		$v0, 1		# $v0 = 1 
        syscall

        mul     $a0, $t1, $t0
        li		$v0, 1		# $v0 =1 
        syscall

        li		$v0, 	10	# $v0 = 10
        syscall
