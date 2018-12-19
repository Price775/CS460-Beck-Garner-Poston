start:	
jal	main
li	$v0, 10
syscall	
printInt:	
subiu	$sp, $sp, 8
sw	$ra, 4($sp)
addiu	$t0, $sp, 0
sw	$a0, 0($t0)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
move	$a0, $t1
li	$v0, 1
syscall	
$l0:	
lw	$ra, 4($sp)
addiu	$sp, $sp, 8
jr	$ra
printSpace:	
subiu	$sp, $sp, 8
sw	$ra, 4($sp)
li	$a0, 32
li	$v0, 11
syscall	
$l1:	
lw	$ra, 4($sp)
addiu	$sp, $sp, 8
jr	$ra
printNewline:	
subiu	$sp, $sp, 8
sw	$ra, 4($sp)
li	$a0, 10
li	$v0, 11
syscall	
$l2:	
lw	$ra, 4($sp)
addiu	$sp, $sp, 8
jr	$ra
add:	
subiu	$sp, $sp, 16
sw	$ra, 12($sp)
addiu	$t0, $sp, 8
sw	$a0, 0($t0)
addiu	$t0, $sp, 4
sw	$a1, 0($t0)
addiu	$t0, $sp, 8
addiu	$t1, $sp, 4
lw	$t2, 0($t0)
lw	$t0, 0($t1)
add	$t1, $t2, $t0
move	$v0, $t1
j	$l3
$l3:	
lw	$ra, 12($sp)
addiu	$sp, $sp, 16
jr	$ra
sub:	
subiu	$sp, $sp, 16
sw	$ra, 12($sp)
addiu	$t0, $sp, 8
sw	$a0, 0($t0)
addiu	$t0, $sp, 4
sw	$a1, 0($t0)
addiu	$t0, $sp, 8
addiu	$t1, $sp, 4
lw	$t2, 0($t0)
lw	$t0, 0($t1)
sub	$t1, $t2, $t0
move	$v0, $t1
j	$l4
$l4:	
lw	$ra, 12($sp)
addiu	$sp, $sp, 16
jr	$ra
main:	
subiu	$sp, $sp, 16
sw	$ra, 12($sp)
addiu	$t0, $sp, 8
li	$t1, 2
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
addiu	$t0, $sp, 4
li	$t2, 1
sw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
move	$a0, $t1
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
move	$a1, $t1
jal	add
move	$a0, $v0
jal	printInt
jal	printNewline
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
move	$a0, $t1
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
move	$a1, $t1
jal	sub
move	$a0, $v0
jal	printInt
li	$t0, 0
move	$v0, $t0
j	$l5
$l5:	
lw	$ra, 12($sp)
addiu	$sp, $sp, 16
jr	$ra
