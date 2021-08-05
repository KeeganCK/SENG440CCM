	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"sRoot.c"
	.global	testingResults
	.bss
	.align	2
	.type	testingResults, %object
	.size	testingResults, 4
testingResults:
	.space	4
	.text
	.align	2
	.global	squareRoot
	.type	squareRoot, %function
squareRoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-8]
	mov	r1, #16384
	str	r1, [fp, #-32]
	mov	r2, #16384
	str	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-32]
	mov	r1, r1, asl #2
	str	r1, [fp, #-16]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asl #1
	str	r2, [fp, #-12]
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L2
.L5:
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-24]
	cmp	r1, r2
	bgt	.L3
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-28]
.L3:
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-20]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-32]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-20]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-24]
	cmp	r3, r1
	bgt	.L4
	ldr	r2, [fp, #-16]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-28]
.L4:
	ldr	r1, [fp, #-20]
	add	r1, r1, #1
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-20]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-32]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-20]
	mov	r3, r1, asr r2
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r3, r2, asr r1
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldr	r1, [fp, #-20]
	and	r3, r1, #16
	cmp	r3, #0
	beq	.L5
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L6
	ldr	r1, [fp, #-16]
	str	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	str	r2, [fp, #-28]
.L6:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	squareRoot, .-squareRoot
	.section	.rodata
	.align	2
	.type	C.0.2136, %object
	.size	C.0.2136, 28
C.0.2136:
	.word	1065353216
	.word	1071644672
	.word	1073741824
	.word	1074790400
	.word	1077936128
	.word	1080033280
	.word	1082130428
	.global	__aeabi_fmul
	.global	__aeabi_f2iz
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.align	2
.LC0:
	.ascii	"The Square Root of %1.3f is %f\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #76
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	ldr	r3, .L16
	sub	lr, fp, #72
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2}
	stmia	lr, {r0, r1, r2}
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, .L16+4
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L9
	b	.L10
.L11:
	ldr	r3, [fp, #-44]
	mvn	r2, #51
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-40]	@ float
	ldr	r2, .L16+8	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2iz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-36]
	bl	squareRoot
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-32]
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, .L16+8	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r0, [fp, #-28]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stmia	sp, {r3-r4}
	ldr	r0, .L16+12
	mov	r2, r5
	mov	r3, r6
	bl	printf
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L10:
	ldr	r3, [fp, #-44]
	cmp	r3, #6
	ble	.L11
	b	.L12
.L9:
	mov	r3, #28672
	str	r3, [fp, #-24]
	b	.L13
.L14:
	ldr	r0, [fp, #-24]
	bl	squareRoot
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L13:
	ldr	r2, [fp, #-44]
	mov	r3, #999424
	add	r3, r3, #572
	add	r3, r3, #3
	cmp	r2, r3
	ble	.L14
.L12:
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	C.0.2136
	.word	testingResults
	.word	1182793728
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
