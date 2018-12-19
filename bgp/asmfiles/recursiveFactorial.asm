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
factorial:	
subiu	$sp, $sp, 8
sw	$ra, 4($sp)
addiu	$t0, $sp, 0
sw	$a0, 0($t0)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
li	$t0, 0
beq	$t1, $t0, $l5
li	$s7, 0
j	$l6
$l5:	
li	$s7, 1
$l6:	
bne	$s7, $0, $l7
j	$l8
$l7:	
li	$t0, 1
move	$v0, $t0
j	$l3
$l8:	
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
li	$t0, 1
sub	$t2, $t1, $t0
move	$a0, $t2
jal	factorial
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
mul	$t0, $t1, $v0
move	$v0, $t0
j	$l3
$l3:	
lw	$ra, 4($sp)
addiu	$sp, $sp, 8
jr	$ra
main:	
subiu	$sp, $sp, 8
sw	$ra, 4($sp)
addiu	$t0, $sp, 0
li	$t1, 5
sw	$t1, 0($t0)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
move	$a0, $t1
jal	printInt
jal	printNewline
jal	printNewline
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
move	$a0, $t1
jal	factorial
move	$a0, $v0
jal	printInt
li	$t0, 0
move	$v0, $t0
j	$l4
$l4:	
lw	$ra, 4($sp)
addiu	$sp, $sp, 8
jr	$ra
