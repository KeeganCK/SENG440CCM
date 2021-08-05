	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"sRoot.c"
	.text
	.align	2
	.global	squareRoot
	.type	squareRoot, %function
squareRoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #65536
	sub	r3, r3, #1
	cmp	r0, r3
	mov	ip, r0
	movle	r0, #16384
	movgt	r0, #65536
	add	r2, r0, r0, lsr #1
	add	r2, r2, r2, lsr #1
	movle	r3, #16384
	movgt	r3, #32768
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, lsr #2
	add	r1, r1, r1, lsr #2
	add	r2, r3, r3, lsr #1
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, lsr #3
	add	r2, r2, r2, lsr #3
	add	r1, r3, r3, lsr #2
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, lsr #4
	add	r1, r1, r1, lsr #4
	add	r2, r3, r3, lsr #3
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, lsr #5
	add	r2, r2, r2, lsr #5
	add	r1, r3, r3, lsr #4
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, lsr #6
	add	r1, r1, r1, lsr #6
	add	r2, r3, r3, lsr #5
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, lsr #7
	add	r2, r2, r2, lsr #7
	add	r1, r3, r3, lsr #6
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, lsr #8
	add	r1, r1, r1, asr #8
	add	r2, r3, r3, lsr #7
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, asr #9
	add	r2, r2, r2, asr #9
	add	r1, r3, r3, lsr #8
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, asr #10
	add	r1, r1, r1, asr #10
	add	r2, r3, r3, lsr #9
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, asr #11
	add	r2, r2, r2, asr #11
	add	r1, r3, r3, lsr #10
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, asr #12
	add	r1, r1, r1, asr #12
	add	r2, r3, r3, lsr #11
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, asr #13
	add	r2, r2, r2, asr #13
	add	r1, r3, r3, lsr #12
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r0, r0, asr #14
	add	r1, r1, r1, asr #14
	add	r2, r3, r3, lsr #13
	movge	r3, r2
	cmp	ip, r1
	movge	r0, r1
	add	r2, r0, r0, asr #15
	add	r2, r2, r2, asr #15
	add	r1, r3, r3, lsr #14
	movge	r3, r1
	cmp	ip, r2
	movge	r0, r2
	add	r1, r3, r3, lsr #15
	add	r0, r0, r0, asr #16
	movge	r3, r1
	add	r0, r0, r0, asr #16
	cmp	ip, r0
	add	r2, r3, r3, lsr #16
	movlt	r0, r3
	movge	r0, r2
	bx	lr
	.size	squareRoot, .-squareRoot
	.global	__aeabi_fmul
	.global	__aeabi_f2iz
	.global	__aeabi_f2d
	.global	__aeabi_i2f
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	ip, .L143
	sub	sp, sp, #44
	mov	lr, ip
	ldmia	lr!, {r0, r1, r2, r3}
	add	r8, sp, #12
	mov	ip, r8
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, .L143+4
	ldr	r3, [r3, #0]
	ldmia	lr, {r0, r1, r2}
	cmp	r3, #0
	stmia	ip, {r0, r1, r2}
	moveq	r2, #999424
	addeq	r2, r2, #576
	beq	.L137
	mov	sl, #65536
	sub	sl, sl, #1
	mov	r7, #0
.L135:
	ldr	r5, [r8, r7]	@ float
	mov	r1, #1174405120
	add	r1, r1, #8388608
	mov	r0, r5
	bl	__aeabi_fmul
	bl	__aeabi_f2iz
	cmp	r0, sl
	movle	r3, #16384
	movgt	r3, #65536
	add	r2, r3, r3, lsr #1
	add	r2, r2, r2, lsr #1
	movle	r4, #16384
	movgt	r4, #32768
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, lsr #2
	add	r1, r1, r1, lsr #2
	add	r2, r4, r4, lsr #1
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, lsr #3
	add	r2, r2, r2, lsr #3
	add	r1, r4, r4, lsr #2
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, lsr #4
	add	r1, r1, r1, lsr #4
	add	r2, r4, r4, lsr #3
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, lsr #5
	add	r2, r2, r2, lsr #5
	add	r1, r4, r4, lsr #4
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, lsr #6
	add	r1, r1, r1, lsr #6
	add	r2, r4, r4, lsr #5
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, lsr #7
	add	r2, r2, r2, lsr #7
	add	r1, r4, r4, lsr #6
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, lsr #8
	add	r1, r1, r1, asr #8
	add	r2, r4, r4, lsr #7
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, asr #9
	add	r2, r2, r2, asr #9
	add	r1, r4, r4, lsr #8
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, asr #10
	add	r1, r1, r1, asr #10
	add	r2, r4, r4, lsr #9
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, asr #11
	add	r2, r2, r2, asr #11
	add	r1, r4, r4, lsr #10
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, asr #12
	add	r1, r1, r1, asr #12
	add	r2, r4, r4, lsr #11
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, asr #13
	add	r2, r2, r2, asr #13
	add	r1, r4, r4, lsr #12
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r3, r3, asr #14
	add	r1, r1, r1, asr #14
	add	r2, r4, r4, lsr #13
	movge	r4, r2
	cmp	r0, r1
	movge	r3, r1
	add	r2, r3, r3, asr #15
	add	r2, r2, r2, asr #15
	add	r1, r4, r4, lsr #14
	movge	r4, r1
	cmp	r0, r2
	movge	r3, r2
	add	r1, r4, r4, lsr #15
	add	r3, r3, r3, asr #16
	add	r3, r3, r3, asr #16
	movge	r4, r1
	add	r2, r4, r4, lsr #16
	cmp	r0, r3
	mov	r0, r5
	movge	r4, r2
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r0, r4
	mov	r6, r1
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	add	r7, r7, #4
	stmia	sp, {r0-r1}
	mov	r2, r5
	mov	r3, r6
	ldr	r0, .L143+8
	bl	printf
	cmp	r7, #28
	bne	.L135
.L136:
	mov	r0, #10
	bl	putchar
	mov	r0, #0
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L137:
	add	r3, r3, #1
	cmp	r3, r2
	beq	.L136
	add	r3, r3, #1
	cmp	r3, r2
	bne	.L137
	b	.L136
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.size	main, .-main
	.global	testingResults
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.11.2298, %object
	.size	C.11.2298, 28
C.11.2298:
	.word	1065353216
	.word	1071644672
	.word	1073741824
	.word	1074790400
	.word	1077936128
	.word	1080033280
	.word	1082130428
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"The Square Root of %1.3f is %f\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	testingResults, %object
	.size	testingResults, 4
testingResults:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
