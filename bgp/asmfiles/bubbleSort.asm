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
main:	
subiu	$sp, $sp, 56
sw	$ra, 52($sp)
li	$t0, 0
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 9
sw	$t0, 0($t1)
li	$t0, 1
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 8
sw	$t0, 0($t1)
li	$t0, 2
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 7
sw	$t0, 0($t1)
li	$t0, 3
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 6
sw	$t0, 0($t1)
li	$t0, 4
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 5
sw	$t0, 0($t1)
li	$t0, 5
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 4
sw	$t0, 0($t1)
li	$t0, 6
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 3
sw	$t0, 0($t1)
li	$t0, 7
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 2
sw	$t0, 0($t1)
li	$t0, 8
mul	$t1, $t0, 4
addiu	$t0, $t1, 12
addu	$t1, $sp, $t0
li	$t0, 1
sw	$t0, 0($t1)
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l5:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 10
blt	$t1, $t0, $l7
li	$s7, 0
j	$l8
$l7:	
li	$s7, 1
$l8:	
bne	$s7, $0, $l4
j	$l6
$l4:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
mul	$t0, $t1, 4
addiu	$t1, $t0, 12
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
move	$a0, $t1
jal	printInt
jal	printSpace
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 8
sw	$t2, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
j	$l5
$l6:	
jal	printNewline
jal	printNewline
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l10:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 9
blt	$t1, $t0, $l12
li	$s7, 0
j	$l13
$l12:	
li	$s7, 1
$l13:	
bne	$s7, $0, $l9
j	$l11
$l9:	
addiu	$t0, $sp, 4
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
$l15:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 10
sub	$t2, $t0, $t1
li	$t0, 1
sub	$t1, $t2, $t0
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
blt	$t2, $t1, $l17
li	$s7, 0
j	$l18
$l17:	
li	$s7, 1
$l18:	
bne	$s7, $0, $l14
j	$l16
$l14:	
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
mul	$t0, $t1, 4
addiu	$t1, $t0, 12
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
li	$t0, 1
add	$t3, $t2, $t0
mul	$t0, $t3, 4
addiu	$t2, $t0, 12
addu	$t0, $sp, $t1
addu	$t1, $sp, $t2
lw	$t2, 0($t0)
lw	$t0, 0($t1)
bgt	$t2, $t0, $l19
li	$s7, 0
j	$l20
$l19:	
li	$s7, 1
$l20:	
bne	$s7, $0, $l21
j	$l22
$l21:	
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
mul	$t0, $t1, 4
addiu	$t1, $t0, 12
addu	$t0, $sp, $t1
addiu	$t1, $sp, 0
lw	$t2, 0($t0)
sw	$t2, 0($t1)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
mul	$t0, $t2, 4
addiu	$t2, $t0, 12
addiu	$t0, $sp, 4
lw	$t3, 0($t0)
li	$t0, 1
add	$t4, $t3, $t0
mul	$t0, $t4, 4
addiu	$t3, $t0, 12
move	$s6, $t2
move	$t0, $s6
move	$t2, $s6
addu	$t4, $sp, $t3
addu	$t3, $sp, $t0
lw	$t0, 0($t4)
sw	$t0, 0($t3)
addu	$t0, $sp, $t2
lw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
mul	$t0, $t2, 4
addiu	$t1, $t0, 12
move	$s6, $t1
move	$t0, $s6
move	$t1, $s6
addiu	$t2, $sp, 0
addu	$t3, $sp, $t0
lw	$t0, 0($t2)
sw	$t0, 0($t3)
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
$l22:	
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 4
sw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
j	$l15
$l16:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 8
sw	$t2, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
j	$l10
$l11:	
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l24:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 10
blt	$t1, $t0, $l26
li	$s7, 0
j	$l27
$l26:	
li	$s7, 1
$l27:	
bne	$s7, $0, $l23
j	$l25
$l23:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
mul	$t0, $t1, 4
addiu	$t1, $t0, 12
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
move	$a0, $t1
jal	printInt
jal	printSpace
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 8
sw	$t2, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
j	$l24
$l25:	
li	$t0, 0
move	$v0, $t0
j	$l3
$l3:	
lw	$ra, 52($sp)
addiu	$sp, $sp, 56
jr	$ra
