main:

        li      $t0, 1	# $t0 =0 
        li	    $t1, 0	# $t1 =0 
        
        
        #   case (i) {
        #       0:          print "Zero
        #       1:          print "One"
        #       2:          print "Two"
        #       default:    print "Default"
        #   }

        .data
zero_string:    .asciiz "Zero\n"
one_string:     .asciiz "One\n"
two_string:     .asciiz "Two\n"
default_string: .asciiz "Default\n"
        .text

        beq		$t0, $zero, zero	# if $t0 == $t1 then goto target
        li		$t9, 1	# $t9 = 1
        beq		$t0, $t9, one	# if $t0 == $t9 then goto target
        li		$t9, 2		# $t9 = 2 
        beq		$t0, $t9, two	# if $t0 = $t9 then goto target
        j		default				# jump to default
        
zero:
        la		$a0, zero_string		# 
        syscall

        j		end_case				# jump to end_case
        

one:
        la		$a0, one_string		# 
        syscall

        j		end_case				# jump to end_case

two:
        la		$a0, two_string		# 
        syscall

        j		end_case				# jump to end_case

default:
        la		$a0, default_string		# 
        syscall

end_case:

        li		$v0, 10		# $v0 =10 
        syscall