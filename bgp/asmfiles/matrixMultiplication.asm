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
subiu	$sp, $sp, 128
sw	$ra, 124($sp)
addiu	$t0, $sp, 12
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
$l5:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 3
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
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l10:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l12
li	$s7, 0
j	$l13
$l12:	
li	$s7, 1
$l13:	
bne	$s7, $0, $l9
j	$l11
$l9:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
mul	$t0, $t1, 3
addiu	$t1, $sp, 8
lw	$t2, 0($t1)
add	$t1, $t2, $t0
mul	$t0, $t1, 4
addu	$t1, $t0, 88
addiu	$t0, $sp, 12
addiu	$t2, $sp, 8
lw	$t3, 0($t0)
lw	$t0, 0($t2)
add	$t2, $t3, $t0
move	$s6, $t1
move	$t0, $s6
move	$t1, $s6
addu	$t3, $sp, $t0
sw	$t2, 0($t3)
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
addiu	$t2, $sp, 8
lw	$t3, 0($t2)
add	$t2, $t3, $t0
mul	$t0, $t2, 4
addu	$t2, $t0, 88
addu	$t0, $sp, $t2
lw	$t2, 0($t0)
move	$a0, $t2
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
j	$l10
$l11:	
jal	printNewline
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 12
sw	$t2, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
j	$l5
$l6:	
jal	printNewline
addiu	$t0, $sp, 12
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
$l15:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l17
li	$s7, 0
j	$l18
$l17:	
li	$s7, 1
$l18:	
bne	$s7, $0, $l14
j	$l16
$l14:	
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l20:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l22
li	$s7, 0
j	$l23
$l22:	
li	$s7, 1
$l23:	
bne	$s7, $0, $l19
j	$l21
$l19:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
mul	$t0, $t1, 3
addiu	$t1, $sp, 8
lw	$t2, 0($t1)
add	$t1, $t2, $t0
mul	$t0, $t1, 4
addu	$t1, $t0, 52
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
addiu	$t2, $sp, 8
lw	$t3, 0($t2)
add	$t2, $t3, $t0
mul	$t0, $t2, 4
addu	$t2, $t0, 88
move	$s6, $t1
move	$t0, $s6
move	$t1, $s6
addu	$t3, $sp, $t2
addu	$t2, $sp, $t0
lw	$t0, 0($t3)
sw	$t0, 0($t2)
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
addiu	$t2, $sp, 8
lw	$t3, 0($t2)
add	$t2, $t3, $t0
mul	$t0, $t2, 4
addu	$t2, $t0, 52
addu	$t0, $sp, $t2
lw	$t2, 0($t0)
move	$a0, $t2
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
j	$l20
$l21:	
jal	printNewline
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 12
sw	$t2, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
j	$l15
$l16:	
jal	printNewline
addiu	$t0, $sp, 12
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
$l25:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l27
li	$s7, 0
j	$l28
$l27:	
li	$s7, 1
$l28:	
bne	$s7, $0, $l24
j	$l26
$l24:	
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l30:	
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l32
li	$s7, 0
j	$l33
$l32:	
li	$s7, 1
$l33:	
bne	$s7, $0, $l29
j	$l31
$l29:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
mul	$t0, $t1, 3
addiu	$t1, $sp, 8
lw	$t2, 0($t1)
add	$t1, $t2, $t0
mul	$t0, $t1, 4
addu	$t1, $t0, 16
move	$s6, $t1
move	$t0, $s6
move	$t1, $s6
addu	$t2, $sp, $t0
li	$t0, 0
sw	$t0, 0($t2)
addu	$t0, $sp, $t1
lw	$t1, 0($t0)
addiu	$t0, $sp, 4
li	$t2, 0
sw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
$l35:	
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
li	$t0, 3
blt	$t2, $t0, $l37
li	$s7, 0
j	$l38
$l37:	
li	$s7, 1
$l38:	
bne	$s7, $0, $l34
j	$l36
$l34:	
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
addiu	$t2, $sp, 8
lw	$t3, 0($t2)
add	$t2, $t3, $t0
mul	$t0, $t2, 4
addu	$t2, $t0, 16
addiu	$t0, $sp, 12
lw	$t3, 0($t0)
mul	$t0, $t3, 3
addiu	$t3, $sp, 8
lw	$t4, 0($t3)
add	$t3, $t4, $t0
mul	$t0, $t3, 4
addu	$t3, $t0, 16
addiu	$t0, $sp, 12
lw	$t4, 0($t0)
mul	$t0, $t4, 3
addiu	$t4, $sp, 4
lw	$t5, 0($t4)
add	$t4, $t5, $t0
mul	$t0, $t4, 4
addu	$t4, $t0, 88
addiu	$t0, $sp, 4
lw	$t5, 0($t0)
mul	$t0, $t5, 3
addiu	$t5, $sp, 8
lw	$t6, 0($t5)
add	$t5, $t6, $t0
mul	$t0, $t5, 4
addu	$t5, $t0, 52
addu	$t0, $sp, $t4
addu	$t4, $sp, $t5
lw	$t5, 0($t0)
lw	$t0, 0($t4)
mul	$t4, $t5, $t0
addu	$t0, $sp, $t3
lw	$t3, 0($t0)
add	$t0, $t3, $t4
move	$s6, $t2
move	$t2, $s6
move	$t3, $s6
addu	$t4, $sp, $t2
sw	$t0, 0($t4)
addu	$t0, $sp, $t3
lw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
li	$t0, 1
add	$t3, $t2, $t0
addiu	$t0, $sp, 4
sw	$t3, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
j	$l35
$l36:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
mul	$t0, $t1, 3
addiu	$t1, $sp, 8
lw	$t2, 0($t1)
add	$t1, $t2, $t0
mul	$t0, $t1, 4
addu	$t1, $t0, 16
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
j	$l30
$l31:	
jal	printNewline
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 12
sw	$t2, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
j	$l25
$l26:	
li	$t0, 0
move	$v0, $t0
j	$l3
$l3:	
lw	$ra, 124($sp)
addiu	$sp, $sp, 128
jr	$ra
