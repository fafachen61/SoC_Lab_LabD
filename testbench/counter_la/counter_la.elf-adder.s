	.file	"adder.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/andy/SoC_Lab_LabD/testbench/counter_la" "../../firmware/adder.c"
	.globl	Number
	.data
	.align	2
	.type	Number, @object
	.size	Number, 40
Number:
	.word	1
	.word	16
	.word	256
	.word	4096
	.word	1
	.word	16
	.word	256
	.word	4096
	.word	1
	.word	16
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	adder
	.type	adder, @function
adder:
.LFB0:
	.file 1 "../../firmware/adder.c"
	.loc 1 4 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 5 6
	sw	zero,-20(s0)
.LBB2:
	.loc 1 7 11
	sw	zero,-24(s0)
	.loc 1 7 2
	j	.L2
.L3:
	.loc 1 9 22 discriminator 3
	lui	a5,%hi(Number)
	addi	a4,a5,%lo(Number)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 9 13 discriminator 3
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 7 39 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	.loc 1 7 28 discriminator 1
	lw	a4,-24(s0)
	li	a5,9
	ble	a4,a5,.L3
.LBE2:
	.loc 1 11 9
	lw	a5,-20(s0)
	.loc 1 12 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	adder, .-adder
	.globl	A
	.data
	.align	2
	.type	A, @object
	.size	A, 64
A:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.globl	B
	.align	2
	.type	B, @object
	.size	B, 64
B:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.globl	result
	.bss
	.align	2
	.type	result, @object
	.size	result, 64
result:
	.zero	64
	.section	.mprjram
	.align	2
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB1:
	.loc 1 17 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 18 6
	sw	zero,-20(s0)
	.loc 1 23 15
	sw	zero,-40(s0)
	.loc 1 25 8
	sw	zero,-20(s0)
	.loc 1 25 2
	j	.L6
.L13:
	.loc 1 26 9
	sw	zero,-24(s0)
	.loc 1 26 3
	j	.L7
.L12:
	.loc 1 27 8
	sw	zero,-32(s0)
	.loc 1 28 10
	sw	zero,-28(s0)
	.loc 1 28 4
	j	.L8
.L11:
	.loc 1 29 11
	sw	zero,-36(s0)
	.loc 1 29 5
	j	.L9
.L10:
	.loc 1 30 17 discriminator 3
	lw	a5,-28(s0)
	slli	a4,a5,2
	.loc 1 30 21 discriminator 3
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 30 14 discriminator 3
	lui	a4,%hi(B)
	addi	a4,a4,%lo(B)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 30 10 discriminator 3
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 29 32 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L9:
	.loc 1 29 21 discriminator 1
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 1 29 25 discriminator 1
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 1 29 18 discriminator 1
	lui	a4,%hi(A)
	addi	a4,a4,%lo(A)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 29 16 discriminator 1
	lw	a4,-36(s0)
	blt	a4,a5,.L10
	.loc 1 28 19 discriminator 2
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L8:
	.loc 1 28 15 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L11
	.loc 1 34 13 discriminator 2
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 1 34 17 discriminator 2
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 34 22 discriminator 2
	lui	a4,%hi(result)
	addi	a4,a4,%lo(result)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 1 26 19 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L7:
	.loc 1 26 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	ble	a4,a5,.L12
	.loc 1 25 18 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 25 13 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L13
	.loc 1 37 9
	lui	a5,%hi(result)
	addi	a5,a5,%lo(result)
	.loc 1 38 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	matmul, .-matmul
	.text
.Letext0:
	.file 2 "../../firmware/matmul.h"
	.file 3 "../../firmware/adder.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x149
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.4byte	.LASF9
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x3
	.4byte	0x3d
	.4byte	0x36
	.byte	0x4
	.4byte	0x36
	.byte	0x9
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x5
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	Number
	.byte	0x3
	.4byte	0x3d
	.4byte	0x65
	.byte	0x4
	.4byte	0x36
	.byte	0xf
	.byte	0
	.byte	0x6
	.string	"A"
	.byte	0x5
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	A
	.byte	0x6
	.string	"B"
	.byte	0xa
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	B
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0xf
	.4byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	result
	.byte	0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0x10
	.byte	0x33
	.4byte	0xff
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xff
	.byte	0x1
	.string	"i"
	.byte	0x12
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1
	.string	"j"
	.byte	0x13
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1
	.string	"k"
	.byte	0x14
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1
	.string	"sum"
	.byte	0x15
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x1
	.string	"kk"
	.byte	0x16
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2
	.4byte	.LASF5
	.byte	0x17
	.byte	0xf
	.4byte	0x36
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x7
	.4byte	.LASF7
	.byte	0x18
	.4byte	0x3d
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x3d
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3
	.byte	0x32
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LASF6
	.byte	0x5
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.4byte	0x3d
	.byte	0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x2
	.4byte	.LASF8
	.byte	0x7
	.byte	0xb
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"unsigned int"
.LASF4:
	.string	"result"
.LASF11:
	.string	"adder"
.LASF8:
	.string	"index"
.LASF5:
	.string	"count"
.LASF3:
	.string	"Number"
.LASF7:
	.string	"buff"
.LASF6:
	.string	"local_var"
.LASF10:
	.string	"matmul"
.LASF9:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/andy/SoC_Lab_LabD/testbench/counter_la"
.LASF0:
	.string	"../../firmware/adder.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
