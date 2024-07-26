        .data
nl:     .asciiz "\n"
prompt: .asciiz "Enter an integer: "
r:      .asciiz "! = "
        .text

main:
        
        li      $v0, 4          # PRINT INPUT REQUEST
        la      $a0, prompt
        syscall    # 

        li      $v0, 5          # READ USER INPUT
        syscall
        move    $t0, $v0        # REQUESTED INTEGER IS IN $t0

        li      $t2, 1          # COUNTER
        li      $t1, 1          # RESULT

loop:   bgt     $t2, $t0, end_loop        # (STATEMENTS)

        mul     $t1, $t1, $t2,  # $t1 = $t1 * $t2

        addi    $t2, $t2, 1     #  INCREMENT COUNTER   

        j       loop            # LOOP AGAIN

end_loop:

        li      $v0, 1          # PRINT INTEGER
        move    $a0, $t0        # PRINT THE USER INPUT
        syscall

        li      $v0, 4          # PRINT STRING
        la      $a0, r          # PRINT ! = 
        syscall

        li      $v0, 1
        move    $a0, $t1        # MOVE RESULT FROM $t1 TO $a0
        syscall

        li      $v0, 4          # PRINT STRING
        la      $a0, nl
        syscall

        li      $v0, 10         # QUIT PROGRAM
        syscall