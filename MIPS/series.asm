main:
 li $t0, 0
 li $t1, 1
 li $t2, 10
 li $t3, 1
 li $t4, 1

loop:
 bgt $t1,$t2, end
 mult $t4,$t1
 mflo $t4

 move $a0, $t4
 li $v0, 1
 syscall    

 add $t0,$t0,$t4
 add $t1,$t1,$t3
 move $t4, $t1

 li $a0, 32
 li $v0, 11
 syscall
 j loop

end:
 move $a0, $t0
 li $v0, 1
 syscall
 li $v0, 10
 syscall