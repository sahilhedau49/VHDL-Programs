main:
 li $t1, 100
 li $t2, 300
 li $t3, 200
 bgt $t1, $t2, l1
 bgt $t2, $t3, l3
 #smallest = t3
 move $a0, $t3
 j end
l1:
 bgt $t1, $t3, l2
 #smallest = t3
 move $a0, $t3
 j end
l2:
 #smallest = t1
 move $a0, $t1
 j end
 
l3:
 #smallest = t2
 move $a0, $t2
 j end
end:
 li $v0, 1
 syscall
 li $v0, 10
 syscall