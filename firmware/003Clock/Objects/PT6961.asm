;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X ppc)
;--------------------------------------------------------
	.module PT6961
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _u8segments
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
	.globl _pt6961_setNumberFade_PARM_2
	.globl _pt6961_setNumber_PARM_2
	.globl _pt6961_writeBit
	.globl _pt6961_writeByte
	.globl _pt6961_writeCommand
	.globl _pt6961_clear
	.globl _pt6961_setBrightness
	.globl _pt6961_init
	.globl _pt6961_setNumber
	.globl _pt6961_setNumberFade
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_pt6961_setNumber_PARM_2:
	.ds 1
_pt6961_setNumberFade_lastNumber_10000_208:
	.ds 2
_pt6961_setNumberFade_lastColon_10000_208:
	.ds 1
_pt6961_setNumberFade_PARM_2:
	.ds 1
_pt6961_setNumberFade_number_10000_207:
	.ds 2
_pt6961_setNumberFade_i_20000_209:
	.ds 1
_pt6961_setNumberFade_j_40000_211:
	.ds 1
_pt6961_setNumberFade_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_setNumberFade'
;------------------------------------------------------------
;lastNumber                Allocated with name '_pt6961_setNumberFade_lastNumber_10000_208'
;lastColon                 Allocated with name '_pt6961_setNumberFade_lastColon_10000_208'
;u8colonOn                 Allocated with name '_pt6961_setNumberFade_PARM_2'
;number                    Allocated with name '_pt6961_setNumberFade_number_10000_207'
;i                         Allocated with name '_pt6961_setNumberFade_i_20000_209'
;j                         Allocated with name '_pt6961_setNumberFade_j_40000_211'
;__700000019               Allocated to registers 
;u8data                    Allocated to registers 
;__700000021               Allocated to registers 
;u8data                    Allocated to registers 
;__700000023               Allocated to registers 
;u8data                    Allocated to registers 
;__700000025               Allocated to registers 
;u8data                    Allocated to registers 
;__700000027               Allocated to registers 
;u8data                    Allocated to registers 
;__700000029               Allocated to registers 
;u8data                    Allocated to registers 
;__700000031               Allocated to registers 
;u8data                    Allocated to registers 
;__700000033               Allocated to registers 
;u8data                    Allocated to registers 
;sloc0                     Allocated with name '_pt6961_setNumberFade_sloc0_1_0'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:82: static int lastNumber = 0;
	clr	a
	mov	_pt6961_setNumberFade_lastNumber_10000_208,a
	mov	(_pt6961_setNumberFade_lastNumber_10000_208 + 1),a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:83: static uint8_t lastColon = 0;
	mov	_pt6961_setNumberFade_lastColon_10000_208,a
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
;Allocation info for local variables in function 'pt6961_writeBit'
;------------------------------------------------------------
;u8data                    Allocated to registers r7 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:8: inline void pt6961_writeBit(uint8_t u8data)
;	-----------------------------------------
;	 function pt6961_writeBit
;	-----------------------------------------
_pt6961_writeBit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:10: PT6961_DIN = u8data & 0x01;
	mov	a,dpl
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P00,c
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:11: PT6961_CLK = 0;
;	assignBit
	clr	_P10
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:12: PT6961_CLK = 1;
;	assignBit
	setb	_P10
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_writeByte'
;------------------------------------------------------------
;u8data                    Allocated to registers 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:15: inline void pt6961_writeByte(uint8_t u8data)
;	-----------------------------------------
;	 function pt6961_writeByte
;	-----------------------------------------
_pt6961_writeByte:
	mov	_SPDR,dpl
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00101$:
	mov	a,_SPSR
	jnb	acc.7,00101$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_writeCommand'
;------------------------------------------------------------
;u8cmd                     Allocated to registers r7 
;__200000001               Allocated to registers 
;u8data                    Allocated to registers 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:27: void pt6961_writeCommand(uint8_t u8cmd)
;	-----------------------------------------
;	 function pt6961_writeCommand
;	-----------------------------------------
_pt6961_writeCommand:
	mov	r7, dpl
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:29: PT6961_STB = 1; // Initialize serial communication
;	assignBit
	setb	_P11
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:30: PT6961_STB = 0;
;	assignBit
	clr	_P11
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:18: SPDR = u8data;
	mov	_SPDR,r7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00101$:
	mov	a,_SPSR
	jnb	acc.7,00101$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:31: pt6961_writeByte(u8cmd);
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_clear'
;------------------------------------------------------------
;__200000003               Allocated to registers 
;u8data                    Allocated to registers 
;__200000005               Allocated to registers 
;u8data                    Allocated to registers 
;__200000007               Allocated to registers 
;u8data                    Allocated to registers 
;__200000009               Allocated to registers 
;u8data                    Allocated to registers 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:34: void pt6961_clear(void)
;	-----------------------------------------
;	 function pt6961_clear
;	-----------------------------------------
_pt6961_clear:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:36: pt6961_writeCommand(0xC0);
	mov	dpl, #0xc0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:18: SPDR = u8data;
	mov	_SPDR,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00101$:
	mov	a,_SPSR
	jnb	acc.7,00101$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:38: pt6961_writeCommand(0xC2);
	mov	dpl, #0xc2
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:18: SPDR = u8data;
	mov	_SPDR,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00105$:
	mov	a,_SPSR
	jnb	acc.7,00105$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:40: pt6961_writeCommand(0xC4);
	mov	dpl, #0xc4
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:18: SPDR = u8data;
	mov	_SPDR,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00109$:
	mov	a,_SPSR
	jnb	acc.7,00109$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:42: pt6961_writeCommand(0xC6);
	mov	dpl, #0xc6
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:18: SPDR = u8data;
	mov	_SPDR,#0x00
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00113$:
	mov	a,_SPSR
	jnb	acc.7,00113$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:43: pt6961_writeByte(0);
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_setBrightness'
;------------------------------------------------------------
;u8brightness              Allocated to registers r7 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:46: void pt6961_setBrightness(uint8_t u8brightness)
;	-----------------------------------------
;	 function pt6961_setBrightness
;	-----------------------------------------
_pt6961_setBrightness:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:48: if (u8brightness > 0)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:49: pt6961_writeCommand(0x88 | (u8brightness - 1 & 0x07));
	dec	r7
	mov	a,#0x07
	anl	a,r7
	orl	a,#0x88
	mov	dpl,a
	ljmp	_pt6961_writeCommand
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:51: pt6961_writeCommand(0x80);
	mov	dpl, #0x80
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:52: }
	ljmp	_pt6961_writeCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_init'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:54: void pt6961_init(void)
;	-----------------------------------------
;	 function pt6961_init
;	-----------------------------------------
_pt6961_init:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:56: P00_PUSHPULL_MODE;
	anl	_P0M1,#0xfe
	orl	_P0M2,#0x01
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:57: P10_PUSHPULL_MODE;
	anl	_P1M1,#0xfe
	orl	_P1M2,#0x01
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:58: P11_PUSHPULL_MODE;
	anl	_P1M1,#0xfd
	orl	_P1M2,#0x02
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:61: SPSR = 0x08; // DISMODF = 1
	mov	_SPSR,#0x08
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:62: SPCR = 0x7F; // SPIEN, LSBFE, MSTR, CPOL, CPHA = 1; SPI clock rate divide by 16
	mov	_SPCR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:64: pt6961_clear();
	lcall	_pt6961_clear
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:65: pt6961_setBrightness(4);
	mov	dpl, #0x04
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:66: }
	ljmp	_pt6961_setBrightness
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_setNumber'
;------------------------------------------------------------
;u8colonOn                 Allocated with name '_pt6961_setNumber_PARM_2'
;number                    Allocated to registers r6 r7 
;__200000011               Allocated to registers 
;u8data                    Allocated to registers 
;__200000013               Allocated to registers 
;u8data                    Allocated to registers 
;__200000015               Allocated to registers 
;u8data                    Allocated to registers 
;__200000017               Allocated to registers 
;u8data                    Allocated to registers 
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:68: void pt6961_setNumber(int number, uint8_t u8colonOn)
;	-----------------------------------------
;	 function pt6961_setNumber
;	-----------------------------------------
_pt6961_setNumber:
	mov	r6, dpl
	mov	r7, dph
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:70: pt6961_writeCommand(0xC0);
	mov	dpl, #0xc0
	push	ar7
	push	ar6
	lcall	_pt6961_writeCommand
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:71: pt6961_writeByte(u8segments[number / 1000] | (u8colonOn << 7));
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r5
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,_pt6961_setNumber_PARM_2
	rr	a
	anl	a,#0x80
	mov	r4,a
	orl	a,r5
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00101$:
	mov	a,_SPSR
	jnb	acc.7,00101$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:72: pt6961_writeCommand(0xC2);
	mov	dpl, #0xc2
	push	ar7
	push	ar6
	push	ar4
	lcall	_pt6961_writeCommand
	pop	ar4
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:73: pt6961_writeByte(u8segments[number / 100 % 10] | (u8colonOn << 7));
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar4
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3, dpl
	mov	r5, dph
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r5
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	orl	a,r4
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00105$:
	mov	a,_SPSR
	jnb	acc.7,00105$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:74: pt6961_writeCommand(0xC4);
	mov	dpl, #0xc4
	push	ar7
	push	ar6
	lcall	_pt6961_writeCommand
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:75: pt6961_writeByte(u8segments[number / 10 % 10]);
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r5
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00109$:
	mov	a,_SPSR
	jnb	acc.7,00109$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:76: pt6961_writeCommand(0xC6);
	mov	dpl, #0xc6
	push	ar7
	push	ar6
	lcall	_pt6961_writeCommand
	pop	ar6
	pop	ar7
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:77: pt6961_writeByte(u8segments[number % 10]);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00113$:
	mov	a,_SPSR
	jnb	acc.7,00113$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:77: pt6961_writeByte(u8segments[number % 10]);
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pt6961_setNumberFade'
;------------------------------------------------------------
;lastNumber                Allocated with name '_pt6961_setNumberFade_lastNumber_10000_208'
;lastColon                 Allocated with name '_pt6961_setNumberFade_lastColon_10000_208'
;u8colonOn                 Allocated with name '_pt6961_setNumberFade_PARM_2'
;number                    Allocated with name '_pt6961_setNumberFade_number_10000_207'
;i                         Allocated with name '_pt6961_setNumberFade_i_20000_209'
;j                         Allocated with name '_pt6961_setNumberFade_j_40000_211'
;__700000019               Allocated to registers 
;u8data                    Allocated to registers 
;__700000021               Allocated to registers 
;u8data                    Allocated to registers 
;__700000023               Allocated to registers 
;u8data                    Allocated to registers 
;__700000025               Allocated to registers 
;u8data                    Allocated to registers 
;__700000027               Allocated to registers 
;u8data                    Allocated to registers 
;__700000029               Allocated to registers 
;u8data                    Allocated to registers 
;__700000031               Allocated to registers 
;u8data                    Allocated to registers 
;__700000033               Allocated to registers 
;u8data                    Allocated to registers 
;sloc0                     Allocated with name '_pt6961_setNumberFade_sloc0_1_0'
;------------------------------------------------------------
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:80: void pt6961_setNumberFade(int number, uint8_t u8colonOn)
;	-----------------------------------------
;	 function pt6961_setNumberFade
;	-----------------------------------------
_pt6961_setNumberFade:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:85: for(uint8_t i=0; i<20; i++)
	mov	_pt6961_setNumberFade_number_10000_207,dpl
	mov	(_pt6961_setNumberFade_number_10000_207 + 1),dph
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r4, dpl
	mov	r5, dph
	mov	a,r4
	add	a, #_u8segments
	mov	r4,a
	mov	a,r5
	addc	a, #(_u8segments >> 8)
	mov	r5,a
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_number_10000_207
	mov	dph, (_pt6961_setNumberFade_number_10000_207 + 1)
	push	ar5
	push	ar4
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r2, dpl
	mov	r3, dph
	mov	a,r2
	add	a, #_u8segments
	mov	r2,a
	mov	a,r3
	addc	a, #(_u8segments >> 8)
	mov	r3,a
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_number_10000_207
	mov	dph, (_pt6961_setNumberFade_number_10000_207 + 1)
	push	ar3
	push	ar2
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r0, dpl
	mov	r1, dph
	mov	a,r0
	add	a, #_u8segments
	mov	r0,a
	mov	a,r1
	addc	a, #(_u8segments >> 8)
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_number_10000_207
	mov	dph, (_pt6961_setNumberFade_number_10000_207 + 1)
	push	ar1
	push	ar0
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a, #_u8segments
	mov	_pt6961_setNumberFade_sloc0_1_0,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	(_pt6961_setNumberFade_sloc0_1_0 + 1),a
	mov	_pt6961_setNumberFade_i_20000_209,#0x00
00142$:
	mov	a,#0x100 - 0x14
	add	a,_pt6961_setNumberFade_i_20000_209
	jnc	00274$
	ljmp	00105$
00274$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:87: for(uint8_t j=0; j<20; j++)
	mov	_pt6961_setNumberFade_j_40000_211,#0x00
00139$:
	mov	a,#0x100 - 0x14
	add	a,_pt6961_setNumberFade_j_40000_211
	jnc	00275$
	ljmp	00143$
00275$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:89: if (i>=j)
	clr	c
	mov	a,_pt6961_setNumberFade_i_20000_209
	subb	a,_pt6961_setNumberFade_j_40000_211
	jnc	00276$
	ljmp	00102$
00276$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:91: pt6961_writeCommand(0xC0);
	mov	dpl, #0xc0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:92: pt6961_writeByte(u8segments[number / 1000] | (u8colonOn << 7));
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,_pt6961_setNumberFade_PARM_2
	rr	a
	anl	a,#0x80
	mov	r6,a
	orl	a,r7
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00106$:
	mov	a,_SPSR
	jnb	acc.7,00106$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:93: pt6961_writeCommand(0xC2);
	mov	dpl, #0xc2
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:94: pt6961_writeByte(u8segments[number / 100 % 10] | (u8colonOn << 7));
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movc	a,@a+dptr
	orl	a,r6
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00110$:
	mov	a,_SPSR
	jnb	acc.7,00110$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:95: pt6961_writeCommand(0xC4);
	mov	dpl, #0xc4
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:96: pt6961_writeByte(u8segments[number / 10 % 10]);
	mov	dpl,r0
	mov	dph,r1
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00114$:
	mov	a,_SPSR
	jnb	acc.7,00114$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:97: pt6961_writeCommand(0xC6);
	mov	dpl, #0xc6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:98: pt6961_writeByte(u8segments[number % 10]);
	mov	dpl,_pt6961_setNumberFade_sloc0_1_0
	mov	dph,(_pt6961_setNumberFade_sloc0_1_0 + 1)
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00118$:
	mov	a,_SPSR
	jnb	acc.7,00118$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:98: pt6961_writeByte(u8segments[number % 10]);
	ljmp	00140$
00102$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:102: pt6961_writeCommand(0xC0);
	mov	dpl, #0xc0
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:103: pt6961_writeByte(u8segments[lastNumber / 1000] | (lastColon << 7));
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl, _pt6961_setNumberFade_lastNumber_10000_208
	mov	dph, (_pt6961_setNumberFade_lastNumber_10000_208 + 1)
	lcall	__divsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,_pt6961_setNumberFade_lastColon_10000_208
	rr	a
	anl	a,#0x80
	orl	a,r7
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00122$:
	mov	a,_SPSR
	jnb	acc.7,00122$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:104: pt6961_writeCommand(0xC2);
	mov	dpl, #0xc2
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:105: pt6961_writeByte(u8segments[lastNumber / 100 % 10] | (lastColon << 7));
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_lastNumber_10000_208
	mov	dph, (_pt6961_setNumberFade_lastNumber_10000_208 + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,_pt6961_setNumberFade_lastColon_10000_208
	rr	a
	anl	a,#0x80
	orl	a,r7
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00126$:
	mov	a,_SPSR
	jnb	acc.7,00126$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:106: pt6961_writeCommand(0xC4);
	mov	dpl, #0xc4
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:107: pt6961_writeByte(u8segments[lastNumber / 10 % 10]);
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_lastNumber_10000_208
	mov	dph, (_pt6961_setNumberFade_lastNumber_10000_208 + 1)
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00130$:
	mov	a,_SPSR
	jnb	acc.7,00130$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:108: pt6961_writeCommand(0xC6);
	mov	dpl, #0xc6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_pt6961_writeCommand
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:109: pt6961_writeByte(u8segments[lastNumber % 10]);
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _pt6961_setNumberFade_lastNumber_10000_208
	mov	dph, (_pt6961_setNumberFade_lastNumber_10000_208 + 1)
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a, #_u8segments
	mov	dpl,a
	mov	a,r7
	addc	a, #(_u8segments >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_SPDR,a
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:19: while (!(SPSR & 0x80)); // Wait until transfer is complete
00134$:
	mov	a,_SPSR
	jnb	acc.7,00134$
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:20: SPSR &= 0x7F; // Clear SPIF
	anl	_SPSR,#0x7f
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:109: pt6961_writeByte(u8segments[lastNumber % 10]);
00140$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:87: for(uint8_t j=0; j<20; j++)
	inc	_pt6961_setNumberFade_j_40000_211
	ljmp	00139$
00143$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:85: for(uint8_t i=0; i<20; i++)
	inc	_pt6961_setNumberFade_i_20000_209
	ljmp	00142$
00105$:
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:114: lastNumber = number;
	mov	_pt6961_setNumberFade_lastNumber_10000_208,_pt6961_setNumberFade_number_10000_207
	mov	(_pt6961_setNumberFade_lastNumber_10000_208 + 1),(_pt6961_setNumberFade_number_10000_207 + 1)
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:115: lastColon = u8colonOn;
	mov	_pt6961_setNumberFade_lastColon_10000_208,_pt6961_setNumberFade_PARM_2
;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/PT6961.c:116: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_u8segments:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x67	; 103	'g'
	.db #0x77	; 119	'w'
	.db #0x7c	; 124
	.db #0x58	; 88	'X'
	.db #0x5e	; 94
	.db #0x79	; 121	'y'
	.db #0x71	; 113	'q'
	.db #0x80	; 128
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
