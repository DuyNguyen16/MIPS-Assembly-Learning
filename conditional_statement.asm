main:

        li		$t0, 4		# $t0 =0 
        li		$t1, 1		# $t1 =0 
    

        .data
Hello:  .asciiz "Hello "
world:  .asciiz "World! \n"
test:   .asciiz "test"   
        .text


        .data
statement1: .asciiz "$t0 less than $t1"
statement2: .asciiz "$t0 greater than $t1"
        .text

        # if ($t0 < $t1)
        bge		$t0, $t1, else	# if $t0 >= $t1 then goto target
        
        la		$a0, statement1		# 
        syscall

        j		end_else				# jump to end_else
        

else:
    la		$a0, statement2		# 
    syscall

end_else:


        li		$v0, 10		# $v0 =10 
        syscall