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
	.file	"qRoot.c"
	.text
	.align	2
	.global	cubeRoot
	.type	cubeRoot, %function
cubeRoot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #131072
	sub	r3, r3, #1
	cmp	r0, r3
	mov	ip, r0
	movle	r0, #16384
	movgt	r0, #131072
	add	r3, r0, r0, lsr #1
	add	r3, r3, r3, lsr #1
	add	r3, r3, r3, lsr #1
	movle	r1, #16384
	movgt	r1, #32768
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, lsr #2
	add	r2, r2, r2, lsr #2
	add	r2, r2, r2, lsr #2
	add	r3, r1, r1, lsr #1
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, lsr #3
	add	r3, r3, r3, lsr #3
	add	r3, r3, r3, lsr #3
	add	r2, r1, r1, lsr #2
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, lsr #4
	add	r2, r2, r2, lsr #4
	add	r2, r2, r2, lsr #4
	add	r3, r1, r1, lsr #3
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, lsr #5
	add	r3, r3, r3, lsr #5
	add	r3, r3, r3, asr #5
	add	r2, r1, r1, lsr #4
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, asr #6
	add	r2, r2, r2, asr #6
	add	r2, r2, r2, asr #6
	add	r3, r1, r1, lsr #5
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, asr #7
	add	r3, r3, r3, asr #7
	add	r3, r3, r3, asr #7
	add	r2, r1, r1, lsr #6
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, asr #8
	add	r2, r2, r2, asr #8
	add	r2, r2, r2, asr #8
	add	r3, r1, r1, lsr #7
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, asr #9
	add	r3, r3, r3, asr #9
	add	r3, r3, r3, asr #9
	add	r2, r1, r1, lsr #8
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, asr #10
	add	r2, r2, r2, asr #10
	add	r2, r2, r2, asr #10
	add	r3, r1, r1, lsr #9
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, asr #11
	add	r3, r3, r3, asr #11
	add	r3, r3, r3, asr #11
	add	r2, r1, r1, lsr #10
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, asr #12
	add	r2, r2, r2, asr #12
	add	r2, r2, r2, asr #12
	add	r3, r1, r1, lsr #11
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, asr #13
	add	r3, r3, r3, asr #13
	add	r3, r3, r3, asr #13
	add	r2, r1, r1, lsr #12
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r2, r0, r0, asr #14
	add	r2, r2, r2, asr #14
	add	r2, r2, r2, asr #14
	add	r3, r1, r1, lsr #13
	movge	r1, r3
	cmp	ip, r2
	movge	r0, r2
	add	r3, r0, r0, asr #15
	add	r3, r3, r3, asr #15
	add	r3, r3, r3, asr #15
	add	r2, r1, r1, lsr #14
	movge	r1, r2
	cmp	ip, r3
	movge	r0, r3
	add	r0, r0, r0, asr #16
	add	r3, r1, r1, lsr #15
	add	r0, r0, r0, asr #16
	movge	r1, r3
	add	r0, r0, r0, asr #16
	cmp	ip, r0
	add	r3, r1, r1, lsr #16
	movlt	r0, r1
	movge	r0, r3
	bx	lr
	.size	cubeRoot, .-cubeRoot
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
	ldr	ip, .L139
	sub	sp, sp, #44
	mov	lr, ip
	ldmia	lr!, {r0, r1, r2, r3}
	add	r8, sp, #12
	mov	ip, r8
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, .L139+4
	ldr	r4, [r3, #0]
	ldmia	lr, {r0, r1, r2}
	cmp	r4, #0
	stmia	ip, {r0, r1, r2}
	beq	.L69
	mov	sl, #131072
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
	movle	r1, #16384
	movgt	r1, #131072
	add	r3, r1, r1, lsr #1
	add	r3, r3, r3, lsr #1
	add	r3, r3, r3, lsr #1
	movle	r4, #16384
	movgt	r4, #32768
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, lsr #2
	add	r2, r2, r2, lsr #2
	add	r2, r2, r2, lsr #2
	add	r3, r4, r4, lsr #1
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, lsr #3
	add	r3, r3, r3, lsr #3
	add	r3, r3, r3, lsr #3
	add	r2, r4, r4, lsr #2
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, lsr #4
	add	r2, r2, r2, lsr #4
	add	r2, r2, r2, lsr #4
	add	r3, r4, r4, lsr #3
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, lsr #5
	add	r3, r3, r3, lsr #5
	add	r3, r3, r3, asr #5
	add	r2, r4, r4, lsr #4
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, asr #6
	add	r2, r2, r2, asr #6
	add	r2, r2, r2, asr #6
	add	r3, r4, r4, lsr #5
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, asr #7
	add	r3, r3, r3, asr #7
	add	r3, r3, r3, asr #7
	add	r2, r4, r4, lsr #6
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, asr #8
	add	r2, r2, r2, asr #8
	add	r2, r2, r2, asr #8
	add	r3, r4, r4, lsr #7
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, asr #9
	add	r3, r3, r3, asr #9
	add	r3, r3, r3, asr #9
	add	r2, r4, r4, lsr #8
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, asr #10
	add	r2, r2, r2, asr #10
	add	r2, r2, r2, asr #10
	add	r3, r4, r4, lsr #9
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, asr #11
	add	r3, r3, r3, asr #11
	add	r3, r3, r3, asr #11
	add	r2, r4, r4, lsr #10
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, asr #12
	add	r2, r2, r2, asr #12
	add	r2, r2, r2, asr #12
	add	r3, r4, r4, lsr #11
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, asr #13
	add	r3, r3, r3, asr #13
	add	r3, r3, r3, asr #13
	add	r2, r4, r4, lsr #12
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r2, r1, r1, asr #14
	add	r2, r2, r2, asr #14
	add	r2, r2, r2, asr #14
	add	r3, r4, r4, lsr #13
	movge	r4, r3
	cmp	r0, r2
	movge	r1, r2
	add	r3, r1, r1, asr #15
	add	r3, r3, r3, asr #15
	add	r2, r4, r4, lsr #14
	add	r3, r3, r3, asr #15
	movge	r4, r2
	cmp	r0, r3
	movge	r1, r3
	add	r1, r1, r1, asr #16
	add	r3, r4, r4, lsr #15
	add	r1, r1, r1, asr #16
	movge	r4, r3
	add	r1, r1, r1, asr #16
	cmp	r0, r1
	add	r3, r4, r4, lsr #16
	mov	r0, r5
	movge	r4, r3
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
	ldr	r0, .L139+8
	bl	printf
	cmp	r7, #28
	bne	.L135
.L69:
	mov	r0, #10
	bl	putchar
	mov	r0, #0
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.size	main, .-main
	.global	testingResults
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.11.2297, %object
	.size	C.11.2297, 28
C.11.2297:
	.word	1065353216
	.word	1076887552
	.word	1077936128
	.word	1082654720
	.word	1084227584
	.word	1087373312
	.word	1090516943
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
