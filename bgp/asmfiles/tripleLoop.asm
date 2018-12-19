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
addiu	$t0, $sp, 8
li	$t2, 0
sw	$t2, 0($t0)
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
addiu	$t0, $sp, 4
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
addiu	$t0, $sp, 0
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 0
lw	$t1, 0($t0)
$l4:	
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l7:	
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
li	$t0, 3
blt	$t2, $t0, $l9
li	$s7, 0
j	$l10
$l9:	
li	$s7, 1
$l10:	
bne	$s7, $0, $l6
j	$l8
$l6:	
addiu	$t0, $sp, 4
li	$t2, 0
sw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
$l12:	
addiu	$t0, $sp, 4
lw	$t3, 0($t0)
li	$t0, 3
blt	$t3, $t0, $l14
li	$s7, 0
j	$l15
$l14:	
li	$s7, 1
$l15:	
bne	$s7, $0, $l11
j	$l13
$l11:	
addiu	$t0, $sp, 12
lw	$t3, 0($t0)
mul	$t0, $t3, 3
mul	$t3, $t0, 3
addiu	$t0, $sp, 8
lw	$t4, 0($t0)
mul	$t0, $t4, 3
add	$t4, $t0, $t3
addiu	$t0, $sp, 4
lw	$t3, 0($t0)
add	$t0, $t3, $t4
mul	$t3, $t0, 4
addu	$t0, $t3, 16
addiu	$t3, $sp, 0
lw	$t4, 0($t3)
li	$t3, 1
add	$t5, $t4, $t3
addiu	$t3, $sp, 0
sw	$t5, 0($t3)
addiu	$t3, $sp, 0
lw	$t4, 0($t3)
move	$s6, $t0
move	$t0, $s6
move	$t3, $s6
addu	$t5, $sp, $t0
sw	$t4, 0($t5)
addu	$t0, $sp, $t3
lw	$t3, 0($t0)
addiu	$t0, $sp, 4
lw	$t3, 0($t0)
li	$t0, 1
add	$t4, $t3, $t0
addiu	$t0, $sp, 4
sw	$t4, 0($t0)
addiu	$t0, $sp, 4
lw	$t3, 0($t0)
j	$l12
$l13:	
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
li	$t0, 1
add	$t3, $t2, $t0
addiu	$t0, $sp, 8
sw	$t3, 0($t0)
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
j	$l7
$l8:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 12
sw	$t2, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l16
li	$s7, 0
j	$l17
$l16:	
li	$s7, 1
$l17:	
bne	$s7, $0, $l4
j	$l5
$l5:	
addiu	$t0, $sp, 4
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 4
lw	$t1, 0($t0)
addiu	$t0, $sp, 8
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
addiu	$t0, $sp, 12
sw	$t1, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
$l18:	
addiu	$t0, $sp, 8
li	$t1, 0
sw	$t1, 0($t0)
addiu	$t0, $sp, 8
lw	$t1, 0($t0)
$l21:	
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
li	$t0, 3
blt	$t2, $t0, $l23
li	$s7, 0
j	$l24
$l23:	
li	$s7, 1
$l24:	
bne	$s7, $0, $l20
j	$l22
$l20:	
addiu	$t0, $sp, 4
li	$t2, 0
sw	$t2, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
$l26:	
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
li	$t0, 3
blt	$t2, $t0, $l28
li	$s7, 0
j	$l29
$l28:	
li	$s7, 1
$l29:	
bne	$s7, $0, $l25
j	$l27
$l25:	
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
mul	$t2, $t0, 3
addiu	$t0, $sp, 8
lw	$t3, 0($t0)
mul	$t0, $t3, 3
add	$t3, $t0, $t2
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
add	$t0, $t2, $t3
mul	$t2, $t0, 4
addu	$t0, $t2, 16
addu	$t2, $sp, $t0
lw	$t0, 0($t2)
li	$t2, 3
div	$t0, $t2
mfhi	$t3
li	$t0, 0
bne	$t3, $t0, $l30
li	$s7, 0
j	$l31
$l30:	
li	$s7, 1
$l31:	
bne	$s7, $0, $l32
j	$l33
$l32:	
addiu	$t0, $sp, 12
lw	$t2, 0($t0)
mul	$t0, $t2, 3
mul	$t2, $t0, 3
addiu	$t0, $sp, 8
lw	$t3, 0($t0)
mul	$t0, $t3, 3
add	$t3, $t0, $t2
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
add	$t0, $t2, $t3
mul	$t2, $t0, 4
addu	$t0, $t2, 16
addu	$t2, $sp, $t0
lw	$t0, 0($t2)
move	$a0, $t0
jal	printInt
jal	printSpace
$l33:	
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
li	$t0, 1
add	$t3, $t2, $t0
addiu	$t0, $sp, 4
sw	$t3, 0($t0)
addiu	$t0, $sp, 4
lw	$t2, 0($t0)
j	$l26
$l27:	
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
li	$t0, 1
add	$t3, $t2, $t0
addiu	$t0, $sp, 8
sw	$t3, 0($t0)
addiu	$t0, $sp, 8
lw	$t2, 0($t0)
j	$l21
$l22:	
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 1
add	$t2, $t1, $t0
addiu	$t0, $sp, 12
sw	$t2, 0($t0)
addiu	$t0, $sp, 12
lw	$t1, 0($t0)
li	$t0, 3
blt	$t1, $t0, $l34
li	$s7, 0
j	$l35
$l34:	
li	$s7, 1
$l35:	
bne	$s7, $0, $l18
j	$l19
$l19:	
$l3:	
lw	$ra, 124($sp)
addiu	$sp, $sp, 128
jr	$ra
