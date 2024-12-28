;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _showSetup
	.globl _showStopwatch
	.globl _showSecond
	.globl _showTime
	.globl _Timer3_ISR
	.globl _getTime
	.globl _clock
	.globl _pt6961_setNumberFade
	.globl _pt6961_setNumber
	.globl _pt6961_init
	.globl _pt6961_setBrightness
	.globl _pt6961_writeCommand
	.globl _pt6961_writeByte
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWK
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _isrFunction
	.globl _stopwatch
	.globl _time
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_RCTRIM0	=	0x0084
_RCTRIM1	=	0x0085
_RWK	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3S	=	0x00ac
_P3M2	=	0x00ad
_P3SR	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0S	=	0x00b1
_P0M2	=	0x00b2
_P0SR	=	0x00b2
_P1M1	=	0x00b3
_P1S	=	0x00b3
_P1M2	=	0x00b4
_P1SR	=	0x00b4
_P2S	=	0x00b5
_IPH	=	0x00b7
_PWMINTC	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_PWM4H	=	0x00c4
_RL3	=	0x00c5
_PWM5H	=	0x00c5
_RH3	=	0x00c6
_PIOCON1	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_PWM4L	=	0x00cc
_TH2	=	0x00cd
_PWM5L	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWMPH	=	0x00d1
_PWM0H	=	0x00d2
_PWM1H	=	0x00d3
_PWM2H	=	0x00d4
_PWM3H	=	0x00d5
_PNP	=	0x00d6
_FBD	=	0x00d7
_PWMCON0	=	0x00d8
_PWMPL	=	0x00d9
_PWM0L	=	0x00da
_PWM1L	=	0x00db
_PWM2L	=	0x00dc
_PWM3L	=	0x00dd
_PIOCON0	=	0x00de
_PWMCON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPCR2	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PDTEN	=	0x00f9
_PDTCNT	=	0x00fa
_PMEN	=	0x00fb
_PMD	=	0x00fc
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_time::
	.ds 3
_stopwatch::
	.ds 3
_isrFunction::
	.ds 2
_Timer3_ISR_u8counter_10000_170:
	.ds 1
_showTime_u8counter_10000_173:
	.ds 1
_showTime_time_int_10000_173:
	.ds 2
_showStopwatch_u8counter_10000_179:
	.ds 1
_showStopwatch_stopwatch_int_10000_179:
	.ds 2
_showSetup_u16counter_10000_183:
	.ds 2
_showSetup_time_int_10000_183:
	.ds 2
_showSetup_time_int_last_10000_183:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Timer3_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3_ISR'
;------------------------------------------------------------
;u8counter                 Allocated with name '_Timer3_ISR_u8counter_10000_170'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:11: void Timer3_ISR(void) __interrupt (16)
;	-----------------------------------------
;	 function Timer3_ISR
;	-----------------------------------------
_Timer3_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:15: if ((u8counter & 0x01) == 0)
	mov	a,_Timer3_ISR_u8counter_10000_170
	jb	acc.0,00102$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:17: clock(&time, 0);
	mov	_clock_PARM_2,#0x00
	mov	dptr,#_time
	mov	b, #0x40
	lcall	_clock
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:18: clock(&stopwatch, 1);
	mov	_clock_PARM_2,#0x01
	mov	dptr,#_stopwatch
	mov	b, #0x40
	lcall	_clock
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:21: u8counter ++;
	inc	_Timer3_ISR_u8counter_10000_170
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:23: (*isrFunction)();
	mov	dpl,_isrFunction
	mov	dph,(_isrFunction + 1)
	lcall	__sdcc_call_dptr
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:25: T3CON &= 0xEF; // Clear TF3
	anl	_T3CON,#0xef
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:26: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'showTime'
;------------------------------------------------------------
;u8counter                 Allocated with name '_showTime_u8counter_10000_173'
;time_int                  Allocated with name '_showTime_time_int_10000_173'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:28: void showTime(void)
;	-----------------------------------------
;	 function showTime
;	-----------------------------------------
_showTime:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:33: time_int = getTime(&time);
	mov	dptr,#_time
	mov	b, #0x40
	lcall	_getTime
	mov	_showTime_time_int_10000_173,dpl
	mov	(_showTime_time_int_10000_173 + 1),dph
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:35: if ((u8counter & 0x01) == 0)
	mov	a,_showTime_u8counter_10000_173
	jb	acc.0,00102$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:37: pt6961_setNumberFade(time_int, 0);
	mov	_pt6961_setNumberFade_PARM_2,#0x00
	mov	dpl, _showTime_time_int_10000_173
	mov	dph, (_showTime_time_int_10000_173 + 1)
	lcall	_pt6961_setNumberFade
	sjmp	00103$
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:41: pt6961_setNumberFade(time_int, 1);
	mov	_pt6961_setNumberFade_PARM_2,#0x01
	mov	dpl, _showTime_time_int_10000_173
	mov	dph, (_showTime_time_int_10000_173 + 1)
	lcall	_pt6961_setNumberFade
00103$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:43: u8counter ++;
	inc	_showTime_u8counter_10000_173
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showSecond'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:46: void showSecond(void)
;	-----------------------------------------
;	 function showSecond
;	-----------------------------------------
_showSecond:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:48: pt6961_setNumberFade(time.second, 1);
	mov	r6,_time
	mov	r7,#0x00
	mov	_pt6961_setNumberFade_PARM_2,#0x01
	mov	dpl, r6
	mov	dph, r7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:49: }
	ljmp	_pt6961_setNumberFade
;------------------------------------------------------------
;Allocation info for local variables in function 'showStopwatch'
;------------------------------------------------------------
;u8counter                 Allocated with name '_showStopwatch_u8counter_10000_179'
;stopwatch_int             Allocated with name '_showStopwatch_stopwatch_int_10000_179'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:51: void showStopwatch(void)
;	-----------------------------------------
;	 function showStopwatch
;	-----------------------------------------
_showStopwatch:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:56: stopwatch_int = (int)stopwatch.minute * 100 + stopwatch.second;
	mov	__mulint_PARM_2,(_stopwatch + 0x0001)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6, dpl
	mov	r7, dph
	mov	r4,_stopwatch
	mov	r5,#0x00
	mov	a,r4
	add	a, r6
	mov	_showStopwatch_stopwatch_int_10000_179,a
	mov	a,r5
	addc	a, r7
	mov	(_showStopwatch_stopwatch_int_10000_179 + 1),a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:58: if ((u8counter & 0x01) == 0)
	mov	a,_showStopwatch_u8counter_10000_179
	jb	acc.0,00102$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:60: pt6961_setNumberFade(stopwatch_int, 0);
	mov	_pt6961_setNumberFade_PARM_2,#0x00
	mov	dpl, _showStopwatch_stopwatch_int_10000_179
	mov	dph, (_showStopwatch_stopwatch_int_10000_179 + 1)
	lcall	_pt6961_setNumberFade
	sjmp	00103$
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:64: pt6961_setNumberFade(stopwatch_int, 1);
	mov	_pt6961_setNumberFade_PARM_2,#0x01
	mov	dpl, _showStopwatch_stopwatch_int_10000_179
	mov	dph, (_showStopwatch_stopwatch_int_10000_179 + 1)
	lcall	_pt6961_setNumberFade
00103$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:66: u8counter ++;
	inc	_showStopwatch_u8counter_10000_179
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'showSetup'
;------------------------------------------------------------
;u16counter                Allocated with name '_showSetup_u16counter_10000_183'
;time_int                  Allocated with name '_showSetup_time_int_10000_183'
;time_int_last             Allocated with name '_showSetup_time_int_last_10000_183'
;u8blink                   Allocated to registers r7 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:69: void showSetup(uint8_t u8blink)
;	-----------------------------------------
;	 function showSetup
;	-----------------------------------------
_showSetup:
	mov	r7, dpl
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:74: time_int = getTime(&time);
	mov	dptr,#_time
	mov	b, #0x40
	push	ar7
	lcall	_getTime
	mov	_showSetup_time_int_10000_183,dpl
	mov	(_showSetup_time_int_10000_183 + 1),dph
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:76: if (u16counter > 1000 || time_int != time_int_last)
	mov	r5,_showSetup_u16counter_10000_183
	mov	r6,(_showSetup_u16counter_10000_183 + 1)
	clr	c
	mov	a,#0xe8
	subb	a,r5
	mov	a,#0x03
	subb	a,r6
	jc	00101$
	mov	a,_showSetup_time_int_last_10000_183
	cjne	a,_showSetup_time_int_10000_183,00153$
	mov	a,(_showSetup_time_int_last_10000_183 + 1)
	cjne	a,(_showSetup_time_int_10000_183 + 1),00153$
	sjmp	00102$
00153$:
00101$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:77: u16counter = 0;
	clr	a
	mov	_showSetup_u16counter_10000_183,a
	mov	(_showSetup_u16counter_10000_183 + 1),a
	sjmp	00103$
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:79: u16counter ++;
	inc	_showSetup_u16counter_10000_183
	clr	a
	cjne	a,_showSetup_u16counter_10000_183,00154$
	inc	(_showSetup_u16counter_10000_183 + 1)
00154$:
00103$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:81: if (u16counter < 500)
	mov	r5,_showSetup_u16counter_10000_183
	mov	r6,(_showSetup_u16counter_10000_183 + 1)
	clr	c
	mov	a,r5
	subb	a,#0xf4
	mov	a,r6
	subb	a,#0x01
	jnc	00112$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:83: pt6961_setNumber(time_int, 1);
	mov	_pt6961_setNumber_PARM_2,#0x01
	mov	dpl, _showSetup_time_int_10000_183
	mov	dph, (_showSetup_time_int_10000_183 + 1)
	lcall	_pt6961_setNumber
	sjmp	00113$
00112$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:87: switch (u8blink)
	cjne	r7,#0x01,00156$
	sjmp	00105$
00156$:
	cjne	r7,#0x02,00157$
	sjmp	00106$
00157$:
	cjne	r7,#0x03,00158$
	sjmp	00107$
00158$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:89: case 1:
	cjne	r7,#0x04,00113$
	sjmp	00108$
00105$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:90: pt6961_writeCommand(0xC0);
	mov	dpl, #0xc0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:91: pt6961_writeByte(0x80); // Light up colon only
	mov	dpl, #0x80
	lcall	_pt6961_writeByte
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:92: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:94: case 2:
	sjmp	00113$
00106$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:95: pt6961_writeCommand(0xC2);
	mov	dpl, #0xc2
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:96: pt6961_writeByte(0x80); // Light up colon only
	mov	dpl, #0x80
	lcall	_pt6961_writeByte
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:97: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:99: case 3:
	sjmp	00113$
00107$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:100: pt6961_writeCommand(0xC4);
	mov	dpl, #0xc4
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:101: pt6961_writeByte(0x00);
	mov	dpl, #0x00
	lcall	_pt6961_writeByte
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:102: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:104: case 4:
	sjmp	00113$
00108$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:105: pt6961_writeCommand(0xC6);
	mov	dpl, #0xc6
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:106: pt6961_writeByte(0x00);
	mov	dpl, #0x00
	lcall	_pt6961_writeByte
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:111: }
00113$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:114: time_int_last = time_int;
	mov	_showSetup_time_int_last_10000_183,_showSetup_time_int_10000_183
	mov	(_showSetup_time_int_last_10000_183 + 1),(_showSetup_time_int_10000_183 + 1)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;u16swCount                Allocated to registers r6 r7 
;u8mode                    Allocated to registers r5 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:117: void main(void) 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:119: uint16_t u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:120: uint8_t u8mode = 0;
	mov	r5,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:122: TA = 0xAA;
	mov	_TA,#0xaa
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:123: TA = 0x55;
	mov	_TA,#0x55
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:124: CKEN |= 0xC0; // EXTEN
	orl	_CKEN,#0xc0
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:125: while(!(CKSWT & 0x08)); // ECLKST
00101$:
	mov	a,_CKSWT
	jnb	acc.3,00101$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:126: TA = 0xAA;
	mov	_TA,#0xaa
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:127: TA = 0x55;
	mov	_TA,#0x55
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:128: CKSWT |= 0x02; // Switch to external clock source
	orl	_CKSWT,#0x02
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:129: while(CKEN & 0x01); // CKSWTF
00104$:
	mov	a,_CKEN
	jb	acc.0,00104$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:130: TA = 0xAA;
	mov	_TA,#0xaa
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:131: TA = 0x55;
	mov	_TA,#0x55
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:132: CKEN &= 0xDF; // Disable HIRC
	anl	_CKEN,#0xdf
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:134: P12_PUSHPULL_MODE;
	anl	_P1M1,#0xfb
	orl	_P1M2,#0x04
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:135: P17_QUASI_MODE;
	anl	_P1M1,#0x7f
	anl	_P1M2,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:137: pt6961_init();
	push	ar7
	push	ar6
	push	ar5
	lcall	_pt6961_init
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:138: pt6961_setBrightness(4);
	mov	dpl, #0x04
	lcall	_pt6961_setBrightness
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:140: CKCON |= 0x08; // Timer 0 source from Fsys directly
	orl	_CKCON,#0x08
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:141: TH0 = (uint8_t)(49536 >> 8); // 65536 - 16000
	mov	_TH0,#0xc1
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:142: TL0 = (uint8_t)(49536 & 0xFF);
	mov	_TL0,#0x80
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:143: TMOD |= 0x01; // Timer 0 mode 1
	orl	_TMOD,#0x01
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:144: TCON |= 0x10; // Timer 0 run
	orl	_TCON,#0x10
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:146: isrFunction = &showTime;
	mov	_isrFunction,#_showTime
	mov	(_isrFunction + 1),#(_showTime >> 8)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:148: RH3 = (uint8_t)(3036 >> 8); // 65536 - 62500
	mov	_RH3,#0x0b
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:149: RL3 = (uint8_t)(3036 & 0xFF);
	mov	_RL3,#0xdc
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:150: T3CON = 0x0F; // Timer 3 run, pre-scalar = 1/128
	mov	_T3CON,#0x0f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:151: EIE1 |= 0x02; // Enable timer 3 interrupt
	orl	_EIE1,#0x02
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:152: EA = 1;
;	assignBit
	setb	_EA
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:154: while(1)
00180$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:156: if (!SW1) {
	jb	_P17,00110$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:157: u16swCount++;
	inc	r6
	cjne	r6,#0x00,00415$
	inc	r7
00415$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:158: if (u16swCount == 2000)
	mov	ar3,r6
	mov	ar4,r7
	cjne	r3,#0xd0,00110$
	cjne	r4,#0x07,00110$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:159: u8mode++;
	inc	r5
00110$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:162: switch (u8mode) {
	mov	a,r5
	add	a,#0xff - 0x09
	jnc	00418$
	ljmp	00174$
00418$:
	mov	a,r5
	add	a,#(00419$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(00420$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00419$:
	.db	00111$
	.db	00117$
	.db	00129$
	.db	00142$
	.db	00151$
	.db	00160$
	.db	00161$
	.db	00174$
	.db	00167$
	.db	00173$
00420$:
	.db	00111$>>8
	.db	00117$>>8
	.db	00129$>>8
	.db	00142$>>8
	.db	00151$>>8
	.db	00160$>>8
	.db	00161$>>8
	.db	00174$>>8
	.db	00167$>>8
	.db	00173$>>8
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:163: case 0:
00111$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:164: isrFunction = &showTime;
	mov	_isrFunction,#_showTime
	mov	(_isrFunction + 1),#(_showTime >> 8)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:165: if (SW1) {
	jb	_P17,00421$
	ljmp	00175$
00421$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:166: if (u16swCount > 20 && u16swCount < 2000)
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00113$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00113$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:167: u8mode = 6;
	mov	r5,#0x06
00113$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:168: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:170: break;
	ljmp	00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:172: case 1:
00117$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:173: EIE1 &= 0xFD; // Disable timer 3 interrupt
	anl	_EIE1,#0xfd
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:174: showSetup(u8mode);
	mov	dpl, r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_showSetup
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:175: if (SW1) {
	jb	_P17,00424$
	ljmp	00175$
00424$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:176: if (u16swCount > 20 && u16swCount < 2000) {
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00125$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00125$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:177: if (time.hour < 14)
	mov	r4,(_time + 0x0002)
	cjne	r4,#0x0e,00427$
00427$:
	jnc	00122$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:178: time.hour += 10;
	mov	ar3,r4
	mov	a,#0x0a
	add	a, r3
	mov	(_time + 0x0002),a
	sjmp	00125$
00122$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:179: else if (time.hour < 20)
	cjne	r4,#0x14,00429$
00429$:
	jnc	00119$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:180: time.hour = 20;
	mov	(_time + 0x0002),#0x14
	sjmp	00125$
00119$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:182: time.hour -= 20;
	mov	a,r4
	add	a,#0xec
	mov	(_time + 0x0002),a
00125$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:184: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:186: break;
	ljmp	00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:188: case 2:
00129$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:189: showSetup(u8mode);
	mov	dpl, r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_showSetup
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:190: if (SW1) {
	jb	_P17,00431$
	ljmp	00175$
00431$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:191: if (u16swCount > 20 && u16swCount < 2000) {
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00138$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00138$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:192: if ((time.hour % 10) < 9 && time.hour < 23)
	mov	r4,(_time + 0x0002)
	mov	ar2,r4
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl, r2
	mov	dph, r3
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2, dpl
	mov	r3, dph
	pop	ar4
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,#0x09
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00134$
	cjne	r4,#0x17,00435$
00435$:
	jnc	00134$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:193: time.hour += 1;
	mov	a,r4
	inc	a
	mov	(_time + 0x0002),a
	sjmp	00138$
00134$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:194: else if (time.hour >= 23)
	mov	r4,(_time + 0x0002)
	cjne	r4,#0x17,00437$
00437$:
	jc	00131$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:195: time.hour -= 3;
	mov	ar3,r4
	mov	a,r3
	add	a,#0xfd
	mov	(_time + 0x0002),a
	sjmp	00138$
00131$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:197: time.hour -= 9;
	mov	a,r4
	add	a,#0xf7
	mov	(_time + 0x0002),a
00138$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:199: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:201: break;
	ljmp	00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:203: case 3:
00142$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:204: showSetup(u8mode);
	mov	dpl, r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_showSetup
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:205: if (SW1) {
	jb	_P17,00439$
	ljmp	00175$
00439$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:206: if (u16swCount > 20 && u16swCount < 2000) {
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00147$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00147$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:207: if (time.minute < 50)
	mov	r4,(_time + 0x0001)
	cjne	r4,#0x32,00442$
00442$:
	jnc	00144$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:208: time.minute += 10;
	mov	ar3,r4
	mov	a,#0x0a
	add	a, r3
	mov	(_time + 0x0001),a
	sjmp	00147$
00144$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:210: time.minute -= 50;
	mov	a,r4
	add	a,#0xce
	mov	(_time + 0x0001),a
00147$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:212: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:214: break;
	ljmp	00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:216: case 4:
00151$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:217: showSetup(u8mode);
	mov	dpl, r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_showSetup
	pop	ar5
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:218: if (SW1) {
	jb	_P17,00444$
	ljmp	00175$
00444$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:219: if (u16swCount > 20 && u16swCount < 2000) {
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00156$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00156$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:220: if ((time.minute % 10) < 9)
	mov	r4,(_time + 0x0001)
	mov	ar2,r4
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl, r2
	mov	dph, r3
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2, dpl
	mov	r3, dph
	pop	ar4
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,#0x09
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00153$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:221: time.minute += 1;
	mov	ar3,r4
	mov	a,r3
	inc	a
	mov	(_time + 0x0001),a
	sjmp	00156$
00153$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:223: time.minute -= 9;
	mov	a,r4
	add	a,#0xf7
	mov	(_time + 0x0001),a
00156$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:225: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:227: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:229: case 5:
	sjmp	00175$
00160$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:230: time.second = 0;
	mov	_time,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:231: EIE1 |= 0x02; // Enable timer 3 interrupt
	orl	_EIE1,#0x02
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:232: u8mode = 0;
	mov	r5,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:233: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:235: case 6:
	sjmp	00175$
00161$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:236: isrFunction = &showSecond;
	mov	_isrFunction,#_showSecond
	mov	(_isrFunction + 1),#(_showSecond >> 8)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:237: if (SW1) {
	jnb	_P17,00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:238: if (u16swCount > 20 && u16swCount < 2000)
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00163$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00163$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:239: u8mode = 8;
	mov	r5,#0x08
00163$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:240: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:242: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:246: case 8:
	sjmp	00175$
00167$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:247: isrFunction = &showStopwatch;
	mov	_isrFunction,#_showStopwatch
	mov	(_isrFunction + 1),#(_showStopwatch >> 8)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:248: if (SW1) {
	jnb	_P17,00175$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:249: if (u16swCount > 20 && u16swCount < 2000)
	mov	ar3,r6
	mov	ar4,r7
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00169$
	clr	c
	mov	a,r3
	subb	a,#0xd0
	mov	a,r4
	subb	a,#0x07
	jnc	00169$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:250: u8mode = 0;
	mov	r5,#0x00
00169$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:251: u16swCount = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:253: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:255: case 9:
	sjmp	00175$
00173$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:256: stopwatch.minute = 0; // Reset stopwatch then return to mode 8
	mov	(_stopwatch + 0x0001),#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:257: stopwatch.second = 0;
	mov	_stopwatch,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:258: u8mode = 8;
	mov	r5,#0x08
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:259: break;
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:261: default:
	sjmp	00175$
00174$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:262: u8mode = 0;
	mov	r5,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:263: }
00175$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:265: P12 = !P12;
	cpl	_P12
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:268: while (!(TCON & 0x20)); // Wait until timer 0 overflow
00176$:
	mov	a,_TCON
	mov	r4,a
	jnb	acc.5,00176$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:269: TH0 = (uint8_t)(49536 >> 8); // 65536 - 16000
	mov	_TH0,#0xc1
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:270: TL0 = (uint8_t)(49536 & 0xFF);
	mov	_TL0,#0x80
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:271: TCON &= 0xDF; // Clear TF0
	anl	_TCON,#0xdf
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:273: }
	ljmp	00180$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
