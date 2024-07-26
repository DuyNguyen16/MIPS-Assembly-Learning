fact:   beqz    $a0, return0        #(if $a0 == 0) { return 0 }  

        li      $v0, 1          # RESULT
        li      $t0, 1          # LOOP COUNTER

fact_loop:      # FUNCTION LOOP
        bgt     $t0, $a0, end_fact_loop     # FOR LOOP

        mul     $v0, $v0, $t0   # $v0 = $v0 * $t0

        addi    $t0, $t0, 1     # INCREMENT LOOP COUNTER

        j       fact_loop       

end_fact_loop:
        jr      $ra         

return0:
        li      $v0, 1
        jr      $ra


main:       # MAIN FUNCTION TO RUN CODE

        li      $a0, 5
        jal     fact
        move    $a0, $v0
        

        li      $v0, 1
        syscall

        li      $v0, 10
        syscall