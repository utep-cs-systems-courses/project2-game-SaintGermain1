	.arch msp430g2553
	.p2align 1,0 //aligns bytes so instuctions are read properly
	.text	//put what is typed here on the text section of memory

	;;  routines to access sr

	.global set_sr	//allows you to use routines outside scope of file
	
set_sr:	nop	//makes space
	mov r12, r2
	nop
	ret

	.global get_sr
get_sr:	mov r2, r12
	ret

	.global or_sr
or_sr:	nop
	bis r12, r2
	nop
	ret
	
	.global and_sr
and_sr:	nop
	and r12, r2
	nop
	ret
