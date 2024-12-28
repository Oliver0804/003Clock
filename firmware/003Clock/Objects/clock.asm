;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X ppc)
;--------------------------------------------------------
	.module clock
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clock_PARM_2
	.globl _clock
	.globl _getTime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_clock_PARM_2:
	.ds 1
_clock_pTimeStr_10000_3:
	.ds 3
_clock_sloc0_1_0:
	.ds 1
_clock_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'clock'
;------------------------------------------------------------
;isStopwatch               Allocated with name '_clock_PARM_2'
;pTimeStr                  Allocated with name '_clock_pTimeStr_10000_3'
;sloc0                     Allocated with name '_clock_sloc0_1_0'
;sloc1                     Allocated with name '_clock_sloc1_1_0'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:3: void clock(STR_TIME_T *pTimeStr, char isStopwatch)
;	-----------------------------------------
;	 function clock
;	-----------------------------------------
_clock:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:5: if (pTimeStr->second >= 59)
	mov	_clock_pTimeStr_10000_3,dpl
	mov	(_clock_pTimeStr_10000_3 + 1),dph
	mov	(_clock_pTimeStr_10000_3 + 2),b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x3b,00139$
00139$:
	jnc	00140$
	ljmp	00111$
00140$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:7: pTimeStr->second = 0;
	mov	dpl,_clock_pTimeStr_10000_3
	mov	dph,(_clock_pTimeStr_10000_3 + 1)
	mov	b,(_clock_pTimeStr_10000_3 + 2)
	clr	a
	lcall	__gptrput
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:8: if ((pTimeStr->minute >= 59 && isStopwatch == 0) || (pTimeStr->minute >= 99 && isStopwatch == 1))
	inc	a
	add	a, _clock_pTimeStr_10000_3
	mov	r1,a
	clr	a
	addc	a, (_clock_pTimeStr_10000_3 + 1)
	mov	r2,a
	mov	r3,(_clock_pTimeStr_10000_3 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x3b,00141$
00141$:
	jc	00109$
	mov	a,_clock_PARM_2
	jz	00104$
00109$:
	cjne	r0,#0x63,00144$
00144$:
	jc	00105$
	mov	a,#0x01
	cjne	a,_clock_PARM_2,00105$
00104$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:10: pTimeStr->minute = 0;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:11: if (pTimeStr->hour >= 23)
	mov	a,#0x02
	add	a, _clock_pTimeStr_10000_3
	mov	_clock_sloc1_1_0,a
	clr	a
	addc	a, (_clock_pTimeStr_10000_3 + 1)
	mov	(_clock_sloc1_1_0 + 1),a
	mov	(_clock_sloc1_1_0 + 2),(_clock_pTimeStr_10000_3 + 2)
	mov	dpl,_clock_sloc1_1_0
	mov	dph,(_clock_sloc1_1_0 + 1)
	mov	b,(_clock_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_clock_sloc0_1_0,a
	clr	c
	subb	a,#0x17
	jc	00102$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:12: pTimeStr->hour = 0;
	mov	dpl,_clock_sloc1_1_0
	mov	dph,(_clock_sloc1_1_0 + 1)
	mov	b,(_clock_sloc1_1_0 + 2)
	clr	a
	ljmp	__gptrput
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:14: pTimeStr->hour = pTimeStr->hour + 1;
	mov	r7,_clock_sloc0_1_0
	inc	r7
	mov	dpl,_clock_sloc1_1_0
	mov	dph,(_clock_sloc1_1_0 + 1)
	mov	b,(_clock_sloc1_1_0 + 2)
	mov	a,r7
	ljmp	__gptrput
00105$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:17: pTimeStr->minute = pTimeStr->minute + 1;
	inc	r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	ljmp	__gptrput
00111$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:20: pTimeStr->second = pTimeStr->second + 1;
	inc	r4
	mov	dpl,_clock_pTimeStr_10000_3
	mov	dph,(_clock_pTimeStr_10000_3 + 1)
	mov	b,(_clock_pTimeStr_10000_3 + 2)
	mov	a,r4
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:21: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'getTime'
;------------------------------------------------------------
;pTimeStr                  Allocated to registers r5 r6 r7 
;time_int                  Allocated to registers 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:23: inline int getTime(STR_TIME_T *pTimeStr)
;	-----------------------------------------
;	 function getTime
;	-----------------------------------------
_getTime:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:27: time_int = (int)pTimeStr->hour * 100 + pTimeStr->minute;
	mov	a,#0x02
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	__mulint_PARM_2,r2
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a, r3
	mov	dpl,a
	mov	a,r7
	addc	a, r4
	mov	dph,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:29: return time_int;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/clock.c:30: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
