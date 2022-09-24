	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"main.c"
	.globl	_strlen                         @ -- Begin function _strlen
	.p2align	2
	.type	_strlen,%function
	.code	32                              @ @_strlen
_strlen:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp]
	ldr	r0, [sp]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB0_2
@ %bb.1:
	ldr	r0, .LCPI0_2
.LPC0_2:
	add	r0, pc, r0
	ldr	r0, [r0]
	add	r0, r0, #1
	ldr	r1, .LCPI0_1
.LPC0_1:
	add	r1, pc, r1
	str	r0, [r1]
	ldr	r0, [sp]
	mvn	r1, #0
	add	r1, r0, r1
	str	r1, [sp]
	bl	_strlen
	str	r0, [sp, #4]
	b	.LBB0_3
.LBB0_2:
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	str	r0, [sp, #4]
.LBB0_3:
	ldr	r0, [sp, #4]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.4:
.LCPI0_0:
	.long	_strlen.i-(.LPC0_0+8)
.LCPI0_1:
	.long	_strlen.i-(.LPC0_1+8)
.LCPI0_2:
	.long	_strlen.i-(.LPC0_2+8)
.Lfunc_end0:
	.size	_strlen, .Lfunc_end0-_strlen
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	ldr	r0, .LCPI1_1
.LPC1_1:
	add	r0, pc, r0
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #4]
	bl	_strlen
	ldr	r1, [sp]                        @ 4-byte Reload
	mov	r2, r0
	ldr	r0, .LCPI1_0
.LPC1_0:
	add	r0, pc, r0
	bl	printf
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	.L.str.1-(.LPC1_0+8)
.LCPI1_1:
	.long	.L.str-(.LPC1_1+8)
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cantunwind
	.fnend
                                        @ -- End function
	.type	_strlen.i,%object               @ @_strlen.i
	.local	_strlen.i
	.comm	_strlen.i,4,4
	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Hi! Good day"
	.size	.L.str, 13

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"%s: %d"
	.size	.L.str.1, 7

	.ident	"clang version 14.0.6"
	.section	".note.GNU-stack","",%progbits
