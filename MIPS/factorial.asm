main:
 li $t0, 1
 li $t1, 1
 li $t2, 5
 li $t3, 5
loop:
 beq $t1, $t2, end
 mult $t1, $t3
 mflo $t3
 add $t1, $t1, $t0
 j loop
end:
 
 move $a0, $t3
 li $v0, 1
 syscall
 li $v0, 10
 syscall