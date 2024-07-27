        .data
select1:    .asciiz "1. Addition\n"
select2:    .asciiz "2. Subtraction\n"
select3:    .asciiz "3. Multiplication\n"
select4:    .asciiz "4. Division\n"
prompt1:    .asciiz "Please select an operator: "
prompt2:    .asciiz "Enter first integer: "
prompt3:    .asciiz "Enter second integer: "
prompt4:    .asciiz "The result is: "
        .text


main:

    # PRINT OPTION 1
    li  $v0, 4
    la  $a0, select1
    syscall

    # PRINT OPTION 2
    li  $v0, 4
    la  $a0, select2
    syscall

    # PRINT OPTION 3
    li  $v0, 4
    la  $a0, select3
    syscall

    # PRINT OPTION 4 
    li  $v0, 4
    la  $a0, select4
    syscall

    # ASK FOR USER INPUT 
    li  $v0, 4
    la  $a0, prompt1
    syscall

    # READ INPUT
    li  $v0, 5
    syscall
    move $t0, $v0

    # CASE SWITCH
    li $t9, 1
    beq $t0, $t9, one # if $t0 == $t9
    li  $t9, 2
    beq $t0, $t9, two # if $t0 == $t9
    li  $t9, 3
    beq $t0, $t9, three
    li  $t9, 4
    beq $t0, $t9, four
    j   default


one:

two:

three:

four:




    li  $v0, 10
    syscall