                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _showSetup
                                     13 	.globl _showStopwatch
                                     14 	.globl _showSecond
                                     15 	.globl _showTime
                                     16 	.globl _Timer3_ISR
                                     17 	.globl _getTime
                                     18 	.globl _clock
                                     19 	.globl _pt6961_setNumberFade
                                     20 	.globl _pt6961_setNumber
                                     21 	.globl _pt6961_init
                                     22 	.globl _pt6961_setBrightness
                                     23 	.globl _pt6961_writeCommand
                                     24 	.globl _pt6961_writeByte
                                     25 	.globl _MOSI
                                     26 	.globl _P00
                                     27 	.globl _MISO
                                     28 	.globl _P01
                                     29 	.globl _RXD_1
                                     30 	.globl _P02
                                     31 	.globl _P03
                                     32 	.globl _STADC
                                     33 	.globl _P04
                                     34 	.globl _P05
                                     35 	.globl _TXD
                                     36 	.globl _P06
                                     37 	.globl _RXD
                                     38 	.globl _P07
                                     39 	.globl _IT0
                                     40 	.globl _IE0
                                     41 	.globl _IT1
                                     42 	.globl _IE1
                                     43 	.globl _TR0
                                     44 	.globl _TF0
                                     45 	.globl _TR1
                                     46 	.globl _TF1
                                     47 	.globl _P10
                                     48 	.globl _P11
                                     49 	.globl _P12
                                     50 	.globl _SCL
                                     51 	.globl _P13
                                     52 	.globl _SDA
                                     53 	.globl _P14
                                     54 	.globl _P15
                                     55 	.globl _TXD_1
                                     56 	.globl _P16
                                     57 	.globl _P17
                                     58 	.globl _RI
                                     59 	.globl _TI
                                     60 	.globl _RB8
                                     61 	.globl _TB8
                                     62 	.globl _REN
                                     63 	.globl _SM2
                                     64 	.globl _SM1
                                     65 	.globl _FE
                                     66 	.globl _SM0
                                     67 	.globl _P20
                                     68 	.globl _EX0
                                     69 	.globl _ET0
                                     70 	.globl _EX1
                                     71 	.globl _ET1
                                     72 	.globl _ES
                                     73 	.globl _EBOD
                                     74 	.globl _EADC
                                     75 	.globl _EA
                                     76 	.globl _P30
                                     77 	.globl _PX0
                                     78 	.globl _PT0
                                     79 	.globl _PX1
                                     80 	.globl _PT1
                                     81 	.globl _PS
                                     82 	.globl _PBOD
                                     83 	.globl _PADC
                                     84 	.globl _I2CPX
                                     85 	.globl _AA
                                     86 	.globl _SI
                                     87 	.globl _STO
                                     88 	.globl _STA
                                     89 	.globl _I2CEN
                                     90 	.globl _CM_RL2
                                     91 	.globl _TR2
                                     92 	.globl _TF2
                                     93 	.globl _P
                                     94 	.globl _OV
                                     95 	.globl _RS0
                                     96 	.globl _RS1
                                     97 	.globl _F0
                                     98 	.globl _AC
                                     99 	.globl _CY
                                    100 	.globl _CLRPWM
                                    101 	.globl _PWMF
                                    102 	.globl _LOAD
                                    103 	.globl _PWMRUN
                                    104 	.globl _ADCHS0
                                    105 	.globl _ADCHS1
                                    106 	.globl _ADCHS2
                                    107 	.globl _ADCHS3
                                    108 	.globl _ETGSEL0
                                    109 	.globl _ETGSEL1
                                    110 	.globl _ADCS
                                    111 	.globl _ADCF
                                    112 	.globl _RI_1
                                    113 	.globl _TI_1
                                    114 	.globl _RB8_1
                                    115 	.globl _TB8_1
                                    116 	.globl _REN_1
                                    117 	.globl _SM2_1
                                    118 	.globl _SM1_1
                                    119 	.globl _FE_1
                                    120 	.globl _SM0_1
                                    121 	.globl _EIPH1
                                    122 	.globl _EIP1
                                    123 	.globl _PMD
                                    124 	.globl _PMEN
                                    125 	.globl _PDTCNT
                                    126 	.globl _PDTEN
                                    127 	.globl _SCON_1
                                    128 	.globl _EIPH
                                    129 	.globl _AINDIDS
                                    130 	.globl _SPDR
                                    131 	.globl _SPSR
                                    132 	.globl _SPCR2
                                    133 	.globl _SPCR
                                    134 	.globl _CAPCON4
                                    135 	.globl _CAPCON3
                                    136 	.globl _B
                                    137 	.globl _EIP
                                    138 	.globl _C2H
                                    139 	.globl _C2L
                                    140 	.globl _PIF
                                    141 	.globl _PIPEN
                                    142 	.globl _PINEN
                                    143 	.globl _PICON
                                    144 	.globl _ADCCON0
                                    145 	.globl _C1H
                                    146 	.globl _C1L
                                    147 	.globl _C0H
                                    148 	.globl _C0L
                                    149 	.globl _ADCDLY
                                    150 	.globl _ADCCON2
                                    151 	.globl _ADCCON1
                                    152 	.globl _ACC
                                    153 	.globl _PWMCON1
                                    154 	.globl _PIOCON0
                                    155 	.globl _PWM3L
                                    156 	.globl _PWM2L
                                    157 	.globl _PWM1L
                                    158 	.globl _PWM0L
                                    159 	.globl _PWMPL
                                    160 	.globl _PWMCON0
                                    161 	.globl _FBD
                                    162 	.globl _PNP
                                    163 	.globl _PWM3H
                                    164 	.globl _PWM2H
                                    165 	.globl _PWM1H
                                    166 	.globl _PWM0H
                                    167 	.globl _PWMPH
                                    168 	.globl _PSW
                                    169 	.globl _ADCMPH
                                    170 	.globl _ADCMPL
                                    171 	.globl _PWM5L
                                    172 	.globl _TH2
                                    173 	.globl _PWM4L
                                    174 	.globl _TL2
                                    175 	.globl _RCMP2H
                                    176 	.globl _RCMP2L
                                    177 	.globl _T2MOD
                                    178 	.globl _T2CON
                                    179 	.globl _TA
                                    180 	.globl _PIOCON1
                                    181 	.globl _RH3
                                    182 	.globl _PWM5H
                                    183 	.globl _RL3
                                    184 	.globl _PWM4H
                                    185 	.globl _T3CON
                                    186 	.globl _ADCRH
                                    187 	.globl _ADCRL
                                    188 	.globl _I2ADDR
                                    189 	.globl _I2CON
                                    190 	.globl _I2TOC
                                    191 	.globl _I2CLK
                                    192 	.globl _I2STAT
                                    193 	.globl _I2DAT
                                    194 	.globl _SADDR_1
                                    195 	.globl _SADEN_1
                                    196 	.globl _SADEN
                                    197 	.globl _IP
                                    198 	.globl _PWMINTC
                                    199 	.globl _IPH
                                    200 	.globl _P2S
                                    201 	.globl _P1SR
                                    202 	.globl _P1M2
                                    203 	.globl _P1S
                                    204 	.globl _P1M1
                                    205 	.globl _P0SR
                                    206 	.globl _P0M2
                                    207 	.globl _P0S
                                    208 	.globl _P0M1
                                    209 	.globl _P3
                                    210 	.globl _IAPCN
                                    211 	.globl _IAPFD
                                    212 	.globl _P3SR
                                    213 	.globl _P3M2
                                    214 	.globl _P3S
                                    215 	.globl _P3M1
                                    216 	.globl _BODCON1
                                    217 	.globl _WDCON
                                    218 	.globl _SADDR
                                    219 	.globl _IE
                                    220 	.globl _IAPAH
                                    221 	.globl _IAPAL
                                    222 	.globl _IAPUEN
                                    223 	.globl _IAPTRG
                                    224 	.globl _BODCON0
                                    225 	.globl _AUXR1
                                    226 	.globl _P2
                                    227 	.globl _CHPCON
                                    228 	.globl _EIE1
                                    229 	.globl _EIE
                                    230 	.globl _SBUF_1
                                    231 	.globl _SBUF
                                    232 	.globl _SCON
                                    233 	.globl _CKEN
                                    234 	.globl _CKSWT
                                    235 	.globl _CKDIV
                                    236 	.globl _CAPCON2
                                    237 	.globl _CAPCON1
                                    238 	.globl _CAPCON0
                                    239 	.globl _SFRS
                                    240 	.globl _P1
                                    241 	.globl _WKCON
                                    242 	.globl _CKCON
                                    243 	.globl _TH1
                                    244 	.globl _TH0
                                    245 	.globl _TL1
                                    246 	.globl _TL0
                                    247 	.globl _TMOD
                                    248 	.globl _TCON
                                    249 	.globl _PCON
                                    250 	.globl _RWK
                                    251 	.globl _RCTRIM1
                                    252 	.globl _RCTRIM0
                                    253 	.globl _DPH
                                    254 	.globl _DPL
                                    255 	.globl _SP
                                    256 	.globl _P0
                                    257 	.globl _isrFunction
                                    258 	.globl _stopwatch
                                    259 	.globl _time
                                    260 ;--------------------------------------------------------
                                    261 ; special function registers
                                    262 ;--------------------------------------------------------
                                    263 	.area RSEG    (ABS,DATA)
      000000                        264 	.org 0x0000
                           000080   265 _P0	=	0x0080
                           000081   266 _SP	=	0x0081
                           000082   267 _DPL	=	0x0082
                           000083   268 _DPH	=	0x0083
                           000084   269 _RCTRIM0	=	0x0084
                           000085   270 _RCTRIM1	=	0x0085
                           000086   271 _RWK	=	0x0086
                           000087   272 _PCON	=	0x0087
                           000088   273 _TCON	=	0x0088
                           000089   274 _TMOD	=	0x0089
                           00008A   275 _TL0	=	0x008a
                           00008B   276 _TL1	=	0x008b
                           00008C   277 _TH0	=	0x008c
                           00008D   278 _TH1	=	0x008d
                           00008E   279 _CKCON	=	0x008e
                           00008F   280 _WKCON	=	0x008f
                           000090   281 _P1	=	0x0090
                           000091   282 _SFRS	=	0x0091
                           000092   283 _CAPCON0	=	0x0092
                           000093   284 _CAPCON1	=	0x0093
                           000094   285 _CAPCON2	=	0x0094
                           000095   286 _CKDIV	=	0x0095
                           000096   287 _CKSWT	=	0x0096
                           000097   288 _CKEN	=	0x0097
                           000098   289 _SCON	=	0x0098
                           000099   290 _SBUF	=	0x0099
                           00009A   291 _SBUF_1	=	0x009a
                           00009B   292 _EIE	=	0x009b
                           00009C   293 _EIE1	=	0x009c
                           00009F   294 _CHPCON	=	0x009f
                           0000A0   295 _P2	=	0x00a0
                           0000A2   296 _AUXR1	=	0x00a2
                           0000A3   297 _BODCON0	=	0x00a3
                           0000A4   298 _IAPTRG	=	0x00a4
                           0000A5   299 _IAPUEN	=	0x00a5
                           0000A6   300 _IAPAL	=	0x00a6
                           0000A7   301 _IAPAH	=	0x00a7
                           0000A8   302 _IE	=	0x00a8
                           0000A9   303 _SADDR	=	0x00a9
                           0000AA   304 _WDCON	=	0x00aa
                           0000AB   305 _BODCON1	=	0x00ab
                           0000AC   306 _P3M1	=	0x00ac
                           0000AC   307 _P3S	=	0x00ac
                           0000AD   308 _P3M2	=	0x00ad
                           0000AD   309 _P3SR	=	0x00ad
                           0000AE   310 _IAPFD	=	0x00ae
                           0000AF   311 _IAPCN	=	0x00af
                           0000B0   312 _P3	=	0x00b0
                           0000B1   313 _P0M1	=	0x00b1
                           0000B1   314 _P0S	=	0x00b1
                           0000B2   315 _P0M2	=	0x00b2
                           0000B2   316 _P0SR	=	0x00b2
                           0000B3   317 _P1M1	=	0x00b3
                           0000B3   318 _P1S	=	0x00b3
                           0000B4   319 _P1M2	=	0x00b4
                           0000B4   320 _P1SR	=	0x00b4
                           0000B5   321 _P2S	=	0x00b5
                           0000B7   322 _IPH	=	0x00b7
                           0000B7   323 _PWMINTC	=	0x00b7
                           0000B8   324 _IP	=	0x00b8
                           0000B9   325 _SADEN	=	0x00b9
                           0000BA   326 _SADEN_1	=	0x00ba
                           0000BB   327 _SADDR_1	=	0x00bb
                           0000BC   328 _I2DAT	=	0x00bc
                           0000BD   329 _I2STAT	=	0x00bd
                           0000BE   330 _I2CLK	=	0x00be
                           0000BF   331 _I2TOC	=	0x00bf
                           0000C0   332 _I2CON	=	0x00c0
                           0000C1   333 _I2ADDR	=	0x00c1
                           0000C2   334 _ADCRL	=	0x00c2
                           0000C3   335 _ADCRH	=	0x00c3
                           0000C4   336 _T3CON	=	0x00c4
                           0000C4   337 _PWM4H	=	0x00c4
                           0000C5   338 _RL3	=	0x00c5
                           0000C5   339 _PWM5H	=	0x00c5
                           0000C6   340 _RH3	=	0x00c6
                           0000C6   341 _PIOCON1	=	0x00c6
                           0000C7   342 _TA	=	0x00c7
                           0000C8   343 _T2CON	=	0x00c8
                           0000C9   344 _T2MOD	=	0x00c9
                           0000CA   345 _RCMP2L	=	0x00ca
                           0000CB   346 _RCMP2H	=	0x00cb
                           0000CC   347 _TL2	=	0x00cc
                           0000CC   348 _PWM4L	=	0x00cc
                           0000CD   349 _TH2	=	0x00cd
                           0000CD   350 _PWM5L	=	0x00cd
                           0000CE   351 _ADCMPL	=	0x00ce
                           0000CF   352 _ADCMPH	=	0x00cf
                           0000D0   353 _PSW	=	0x00d0
                           0000D1   354 _PWMPH	=	0x00d1
                           0000D2   355 _PWM0H	=	0x00d2
                           0000D3   356 _PWM1H	=	0x00d3
                           0000D4   357 _PWM2H	=	0x00d4
                           0000D5   358 _PWM3H	=	0x00d5
                           0000D6   359 _PNP	=	0x00d6
                           0000D7   360 _FBD	=	0x00d7
                           0000D8   361 _PWMCON0	=	0x00d8
                           0000D9   362 _PWMPL	=	0x00d9
                           0000DA   363 _PWM0L	=	0x00da
                           0000DB   364 _PWM1L	=	0x00db
                           0000DC   365 _PWM2L	=	0x00dc
                           0000DD   366 _PWM3L	=	0x00dd
                           0000DE   367 _PIOCON0	=	0x00de
                           0000DF   368 _PWMCON1	=	0x00df
                           0000E0   369 _ACC	=	0x00e0
                           0000E1   370 _ADCCON1	=	0x00e1
                           0000E2   371 _ADCCON2	=	0x00e2
                           0000E3   372 _ADCDLY	=	0x00e3
                           0000E4   373 _C0L	=	0x00e4
                           0000E5   374 _C0H	=	0x00e5
                           0000E6   375 _C1L	=	0x00e6
                           0000E7   376 _C1H	=	0x00e7
                           0000E8   377 _ADCCON0	=	0x00e8
                           0000E9   378 _PICON	=	0x00e9
                           0000EA   379 _PINEN	=	0x00ea
                           0000EB   380 _PIPEN	=	0x00eb
                           0000EC   381 _PIF	=	0x00ec
                           0000ED   382 _C2L	=	0x00ed
                           0000EE   383 _C2H	=	0x00ee
                           0000EF   384 _EIP	=	0x00ef
                           0000F0   385 _B	=	0x00f0
                           0000F1   386 _CAPCON3	=	0x00f1
                           0000F2   387 _CAPCON4	=	0x00f2
                           0000F3   388 _SPCR	=	0x00f3
                           0000F3   389 _SPCR2	=	0x00f3
                           0000F4   390 _SPSR	=	0x00f4
                           0000F5   391 _SPDR	=	0x00f5
                           0000F6   392 _AINDIDS	=	0x00f6
                           0000F7   393 _EIPH	=	0x00f7
                           0000F8   394 _SCON_1	=	0x00f8
                           0000F9   395 _PDTEN	=	0x00f9
                           0000FA   396 _PDTCNT	=	0x00fa
                           0000FB   397 _PMEN	=	0x00fb
                           0000FC   398 _PMD	=	0x00fc
                           0000FE   399 _EIP1	=	0x00fe
                           0000FF   400 _EIPH1	=	0x00ff
                                    401 ;--------------------------------------------------------
                                    402 ; special function bits
                                    403 ;--------------------------------------------------------
                                    404 	.area RSEG    (ABS,DATA)
      000000                        405 	.org 0x0000
                           0000FF   406 _SM0_1	=	0x00ff
                           0000FF   407 _FE_1	=	0x00ff
                           0000FE   408 _SM1_1	=	0x00fe
                           0000FD   409 _SM2_1	=	0x00fd
                           0000FC   410 _REN_1	=	0x00fc
                           0000FB   411 _TB8_1	=	0x00fb
                           0000FA   412 _RB8_1	=	0x00fa
                           0000F9   413 _TI_1	=	0x00f9
                           0000F8   414 _RI_1	=	0x00f8
                           0000EF   415 _ADCF	=	0x00ef
                           0000EE   416 _ADCS	=	0x00ee
                           0000ED   417 _ETGSEL1	=	0x00ed
                           0000EC   418 _ETGSEL0	=	0x00ec
                           0000EB   419 _ADCHS3	=	0x00eb
                           0000EA   420 _ADCHS2	=	0x00ea
                           0000E9   421 _ADCHS1	=	0x00e9
                           0000E8   422 _ADCHS0	=	0x00e8
                           0000DF   423 _PWMRUN	=	0x00df
                           0000DE   424 _LOAD	=	0x00de
                           0000DD   425 _PWMF	=	0x00dd
                           0000DC   426 _CLRPWM	=	0x00dc
                           0000D7   427 _CY	=	0x00d7
                           0000D6   428 _AC	=	0x00d6
                           0000D5   429 _F0	=	0x00d5
                           0000D4   430 _RS1	=	0x00d4
                           0000D3   431 _RS0	=	0x00d3
                           0000D2   432 _OV	=	0x00d2
                           0000D0   433 _P	=	0x00d0
                           0000CF   434 _TF2	=	0x00cf
                           0000CA   435 _TR2	=	0x00ca
                           0000C8   436 _CM_RL2	=	0x00c8
                           0000C6   437 _I2CEN	=	0x00c6
                           0000C5   438 _STA	=	0x00c5
                           0000C4   439 _STO	=	0x00c4
                           0000C3   440 _SI	=	0x00c3
                           0000C2   441 _AA	=	0x00c2
                           0000C0   442 _I2CPX	=	0x00c0
                           0000BE   443 _PADC	=	0x00be
                           0000BD   444 _PBOD	=	0x00bd
                           0000BC   445 _PS	=	0x00bc
                           0000BB   446 _PT1	=	0x00bb
                           0000BA   447 _PX1	=	0x00ba
                           0000B9   448 _PT0	=	0x00b9
                           0000B8   449 _PX0	=	0x00b8
                           0000B0   450 _P30	=	0x00b0
                           0000AF   451 _EA	=	0x00af
                           0000AE   452 _EADC	=	0x00ae
                           0000AD   453 _EBOD	=	0x00ad
                           0000AC   454 _ES	=	0x00ac
                           0000AB   455 _ET1	=	0x00ab
                           0000AA   456 _EX1	=	0x00aa
                           0000A9   457 _ET0	=	0x00a9
                           0000A8   458 _EX0	=	0x00a8
                           0000A0   459 _P20	=	0x00a0
                           00009F   460 _SM0	=	0x009f
                           00009F   461 _FE	=	0x009f
                           00009E   462 _SM1	=	0x009e
                           00009D   463 _SM2	=	0x009d
                           00009C   464 _REN	=	0x009c
                           00009B   465 _TB8	=	0x009b
                           00009A   466 _RB8	=	0x009a
                           000099   467 _TI	=	0x0099
                           000098   468 _RI	=	0x0098
                           000097   469 _P17	=	0x0097
                           000096   470 _P16	=	0x0096
                           000096   471 _TXD_1	=	0x0096
                           000095   472 _P15	=	0x0095
                           000094   473 _P14	=	0x0094
                           000094   474 _SDA	=	0x0094
                           000093   475 _P13	=	0x0093
                           000093   476 _SCL	=	0x0093
                           000092   477 _P12	=	0x0092
                           000091   478 _P11	=	0x0091
                           000090   479 _P10	=	0x0090
                           00008F   480 _TF1	=	0x008f
                           00008E   481 _TR1	=	0x008e
                           00008D   482 _TF0	=	0x008d
                           00008C   483 _TR0	=	0x008c
                           00008B   484 _IE1	=	0x008b
                           00008A   485 _IT1	=	0x008a
                           000089   486 _IE0	=	0x0089
                           000088   487 _IT0	=	0x0088
                           000087   488 _P07	=	0x0087
                           000087   489 _RXD	=	0x0087
                           000086   490 _P06	=	0x0086
                           000086   491 _TXD	=	0x0086
                           000085   492 _P05	=	0x0085
                           000084   493 _P04	=	0x0084
                           000084   494 _STADC	=	0x0084
                           000083   495 _P03	=	0x0083
                           000082   496 _P02	=	0x0082
                           000082   497 _RXD_1	=	0x0082
                           000081   498 _P01	=	0x0081
                           000081   499 _MISO	=	0x0081
                           000080   500 _P00	=	0x0080
                           000080   501 _MOSI	=	0x0080
                                    502 ;--------------------------------------------------------
                                    503 ; overlayable register banks
                                    504 ;--------------------------------------------------------
                                    505 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        506 	.ds 8
                                    507 ;--------------------------------------------------------
                                    508 ; overlayable bit register bank
                                    509 ;--------------------------------------------------------
                                    510 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        511 bits:
      000020                        512 	.ds 1
                           008000   513 	b0 = bits[0]
                           008100   514 	b1 = bits[1]
                           008200   515 	b2 = bits[2]
                           008300   516 	b3 = bits[3]
                           008400   517 	b4 = bits[4]
                           008500   518 	b5 = bits[5]
                           008600   519 	b6 = bits[6]
                           008700   520 	b7 = bits[7]
                                    521 ;--------------------------------------------------------
                                    522 ; internal ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area DSEG    (DATA)
      000008                        525 _time::
      000008                        526 	.ds 3
      00000B                        527 _stopwatch::
      00000B                        528 	.ds 3
      00000E                        529 _isrFunction::
      00000E                        530 	.ds 2
      000010                        531 _Timer3_ISR_u8counter_10000_170:
      000010                        532 	.ds 1
      000011                        533 _showTime_u8counter_10000_173:
      000011                        534 	.ds 1
      000012                        535 _showTime_time_int_10000_173:
      000012                        536 	.ds 2
      000014                        537 _showStopwatch_u8counter_10000_179:
      000014                        538 	.ds 1
      000015                        539 _showStopwatch_stopwatch_int_10000_179:
      000015                        540 	.ds 2
      000017                        541 _showSetup_u16counter_10000_183:
      000017                        542 	.ds 2
      000019                        543 _showSetup_time_int_10000_183:
      000019                        544 	.ds 2
      00001B                        545 _showSetup_time_int_last_10000_183:
      00001B                        546 	.ds 2
                                    547 ;--------------------------------------------------------
                                    548 ; overlayable items in internal ram
                                    549 ;--------------------------------------------------------
                                    550 ;--------------------------------------------------------
                                    551 ; Stack segment in internal ram
                                    552 ;--------------------------------------------------------
                                    553 	.area SSEG
      000034                        554 __start__stack:
      000034                        555 	.ds	1
                                    556 
                                    557 ;--------------------------------------------------------
                                    558 ; indirectly addressable internal ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area ISEG    (DATA)
                                    561 ;--------------------------------------------------------
                                    562 ; absolute internal ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area IABS    (ABS,DATA)
                                    565 	.area IABS    (ABS,DATA)
                                    566 ;--------------------------------------------------------
                                    567 ; bit data
                                    568 ;--------------------------------------------------------
                                    569 	.area BSEG    (BIT)
                                    570 ;--------------------------------------------------------
                                    571 ; paged external ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area PSEG    (PAG,XDATA)
                                    574 ;--------------------------------------------------------
                                    575 ; uninitialized external ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area XSEG    (XDATA)
                                    578 ;--------------------------------------------------------
                                    579 ; absolute external ram data
                                    580 ;--------------------------------------------------------
                                    581 	.area XABS    (ABS,XDATA)
                                    582 ;--------------------------------------------------------
                                    583 ; initialized external ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area XISEG   (XDATA)
                                    586 	.area HOME    (CODE)
                                    587 	.area GSINIT0 (CODE)
                                    588 	.area GSINIT1 (CODE)
                                    589 	.area GSINIT2 (CODE)
                                    590 	.area GSINIT3 (CODE)
                                    591 	.area GSINIT4 (CODE)
                                    592 	.area GSINIT5 (CODE)
                                    593 	.area GSINIT  (CODE)
                                    594 	.area GSFINAL (CODE)
                                    595 	.area CSEG    (CODE)
                                    596 ;--------------------------------------------------------
                                    597 ; interrupt vector
                                    598 ;--------------------------------------------------------
                                    599 	.area HOME    (CODE)
      000000                        600 __interrupt_vect:
      000000 02 00 8B         [24]  601 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  602 	reti
      000004                        603 	.ds	7
      00000B 32               [24]  604 	reti
      00000C                        605 	.ds	7
      000013 32               [24]  606 	reti
      000014                        607 	.ds	7
      00001B 32               [24]  608 	reti
      00001C                        609 	.ds	7
      000023 32               [24]  610 	reti
      000024                        611 	.ds	7
      00002B 32               [24]  612 	reti
      00002C                        613 	.ds	7
      000033 32               [24]  614 	reti
      000034                        615 	.ds	7
      00003B 32               [24]  616 	reti
      00003C                        617 	.ds	7
      000043 32               [24]  618 	reti
      000044                        619 	.ds	7
      00004B 32               [24]  620 	reti
      00004C                        621 	.ds	7
      000053 32               [24]  622 	reti
      000054                        623 	.ds	7
      00005B 32               [24]  624 	reti
      00005C                        625 	.ds	7
      000063 32               [24]  626 	reti
      000064                        627 	.ds	7
      00006B 32               [24]  628 	reti
      00006C                        629 	.ds	7
      000073 32               [24]  630 	reti
      000074                        631 	.ds	7
      00007B 32               [24]  632 	reti
      00007C                        633 	.ds	7
      000083 02 00 EE         [24]  634 	ljmp	_Timer3_ISR
                                    635 ;--------------------------------------------------------
                                    636 ; global & static initialisations
                                    637 ;--------------------------------------------------------
                                    638 	.area HOME    (CODE)
                                    639 	.area GSINIT  (CODE)
                                    640 	.area GSFINAL (CODE)
                                    641 	.area GSINIT  (CODE)
                                    642 	.globl __sdcc_gsinit_startup
                                    643 	.globl __sdcc_program_startup
                                    644 	.globl __start__stack
                                    645 	.globl __mcs51_genXINIT
                                    646 	.globl __mcs51_genXRAMCLEAR
                                    647 	.globl __mcs51_genRAMCLEAR
                                    648 	.area GSFINAL (CODE)
      0000EB 02 00 86         [24]  649 	ljmp	__sdcc_program_startup
                                    650 ;--------------------------------------------------------
                                    651 ; Home
                                    652 ;--------------------------------------------------------
                                    653 	.area HOME    (CODE)
                                    654 	.area HOME    (CODE)
      000086                        655 __sdcc_program_startup:
      000086 02 02 7B         [24]  656 	ljmp	_main
                                    657 ;	return from main will return to caller
                                    658 ;--------------------------------------------------------
                                    659 ; code
                                    660 ;--------------------------------------------------------
                                    661 	.area CSEG    (CODE)
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'Timer3_ISR'
                                    664 ;------------------------------------------------------------
                                    665 ;u8counter                 Allocated with name '_Timer3_ISR_u8counter_10000_170'
                                    666 ;------------------------------------------------------------
                                    667 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:11: void Timer3_ISR(void) __interrupt (16)
                                    668 ;	-----------------------------------------
                                    669 ;	 function Timer3_ISR
                                    670 ;	-----------------------------------------
      0000EE                        671 _Timer3_ISR:
                           000007   672 	ar7 = 0x07
                           000006   673 	ar6 = 0x06
                           000005   674 	ar5 = 0x05
                           000004   675 	ar4 = 0x04
                           000003   676 	ar3 = 0x03
                           000002   677 	ar2 = 0x02
                           000001   678 	ar1 = 0x01
                           000000   679 	ar0 = 0x00
      0000EE C0 20            [24]  680 	push	bits
      0000F0 C0 E0            [24]  681 	push	acc
      0000F2 C0 F0            [24]  682 	push	b
      0000F4 C0 82            [24]  683 	push	dpl
      0000F6 C0 83            [24]  684 	push	dph
      0000F8 C0 07            [24]  685 	push	(0+7)
      0000FA C0 06            [24]  686 	push	(0+6)
      0000FC C0 05            [24]  687 	push	(0+5)
      0000FE C0 04            [24]  688 	push	(0+4)
      000100 C0 03            [24]  689 	push	(0+3)
      000102 C0 02            [24]  690 	push	(0+2)
      000104 C0 01            [24]  691 	push	(0+1)
      000106 C0 00            [24]  692 	push	(0+0)
      000108 C0 D0            [24]  693 	push	psw
      00010A 75 D0 00         [24]  694 	mov	psw,#0x00
                                    695 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:15: if ((u8counter & 0x01) == 0)
      00010D E5 10            [12]  696 	mov	a,_Timer3_ISR_u8counter_10000_170
      00010F 20 E0 18         [24]  697 	jb	acc.0,00102$
                                    698 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:17: clock(&time, 0);
      000112 75 2C 00         [24]  699 	mov	_clock_PARM_2,#0x00
      000115 90 00 08         [24]  700 	mov	dptr,#_time
      000118 75 F0 40         [24]  701 	mov	b, #0x40
      00011B 12 09 D6         [24]  702 	lcall	_clock
                                    703 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:18: clock(&stopwatch, 1);
      00011E 75 2C 01         [24]  704 	mov	_clock_PARM_2,#0x01
      000121 90 00 0B         [24]  705 	mov	dptr,#_stopwatch
      000124 75 F0 40         [24]  706 	mov	b, #0x40
      000127 12 09 D6         [24]  707 	lcall	_clock
      00012A                        708 00102$:
                                    709 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:21: u8counter ++;
      00012A 05 10            [12]  710 	inc	_Timer3_ISR_u8counter_10000_170
                                    711 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:23: (*isrFunction)();
      00012C 85 0E 82         [24]  712 	mov	dpl,_isrFunction
      00012F 85 0F 83         [24]  713 	mov	dph,(_isrFunction + 1)
      000132 12 00 89         [24]  714 	lcall	__sdcc_call_dptr
                                    715 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:25: T3CON &= 0xEF; // Clear TF3
      000135 53 C4 EF         [24]  716 	anl	_T3CON,#0xef
                                    717 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:26: }
      000138 D0 D0            [24]  718 	pop	psw
      00013A D0 00            [24]  719 	pop	(0+0)
      00013C D0 01            [24]  720 	pop	(0+1)
      00013E D0 02            [24]  721 	pop	(0+2)
      000140 D0 03            [24]  722 	pop	(0+3)
      000142 D0 04            [24]  723 	pop	(0+4)
      000144 D0 05            [24]  724 	pop	(0+5)
      000146 D0 06            [24]  725 	pop	(0+6)
      000148 D0 07            [24]  726 	pop	(0+7)
      00014A D0 83            [24]  727 	pop	dph
      00014C D0 82            [24]  728 	pop	dpl
      00014E D0 F0            [24]  729 	pop	b
      000150 D0 E0            [24]  730 	pop	acc
      000152 D0 20            [24]  731 	pop	bits
      000154 32               [24]  732 	reti
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'showTime'
                                    735 ;------------------------------------------------------------
                                    736 ;u8counter                 Allocated with name '_showTime_u8counter_10000_173'
                                    737 ;time_int                  Allocated with name '_showTime_time_int_10000_173'
                                    738 ;------------------------------------------------------------
                                    739 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:28: void showTime(void)
                                    740 ;	-----------------------------------------
                                    741 ;	 function showTime
                                    742 ;	-----------------------------------------
      000155                        743 _showTime:
                                    744 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:33: time_int = getTime(&time);
      000155 90 00 08         [24]  745 	mov	dptr,#_time
      000158 75 F0 40         [24]  746 	mov	b, #0x40
      00015B 12 0A 80         [24]  747 	lcall	_getTime
      00015E 85 82 12         [24]  748 	mov	_showTime_time_int_10000_173,dpl
      000161 85 83 13         [24]  749 	mov	(_showTime_time_int_10000_173 + 1),dph
                                    750 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:35: if ((u8counter & 0x01) == 0)
      000164 E5 11            [12]  751 	mov	a,_showTime_u8counter_10000_173
      000166 20 E0 0E         [24]  752 	jb	acc.0,00102$
                                    753 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:37: pt6961_setNumberFade(time_int, 0);
      000169 75 25 00         [24]  754 	mov	_pt6961_setNumberFade_PARM_2,#0x00
      00016C 85 12 82         [24]  755 	mov	dpl, _showTime_time_int_10000_173
      00016F 85 13 83         [24]  756 	mov	dph, (_showTime_time_int_10000_173 + 1)
      000172 12 07 02         [24]  757 	lcall	_pt6961_setNumberFade
      000175 80 0C            [24]  758 	sjmp	00103$
      000177                        759 00102$:
                                    760 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:41: pt6961_setNumberFade(time_int, 1);
      000177 75 25 01         [24]  761 	mov	_pt6961_setNumberFade_PARM_2,#0x01
      00017A 85 12 82         [24]  762 	mov	dpl, _showTime_time_int_10000_173
      00017D 85 13 83         [24]  763 	mov	dph, (_showTime_time_int_10000_173 + 1)
      000180 12 07 02         [24]  764 	lcall	_pt6961_setNumberFade
      000183                        765 00103$:
                                    766 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:43: u8counter ++;
      000183 05 11            [12]  767 	inc	_showTime_u8counter_10000_173
                                    768 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:44: }
      000185 22               [24]  769 	ret
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'showSecond'
                                    772 ;------------------------------------------------------------
                                    773 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:46: void showSecond(void)
                                    774 ;	-----------------------------------------
                                    775 ;	 function showSecond
                                    776 ;	-----------------------------------------
      000186                        777 _showSecond:
                                    778 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:48: pt6961_setNumberFade(time.second, 1);
      000186 AE 08            [24]  779 	mov	r6,_time
      000188 7F 00            [12]  780 	mov	r7,#0x00
      00018A 75 25 01         [24]  781 	mov	_pt6961_setNumberFade_PARM_2,#0x01
      00018D 8E 82            [24]  782 	mov	dpl, r6
      00018F 8F 83            [24]  783 	mov	dph, r7
                                    784 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:49: }
      000191 02 07 02         [24]  785 	ljmp	_pt6961_setNumberFade
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'showStopwatch'
                                    788 ;------------------------------------------------------------
                                    789 ;u8counter                 Allocated with name '_showStopwatch_u8counter_10000_179'
                                    790 ;stopwatch_int             Allocated with name '_showStopwatch_stopwatch_int_10000_179'
                                    791 ;------------------------------------------------------------
                                    792 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:51: void showStopwatch(void)
                                    793 ;	-----------------------------------------
                                    794 ;	 function showStopwatch
                                    795 ;	-----------------------------------------
      000194                        796 _showStopwatch:
                                    797 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:56: stopwatch_int = (int)stopwatch.minute * 100 + stopwatch.second;
      000194 85 0C 2C         [24]  798 	mov	__mulint_PARM_2,(_stopwatch + 0x0001)
      000197 75 2D 00         [24]  799 	mov	(__mulint_PARM_2 + 1),#0x00
      00019A 90 00 64         [24]  800 	mov	dptr,#0x0064
      00019D 12 0A E7         [24]  801 	lcall	__mulint
      0001A0 AE 82            [24]  802 	mov	r6, dpl
      0001A2 AF 83            [24]  803 	mov	r7, dph
      0001A4 AC 0B            [24]  804 	mov	r4,_stopwatch
      0001A6 7D 00            [12]  805 	mov	r5,#0x00
      0001A8 EC               [12]  806 	mov	a,r4
      0001A9 2E               [12]  807 	add	a, r6
      0001AA F5 15            [12]  808 	mov	_showStopwatch_stopwatch_int_10000_179,a
      0001AC ED               [12]  809 	mov	a,r5
      0001AD 3F               [12]  810 	addc	a, r7
      0001AE F5 16            [12]  811 	mov	(_showStopwatch_stopwatch_int_10000_179 + 1),a
                                    812 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:58: if ((u8counter & 0x01) == 0)
      0001B0 E5 14            [12]  813 	mov	a,_showStopwatch_u8counter_10000_179
      0001B2 20 E0 0E         [24]  814 	jb	acc.0,00102$
                                    815 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:60: pt6961_setNumberFade(stopwatch_int, 0);
      0001B5 75 25 00         [24]  816 	mov	_pt6961_setNumberFade_PARM_2,#0x00
      0001B8 85 15 82         [24]  817 	mov	dpl, _showStopwatch_stopwatch_int_10000_179
      0001BB 85 16 83         [24]  818 	mov	dph, (_showStopwatch_stopwatch_int_10000_179 + 1)
      0001BE 12 07 02         [24]  819 	lcall	_pt6961_setNumberFade
      0001C1 80 0C            [24]  820 	sjmp	00103$
      0001C3                        821 00102$:
                                    822 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:64: pt6961_setNumberFade(stopwatch_int, 1);
      0001C3 75 25 01         [24]  823 	mov	_pt6961_setNumberFade_PARM_2,#0x01
      0001C6 85 15 82         [24]  824 	mov	dpl, _showStopwatch_stopwatch_int_10000_179
      0001C9 85 16 83         [24]  825 	mov	dph, (_showStopwatch_stopwatch_int_10000_179 + 1)
      0001CC 12 07 02         [24]  826 	lcall	_pt6961_setNumberFade
      0001CF                        827 00103$:
                                    828 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:66: u8counter ++;
      0001CF 05 14            [12]  829 	inc	_showStopwatch_u8counter_10000_179
                                    830 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:67: }
      0001D1 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'showSetup'
                                    834 ;------------------------------------------------------------
                                    835 ;u16counter                Allocated with name '_showSetup_u16counter_10000_183'
                                    836 ;time_int                  Allocated with name '_showSetup_time_int_10000_183'
                                    837 ;time_int_last             Allocated with name '_showSetup_time_int_last_10000_183'
                                    838 ;u8blink                   Allocated to registers r7 
                                    839 ;------------------------------------------------------------
                                    840 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:69: void showSetup(uint8_t u8blink)
                                    841 ;	-----------------------------------------
                                    842 ;	 function showSetup
                                    843 ;	-----------------------------------------
      0001D2                        844 _showSetup:
      0001D2 AF 82            [24]  845 	mov	r7, dpl
                                    846 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:74: time_int = getTime(&time);
      0001D4 90 00 08         [24]  847 	mov	dptr,#_time
      0001D7 75 F0 40         [24]  848 	mov	b, #0x40
      0001DA C0 07            [24]  849 	push	ar7
      0001DC 12 0A 80         [24]  850 	lcall	_getTime
      0001DF 85 82 19         [24]  851 	mov	_showSetup_time_int_10000_183,dpl
      0001E2 85 83 1A         [24]  852 	mov	(_showSetup_time_int_10000_183 + 1),dph
      0001E5 D0 07            [24]  853 	pop	ar7
                                    854 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:76: if (u16counter > 1000 || time_int != time_int_last)
      0001E7 AD 17            [24]  855 	mov	r5,_showSetup_u16counter_10000_183
      0001E9 AE 18            [24]  856 	mov	r6,(_showSetup_u16counter_10000_183 + 1)
      0001EB C3               [12]  857 	clr	c
      0001EC 74 E8            [12]  858 	mov	a,#0xe8
      0001EE 9D               [12]  859 	subb	a,r5
      0001EF 74 03            [12]  860 	mov	a,#0x03
      0001F1 9E               [12]  861 	subb	a,r6
      0001F2 40 0C            [24]  862 	jc	00101$
      0001F4 E5 1B            [12]  863 	mov	a,_showSetup_time_int_last_10000_183
      0001F6 B5 19 07         [24]  864 	cjne	a,_showSetup_time_int_10000_183,00153$
      0001F9 E5 1C            [12]  865 	mov	a,(_showSetup_time_int_last_10000_183 + 1)
      0001FB B5 1A 02         [24]  866 	cjne	a,(_showSetup_time_int_10000_183 + 1),00153$
      0001FE 80 07            [24]  867 	sjmp	00102$
      000200                        868 00153$:
      000200                        869 00101$:
                                    870 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:77: u16counter = 0;
      000200 E4               [12]  871 	clr	a
      000201 F5 17            [12]  872 	mov	_showSetup_u16counter_10000_183,a
      000203 F5 18            [12]  873 	mov	(_showSetup_u16counter_10000_183 + 1),a
      000205 80 08            [24]  874 	sjmp	00103$
      000207                        875 00102$:
                                    876 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:79: u16counter ++;
      000207 05 17            [12]  877 	inc	_showSetup_u16counter_10000_183
      000209 E4               [12]  878 	clr	a
      00020A B5 17 02         [24]  879 	cjne	a,_showSetup_u16counter_10000_183,00154$
      00020D 05 18            [12]  880 	inc	(_showSetup_u16counter_10000_183 + 1)
      00020F                        881 00154$:
      00020F                        882 00103$:
                                    883 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:81: if (u16counter < 500)
      00020F AD 17            [24]  884 	mov	r5,_showSetup_u16counter_10000_183
      000211 AE 18            [24]  885 	mov	r6,(_showSetup_u16counter_10000_183 + 1)
      000213 C3               [12]  886 	clr	c
      000214 ED               [12]  887 	mov	a,r5
      000215 94 F4            [12]  888 	subb	a,#0xf4
      000217 EE               [12]  889 	mov	a,r6
      000218 94 01            [12]  890 	subb	a,#0x01
      00021A 50 0E            [24]  891 	jnc	00112$
                                    892 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:83: pt6961_setNumber(time_int, 1);
      00021C 75 21 01         [24]  893 	mov	_pt6961_setNumber_PARM_2,#0x01
      00021F 85 19 82         [24]  894 	mov	dpl, _showSetup_time_int_10000_183
      000222 85 1A 83         [24]  895 	mov	dph, (_showSetup_time_int_10000_183 + 1)
      000225 12 05 EE         [24]  896 	lcall	_pt6961_setNumber
      000228 80 4A            [24]  897 	sjmp	00113$
      00022A                        898 00112$:
                                    899 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:87: switch (u8blink)
      00022A BF 01 02         [24]  900 	cjne	r7,#0x01,00156$
      00022D 80 0F            [24]  901 	sjmp	00105$
      00022F                        902 00156$:
      00022F BF 02 02         [24]  903 	cjne	r7,#0x02,00157$
      000232 80 18            [24]  904 	sjmp	00106$
      000234                        905 00157$:
      000234 BF 03 02         [24]  906 	cjne	r7,#0x03,00158$
      000237 80 21            [24]  907 	sjmp	00107$
      000239                        908 00158$:
                                    909 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:89: case 1:
      000239 BF 04 38         [24]  910 	cjne	r7,#0x04,00113$
      00023C 80 2A            [24]  911 	sjmp	00108$
      00023E                        912 00105$:
                                    913 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:90: pt6961_writeCommand(0xC0);
      00023E 75 82 C0         [24]  914 	mov	dpl, #0xc0
      000241 12 05 61         [24]  915 	lcall	_pt6961_writeCommand
                                    916 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:91: pt6961_writeByte(0x80); // Light up colon only
      000244 75 82 80         [24]  917 	mov	dpl, #0x80
      000247 12 05 55         [24]  918 	lcall	_pt6961_writeByte
                                    919 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:92: break;
                                    920 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:94: case 2:
      00024A 80 28            [24]  921 	sjmp	00113$
      00024C                        922 00106$:
                                    923 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:95: pt6961_writeCommand(0xC2);
      00024C 75 82 C2         [24]  924 	mov	dpl, #0xc2
      00024F 12 05 61         [24]  925 	lcall	_pt6961_writeCommand
                                    926 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:96: pt6961_writeByte(0x80); // Light up colon only
      000252 75 82 80         [24]  927 	mov	dpl, #0x80
      000255 12 05 55         [24]  928 	lcall	_pt6961_writeByte
                                    929 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:97: break;
                                    930 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:99: case 3:
      000258 80 1A            [24]  931 	sjmp	00113$
      00025A                        932 00107$:
                                    933 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:100: pt6961_writeCommand(0xC4);
      00025A 75 82 C4         [24]  934 	mov	dpl, #0xc4
      00025D 12 05 61         [24]  935 	lcall	_pt6961_writeCommand
                                    936 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:101: pt6961_writeByte(0x00);
      000260 75 82 00         [24]  937 	mov	dpl, #0x00
      000263 12 05 55         [24]  938 	lcall	_pt6961_writeByte
                                    939 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:102: break;
                                    940 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:104: case 4:
      000266 80 0C            [24]  941 	sjmp	00113$
      000268                        942 00108$:
                                    943 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:105: pt6961_writeCommand(0xC6);
      000268 75 82 C6         [24]  944 	mov	dpl, #0xc6
      00026B 12 05 61         [24]  945 	lcall	_pt6961_writeCommand
                                    946 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:106: pt6961_writeByte(0x00);
      00026E 75 82 00         [24]  947 	mov	dpl, #0x00
      000271 12 05 55         [24]  948 	lcall	_pt6961_writeByte
                                    949 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:111: }
      000274                        950 00113$:
                                    951 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:114: time_int_last = time_int;
      000274 85 19 1B         [24]  952 	mov	_showSetup_time_int_last_10000_183,_showSetup_time_int_10000_183
      000277 85 1A 1C         [24]  953 	mov	(_showSetup_time_int_last_10000_183 + 1),(_showSetup_time_int_10000_183 + 1)
                                    954 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:115: }
      00027A 22               [24]  955 	ret
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'main'
                                    958 ;------------------------------------------------------------
                                    959 ;u16swCount                Allocated to registers r6 r7 
                                    960 ;u8mode                    Allocated to registers r5 
                                    961 ;------------------------------------------------------------
                                    962 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:117: void main(void) 
                                    963 ;	-----------------------------------------
                                    964 ;	 function main
                                    965 ;	-----------------------------------------
      00027B                        966 _main:
                                    967 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:119: uint16_t u16swCount = 0;
      00027B 7E 00            [12]  968 	mov	r6,#0x00
      00027D 7F 00            [12]  969 	mov	r7,#0x00
                                    970 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:120: uint8_t u8mode = 0;
      00027F 7D 00            [12]  971 	mov	r5,#0x00
                                    972 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:122: TA = 0xAA;
      000281 75 C7 AA         [24]  973 	mov	_TA,#0xaa
                                    974 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:123: TA = 0x55;
      000284 75 C7 55         [24]  975 	mov	_TA,#0x55
                                    976 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:124: CKEN |= 0xC0; // EXTEN
      000287 43 97 C0         [24]  977 	orl	_CKEN,#0xc0
                                    978 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:125: while(!(CKSWT & 0x08)); // ECLKST
      00028A                        979 00101$:
      00028A E5 96            [12]  980 	mov	a,_CKSWT
      00028C 30 E3 FB         [24]  981 	jnb	acc.3,00101$
                                    982 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:126: TA = 0xAA;
      00028F 75 C7 AA         [24]  983 	mov	_TA,#0xaa
                                    984 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:127: TA = 0x55;
      000292 75 C7 55         [24]  985 	mov	_TA,#0x55
                                    986 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:128: CKSWT |= 0x02; // Switch to external clock source
      000295 43 96 02         [24]  987 	orl	_CKSWT,#0x02
                                    988 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:129: while(CKEN & 0x01); // CKSWTF
      000298                        989 00104$:
      000298 E5 97            [12]  990 	mov	a,_CKEN
      00029A 20 E0 FB         [24]  991 	jb	acc.0,00104$
                                    992 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:130: TA = 0xAA;
      00029D 75 C7 AA         [24]  993 	mov	_TA,#0xaa
                                    994 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:131: TA = 0x55;
      0002A0 75 C7 55         [24]  995 	mov	_TA,#0x55
                                    996 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:132: CKEN &= 0xDF; // Disable HIRC
      0002A3 53 97 DF         [24]  997 	anl	_CKEN,#0xdf
                                    998 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:134: P12_PUSHPULL_MODE;
      0002A6 53 B3 FB         [24]  999 	anl	_P1M1,#0xfb
      0002A9 43 B4 04         [24] 1000 	orl	_P1M2,#0x04
                                   1001 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:135: P17_QUASI_MODE;
      0002AC 53 B3 7F         [24] 1002 	anl	_P1M1,#0x7f
      0002AF 53 B4 7F         [24] 1003 	anl	_P1M2,#0x7f
                                   1004 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:137: pt6961_init();
      0002B2 C0 07            [24] 1005 	push	ar7
      0002B4 C0 06            [24] 1006 	push	ar6
      0002B6 C0 05            [24] 1007 	push	ar5
      0002B8 12 05 CD         [24] 1008 	lcall	_pt6961_init
                                   1009 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:138: pt6961_setBrightness(4);
      0002BB 75 82 04         [24] 1010 	mov	dpl, #0x04
      0002BE 12 05 B7         [24] 1011 	lcall	_pt6961_setBrightness
      0002C1 D0 05            [24] 1012 	pop	ar5
      0002C3 D0 06            [24] 1013 	pop	ar6
      0002C5 D0 07            [24] 1014 	pop	ar7
                                   1015 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:140: CKCON |= 0x08; // Timer 0 source from Fsys directly
      0002C7 43 8E 08         [24] 1016 	orl	_CKCON,#0x08
                                   1017 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:141: TH0 = (uint8_t)(49536 >> 8); // 65536 - 16000
      0002CA 75 8C C1         [24] 1018 	mov	_TH0,#0xc1
                                   1019 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:142: TL0 = (uint8_t)(49536 & 0xFF);
      0002CD 75 8A 80         [24] 1020 	mov	_TL0,#0x80
                                   1021 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:143: TMOD |= 0x01; // Timer 0 mode 1
      0002D0 43 89 01         [24] 1022 	orl	_TMOD,#0x01
                                   1023 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:144: TCON |= 0x10; // Timer 0 run
      0002D3 43 88 10         [24] 1024 	orl	_TCON,#0x10
                                   1025 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:146: isrFunction = &showTime;
      0002D6 75 0E 55         [24] 1026 	mov	_isrFunction,#_showTime
      0002D9 75 0F 01         [24] 1027 	mov	(_isrFunction + 1),#(_showTime >> 8)
                                   1028 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:148: RH3 = (uint8_t)(3036 >> 8); // 65536 - 62500
      0002DC 75 C6 0B         [24] 1029 	mov	_RH3,#0x0b
                                   1030 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:149: RL3 = (uint8_t)(3036 & 0xFF);
      0002DF 75 C5 DC         [24] 1031 	mov	_RL3,#0xdc
                                   1032 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:150: T3CON = 0x0F; // Timer 3 run, pre-scalar = 1/128
      0002E2 75 C4 0F         [24] 1033 	mov	_T3CON,#0x0f
                                   1034 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:151: EIE1 |= 0x02; // Enable timer 3 interrupt
      0002E5 43 9C 02         [24] 1035 	orl	_EIE1,#0x02
                                   1036 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:152: EA = 1;
                                   1037 ;	assignBit
      0002E8 D2 AF            [12] 1038 	setb	_EA
                                   1039 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:154: while(1)
      0002EA                       1040 00180$:
                                   1041 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:156: if (!SW1) {
      0002EA 20 97 10         [24] 1042 	jb	_P17,00110$
                                   1043 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:157: u16swCount++;
      0002ED 0E               [12] 1044 	inc	r6
      0002EE BE 00 01         [24] 1045 	cjne	r6,#0x00,00415$
      0002F1 0F               [12] 1046 	inc	r7
      0002F2                       1047 00415$:
                                   1048 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:158: if (u16swCount == 2000)
      0002F2 8E 03            [24] 1049 	mov	ar3,r6
      0002F4 8F 04            [24] 1050 	mov	ar4,r7
      0002F6 BB D0 04         [24] 1051 	cjne	r3,#0xd0,00110$
      0002F9 BC 07 01         [24] 1052 	cjne	r4,#0x07,00110$
                                   1053 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:159: u8mode++;
      0002FC 0D               [12] 1054 	inc	r5
      0002FD                       1055 00110$:
                                   1056 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:162: switch (u8mode) {
      0002FD ED               [12] 1057 	mov	a,r5
      0002FE 24 F6            [12] 1058 	add	a,#0xff - 0x09
      000300 50 03            [24] 1059 	jnc	00418$
      000302 02 05 32         [24] 1060 	ljmp	00174$
      000305                       1061 00418$:
      000305 ED               [12] 1062 	mov	a,r5
      000306 24 0A            [12] 1063 	add	a,#(00419$-3-.)
      000308 83               [24] 1064 	movc	a,@a+pc
      000309 F5 82            [12] 1065 	mov	dpl,a
      00030B ED               [12] 1066 	mov	a,r5
      00030C 24 0E            [12] 1067 	add	a,#(00420$-3-.)
      00030E 83               [24] 1068 	movc	a,@a+pc
      00030F F5 83            [12] 1069 	mov	dph,a
      000311 E4               [12] 1070 	clr	a
      000312 73               [24] 1071 	jmp	@a+dptr
      000313                       1072 00419$:
      000313 27                    1073 	.db	00111$
      000314 51                    1074 	.db	00117$
      000315 A6                    1075 	.db	00129$
      000316 22                    1076 	.db	00142$
      000317 6A                    1077 	.db	00151$
      000318 D2                    1078 	.db	00160$
      000319 DC                    1079 	.db	00161$
      00031A 32                    1080 	.db	00174$
      00031B 02                    1081 	.db	00167$
      00031C 28                    1082 	.db	00173$
      00031D                       1083 00420$:
      00031D 03                    1084 	.db	00111$>>8
      00031E 03                    1085 	.db	00117$>>8
      00031F 03                    1086 	.db	00129$>>8
      000320 04                    1087 	.db	00142$>>8
      000321 04                    1088 	.db	00151$>>8
      000322 04                    1089 	.db	00160$>>8
      000323 04                    1090 	.db	00161$>>8
      000324 05                    1091 	.db	00174$>>8
      000325 05                    1092 	.db	00167$>>8
      000326 05                    1093 	.db	00173$>>8
                                   1094 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:163: case 0:
      000327                       1095 00111$:
                                   1096 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:164: isrFunction = &showTime;
      000327 75 0E 55         [24] 1097 	mov	_isrFunction,#_showTime
      00032A 75 0F 01         [24] 1098 	mov	(_isrFunction + 1),#(_showTime >> 8)
                                   1099 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:165: if (SW1) {
      00032D 20 97 03         [24] 1100 	jb	_P17,00421$
      000330 02 05 34         [24] 1101 	ljmp	00175$
      000333                       1102 00421$:
                                   1103 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:166: if (u16swCount > 20 && u16swCount < 2000)
      000333 8E 03            [24] 1104 	mov	ar3,r6
      000335 8F 04            [24] 1105 	mov	ar4,r7
      000337 C3               [12] 1106 	clr	c
      000338 74 14            [12] 1107 	mov	a,#0x14
      00033A 9B               [12] 1108 	subb	a,r3
      00033B E4               [12] 1109 	clr	a
      00033C 9C               [12] 1110 	subb	a,r4
      00033D 50 0B            [24] 1111 	jnc	00113$
      00033F C3               [12] 1112 	clr	c
      000340 EB               [12] 1113 	mov	a,r3
      000341 94 D0            [12] 1114 	subb	a,#0xd0
      000343 EC               [12] 1115 	mov	a,r4
      000344 94 07            [12] 1116 	subb	a,#0x07
      000346 50 02            [24] 1117 	jnc	00113$
                                   1118 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:167: u8mode = 6;
      000348 7D 06            [12] 1119 	mov	r5,#0x06
      00034A                       1120 00113$:
                                   1121 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:168: u16swCount = 0;
      00034A 7E 00            [12] 1122 	mov	r6,#0x00
      00034C 7F 00            [12] 1123 	mov	r7,#0x00
                                   1124 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:170: break;
      00034E 02 05 34         [24] 1125 	ljmp	00175$
                                   1126 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:172: case 1:
      000351                       1127 00117$:
                                   1128 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:173: EIE1 &= 0xFD; // Disable timer 3 interrupt
      000351 53 9C FD         [24] 1129 	anl	_EIE1,#0xfd
                                   1130 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:174: showSetup(u8mode);
      000354 8D 82            [24] 1131 	mov	dpl, r5
      000356 C0 07            [24] 1132 	push	ar7
      000358 C0 06            [24] 1133 	push	ar6
      00035A C0 05            [24] 1134 	push	ar5
      00035C 12 01 D2         [24] 1135 	lcall	_showSetup
      00035F D0 05            [24] 1136 	pop	ar5
      000361 D0 06            [24] 1137 	pop	ar6
      000363 D0 07            [24] 1138 	pop	ar7
                                   1139 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:175: if (SW1) {
      000365 20 97 03         [24] 1140 	jb	_P17,00424$
      000368 02 05 34         [24] 1141 	ljmp	00175$
      00036B                       1142 00424$:
                                   1143 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:176: if (u16swCount > 20 && u16swCount < 2000) {
      00036B 8E 03            [24] 1144 	mov	ar3,r6
      00036D 8F 04            [24] 1145 	mov	ar4,r7
      00036F C3               [12] 1146 	clr	c
      000370 74 14            [12] 1147 	mov	a,#0x14
      000372 9B               [12] 1148 	subb	a,r3
      000373 E4               [12] 1149 	clr	a
      000374 9C               [12] 1150 	subb	a,r4
      000375 50 28            [24] 1151 	jnc	00125$
      000377 C3               [12] 1152 	clr	c
      000378 EB               [12] 1153 	mov	a,r3
      000379 94 D0            [12] 1154 	subb	a,#0xd0
      00037B EC               [12] 1155 	mov	a,r4
      00037C 94 07            [12] 1156 	subb	a,#0x07
      00037E 50 1F            [24] 1157 	jnc	00125$
                                   1158 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:177: if (time.hour < 14)
      000380 AC 0A            [24] 1159 	mov	r4,(_time + 0x0002)
      000382 BC 0E 00         [24] 1160 	cjne	r4,#0x0e,00427$
      000385                       1161 00427$:
      000385 50 09            [24] 1162 	jnc	00122$
                                   1163 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:178: time.hour += 10;
      000387 8C 03            [24] 1164 	mov	ar3,r4
      000389 74 0A            [12] 1165 	mov	a,#0x0a
      00038B 2B               [12] 1166 	add	a, r3
      00038C F5 0A            [12] 1167 	mov	(_time + 0x0002),a
      00038E 80 0F            [24] 1168 	sjmp	00125$
      000390                       1169 00122$:
                                   1170 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:179: else if (time.hour < 20)
      000390 BC 14 00         [24] 1171 	cjne	r4,#0x14,00429$
      000393                       1172 00429$:
      000393 50 05            [24] 1173 	jnc	00119$
                                   1174 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:180: time.hour = 20;
      000395 75 0A 14         [24] 1175 	mov	(_time + 0x0002),#0x14
      000398 80 05            [24] 1176 	sjmp	00125$
      00039A                       1177 00119$:
                                   1178 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:182: time.hour -= 20;
      00039A EC               [12] 1179 	mov	a,r4
      00039B 24 EC            [12] 1180 	add	a,#0xec
      00039D F5 0A            [12] 1181 	mov	(_time + 0x0002),a
      00039F                       1182 00125$:
                                   1183 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:184: u16swCount = 0;
      00039F 7E 00            [12] 1184 	mov	r6,#0x00
      0003A1 7F 00            [12] 1185 	mov	r7,#0x00
                                   1186 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:186: break;
      0003A3 02 05 34         [24] 1187 	ljmp	00175$
                                   1188 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:188: case 2:
      0003A6                       1189 00129$:
                                   1190 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:189: showSetup(u8mode);
      0003A6 8D 82            [24] 1191 	mov	dpl, r5
      0003A8 C0 07            [24] 1192 	push	ar7
      0003AA C0 06            [24] 1193 	push	ar6
      0003AC C0 05            [24] 1194 	push	ar5
      0003AE 12 01 D2         [24] 1195 	lcall	_showSetup
      0003B1 D0 05            [24] 1196 	pop	ar5
      0003B3 D0 06            [24] 1197 	pop	ar6
      0003B5 D0 07            [24] 1198 	pop	ar7
                                   1199 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:190: if (SW1) {
      0003B7 20 97 03         [24] 1200 	jb	_P17,00431$
      0003BA 02 05 34         [24] 1201 	ljmp	00175$
      0003BD                       1202 00431$:
                                   1203 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:191: if (u16swCount > 20 && u16swCount < 2000) {
      0003BD 8E 03            [24] 1204 	mov	ar3,r6
      0003BF 8F 04            [24] 1205 	mov	ar4,r7
      0003C1 C3               [12] 1206 	clr	c
      0003C2 74 14            [12] 1207 	mov	a,#0x14
      0003C4 9B               [12] 1208 	subb	a,r3
      0003C5 E4               [12] 1209 	clr	a
      0003C6 9C               [12] 1210 	subb	a,r4
      0003C7 50 52            [24] 1211 	jnc	00138$
      0003C9 C3               [12] 1212 	clr	c
      0003CA EB               [12] 1213 	mov	a,r3
      0003CB 94 D0            [12] 1214 	subb	a,#0xd0
      0003CD EC               [12] 1215 	mov	a,r4
      0003CE 94 07            [12] 1216 	subb	a,#0x07
      0003D0 50 49            [24] 1217 	jnc	00138$
                                   1218 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:192: if ((time.hour % 10) < 9 && time.hour < 23)
      0003D2 AC 0A            [24] 1219 	mov	r4,(_time + 0x0002)
      0003D4 8C 02            [24] 1220 	mov	ar2,r4
      0003D6 7B 00            [12] 1221 	mov	r3,#0x00
      0003D8 75 2C 0A         [24] 1222 	mov	__modsint_PARM_2,#0x0a
      0003DB 8B 2D            [24] 1223 	mov	(__modsint_PARM_2 + 1),r3
      0003DD 8A 82            [24] 1224 	mov	dpl, r2
      0003DF 8B 83            [24] 1225 	mov	dph, r3
      0003E1 C0 05            [24] 1226 	push	ar5
      0003E3 C0 04            [24] 1227 	push	ar4
      0003E5 12 0B 96         [24] 1228 	lcall	__modsint
      0003E8 AA 82            [24] 1229 	mov	r2, dpl
      0003EA AB 83            [24] 1230 	mov	r3, dph
      0003EC D0 04            [24] 1231 	pop	ar4
      0003EE D0 05            [24] 1232 	pop	ar5
      0003F0 C3               [12] 1233 	clr	c
      0003F1 EA               [12] 1234 	mov	a,r2
      0003F2 94 09            [12] 1235 	subb	a,#0x09
      0003F4 EB               [12] 1236 	mov	a,r3
      0003F5 64 80            [12] 1237 	xrl	a,#0x80
      0003F7 94 80            [12] 1238 	subb	a,#0x80
      0003F9 50 0B            [24] 1239 	jnc	00134$
      0003FB BC 17 00         [24] 1240 	cjne	r4,#0x17,00435$
      0003FE                       1241 00435$:
      0003FE 50 06            [24] 1242 	jnc	00134$
                                   1243 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:193: time.hour += 1;
      000400 EC               [12] 1244 	mov	a,r4
      000401 04               [12] 1245 	inc	a
      000402 F5 0A            [12] 1246 	mov	(_time + 0x0002),a
      000404 80 15            [24] 1247 	sjmp	00138$
      000406                       1248 00134$:
                                   1249 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:194: else if (time.hour >= 23)
      000406 AC 0A            [24] 1250 	mov	r4,(_time + 0x0002)
      000408 BC 17 00         [24] 1251 	cjne	r4,#0x17,00437$
      00040B                       1252 00437$:
      00040B 40 09            [24] 1253 	jc	00131$
                                   1254 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:195: time.hour -= 3;
      00040D 8C 03            [24] 1255 	mov	ar3,r4
      00040F EB               [12] 1256 	mov	a,r3
      000410 24 FD            [12] 1257 	add	a,#0xfd
      000412 F5 0A            [12] 1258 	mov	(_time + 0x0002),a
      000414 80 05            [24] 1259 	sjmp	00138$
      000416                       1260 00131$:
                                   1261 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:197: time.hour -= 9;
      000416 EC               [12] 1262 	mov	a,r4
      000417 24 F7            [12] 1263 	add	a,#0xf7
      000419 F5 0A            [12] 1264 	mov	(_time + 0x0002),a
      00041B                       1265 00138$:
                                   1266 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:199: u16swCount = 0;
      00041B 7E 00            [12] 1267 	mov	r6,#0x00
      00041D 7F 00            [12] 1268 	mov	r7,#0x00
                                   1269 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:201: break;
      00041F 02 05 34         [24] 1270 	ljmp	00175$
                                   1271 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:203: case 3:
      000422                       1272 00142$:
                                   1273 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:204: showSetup(u8mode);
      000422 8D 82            [24] 1274 	mov	dpl, r5
      000424 C0 07            [24] 1275 	push	ar7
      000426 C0 06            [24] 1276 	push	ar6
      000428 C0 05            [24] 1277 	push	ar5
      00042A 12 01 D2         [24] 1278 	lcall	_showSetup
      00042D D0 05            [24] 1279 	pop	ar5
      00042F D0 06            [24] 1280 	pop	ar6
      000431 D0 07            [24] 1281 	pop	ar7
                                   1282 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:205: if (SW1) {
      000433 20 97 03         [24] 1283 	jb	_P17,00439$
      000436 02 05 34         [24] 1284 	ljmp	00175$
      000439                       1285 00439$:
                                   1286 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:206: if (u16swCount > 20 && u16swCount < 2000) {
      000439 8E 03            [24] 1287 	mov	ar3,r6
      00043B 8F 04            [24] 1288 	mov	ar4,r7
      00043D C3               [12] 1289 	clr	c
      00043E 74 14            [12] 1290 	mov	a,#0x14
      000440 9B               [12] 1291 	subb	a,r3
      000441 E4               [12] 1292 	clr	a
      000442 9C               [12] 1293 	subb	a,r4
      000443 50 1E            [24] 1294 	jnc	00147$
      000445 C3               [12] 1295 	clr	c
      000446 EB               [12] 1296 	mov	a,r3
      000447 94 D0            [12] 1297 	subb	a,#0xd0
      000449 EC               [12] 1298 	mov	a,r4
      00044A 94 07            [12] 1299 	subb	a,#0x07
      00044C 50 15            [24] 1300 	jnc	00147$
                                   1301 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:207: if (time.minute < 50)
      00044E AC 09            [24] 1302 	mov	r4,(_time + 0x0001)
      000450 BC 32 00         [24] 1303 	cjne	r4,#0x32,00442$
      000453                       1304 00442$:
      000453 50 09            [24] 1305 	jnc	00144$
                                   1306 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:208: time.minute += 10;
      000455 8C 03            [24] 1307 	mov	ar3,r4
      000457 74 0A            [12] 1308 	mov	a,#0x0a
      000459 2B               [12] 1309 	add	a, r3
      00045A F5 09            [12] 1310 	mov	(_time + 0x0001),a
      00045C 80 05            [24] 1311 	sjmp	00147$
      00045E                       1312 00144$:
                                   1313 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:210: time.minute -= 50;
      00045E EC               [12] 1314 	mov	a,r4
      00045F 24 CE            [12] 1315 	add	a,#0xce
      000461 F5 09            [12] 1316 	mov	(_time + 0x0001),a
      000463                       1317 00147$:
                                   1318 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:212: u16swCount = 0;
      000463 7E 00            [12] 1319 	mov	r6,#0x00
      000465 7F 00            [12] 1320 	mov	r7,#0x00
                                   1321 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:214: break;
      000467 02 05 34         [24] 1322 	ljmp	00175$
                                   1323 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:216: case 4:
      00046A                       1324 00151$:
                                   1325 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:217: showSetup(u8mode);
      00046A 8D 82            [24] 1326 	mov	dpl, r5
      00046C C0 07            [24] 1327 	push	ar7
      00046E C0 06            [24] 1328 	push	ar6
      000470 C0 05            [24] 1329 	push	ar5
      000472 12 01 D2         [24] 1330 	lcall	_showSetup
      000475 D0 05            [24] 1331 	pop	ar5
      000477 D0 06            [24] 1332 	pop	ar6
      000479 D0 07            [24] 1333 	pop	ar7
                                   1334 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:218: if (SW1) {
      00047B 20 97 03         [24] 1335 	jb	_P17,00444$
      00047E 02 05 34         [24] 1336 	ljmp	00175$
      000481                       1337 00444$:
                                   1338 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:219: if (u16swCount > 20 && u16swCount < 2000) {
      000481 8E 03            [24] 1339 	mov	ar3,r6
      000483 8F 04            [24] 1340 	mov	ar4,r7
      000485 C3               [12] 1341 	clr	c
      000486 74 14            [12] 1342 	mov	a,#0x14
      000488 9B               [12] 1343 	subb	a,r3
      000489 E4               [12] 1344 	clr	a
      00048A 9C               [12] 1345 	subb	a,r4
      00048B 50 3F            [24] 1346 	jnc	00156$
      00048D C3               [12] 1347 	clr	c
      00048E EB               [12] 1348 	mov	a,r3
      00048F 94 D0            [12] 1349 	subb	a,#0xd0
      000491 EC               [12] 1350 	mov	a,r4
      000492 94 07            [12] 1351 	subb	a,#0x07
      000494 50 36            [24] 1352 	jnc	00156$
                                   1353 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:220: if ((time.minute % 10) < 9)
      000496 AC 09            [24] 1354 	mov	r4,(_time + 0x0001)
      000498 8C 02            [24] 1355 	mov	ar2,r4
      00049A 7B 00            [12] 1356 	mov	r3,#0x00
      00049C 75 2C 0A         [24] 1357 	mov	__modsint_PARM_2,#0x0a
      00049F 8B 2D            [24] 1358 	mov	(__modsint_PARM_2 + 1),r3
      0004A1 8A 82            [24] 1359 	mov	dpl, r2
      0004A3 8B 83            [24] 1360 	mov	dph, r3
      0004A5 C0 05            [24] 1361 	push	ar5
      0004A7 C0 04            [24] 1362 	push	ar4
      0004A9 12 0B 96         [24] 1363 	lcall	__modsint
      0004AC AA 82            [24] 1364 	mov	r2, dpl
      0004AE AB 83            [24] 1365 	mov	r3, dph
      0004B0 D0 04            [24] 1366 	pop	ar4
      0004B2 D0 05            [24] 1367 	pop	ar5
      0004B4 C3               [12] 1368 	clr	c
      0004B5 EA               [12] 1369 	mov	a,r2
      0004B6 94 09            [12] 1370 	subb	a,#0x09
      0004B8 EB               [12] 1371 	mov	a,r3
      0004B9 64 80            [12] 1372 	xrl	a,#0x80
      0004BB 94 80            [12] 1373 	subb	a,#0x80
      0004BD 50 08            [24] 1374 	jnc	00153$
                                   1375 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:221: time.minute += 1;
      0004BF 8C 03            [24] 1376 	mov	ar3,r4
      0004C1 EB               [12] 1377 	mov	a,r3
      0004C2 04               [12] 1378 	inc	a
      0004C3 F5 09            [12] 1379 	mov	(_time + 0x0001),a
      0004C5 80 05            [24] 1380 	sjmp	00156$
      0004C7                       1381 00153$:
                                   1382 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:223: time.minute -= 9;
      0004C7 EC               [12] 1383 	mov	a,r4
      0004C8 24 F7            [12] 1384 	add	a,#0xf7
      0004CA F5 09            [12] 1385 	mov	(_time + 0x0001),a
      0004CC                       1386 00156$:
                                   1387 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:225: u16swCount = 0;
      0004CC 7E 00            [12] 1388 	mov	r6,#0x00
      0004CE 7F 00            [12] 1389 	mov	r7,#0x00
                                   1390 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:227: break;
                                   1391 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:229: case 5:
      0004D0 80 62            [24] 1392 	sjmp	00175$
      0004D2                       1393 00160$:
                                   1394 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:230: time.second = 0;
      0004D2 75 08 00         [24] 1395 	mov	_time,#0x00
                                   1396 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:231: EIE1 |= 0x02; // Enable timer 3 interrupt
      0004D5 43 9C 02         [24] 1397 	orl	_EIE1,#0x02
                                   1398 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:232: u8mode = 0;
      0004D8 7D 00            [12] 1399 	mov	r5,#0x00
                                   1400 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:233: break;
                                   1401 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:235: case 6:
      0004DA 80 58            [24] 1402 	sjmp	00175$
      0004DC                       1403 00161$:
                                   1404 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:236: isrFunction = &showSecond;
      0004DC 75 0E 86         [24] 1405 	mov	_isrFunction,#_showSecond
      0004DF 75 0F 01         [24] 1406 	mov	(_isrFunction + 1),#(_showSecond >> 8)
                                   1407 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:237: if (SW1) {
      0004E2 30 97 4F         [24] 1408 	jnb	_P17,00175$
                                   1409 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:238: if (u16swCount > 20 && u16swCount < 2000)
      0004E5 8E 03            [24] 1410 	mov	ar3,r6
      0004E7 8F 04            [24] 1411 	mov	ar4,r7
      0004E9 C3               [12] 1412 	clr	c
      0004EA 74 14            [12] 1413 	mov	a,#0x14
      0004EC 9B               [12] 1414 	subb	a,r3
      0004ED E4               [12] 1415 	clr	a
      0004EE 9C               [12] 1416 	subb	a,r4
      0004EF 50 0B            [24] 1417 	jnc	00163$
      0004F1 C3               [12] 1418 	clr	c
      0004F2 EB               [12] 1419 	mov	a,r3
      0004F3 94 D0            [12] 1420 	subb	a,#0xd0
      0004F5 EC               [12] 1421 	mov	a,r4
      0004F6 94 07            [12] 1422 	subb	a,#0x07
      0004F8 50 02            [24] 1423 	jnc	00163$
                                   1424 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:239: u8mode = 8;
      0004FA 7D 08            [12] 1425 	mov	r5,#0x08
      0004FC                       1426 00163$:
                                   1427 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:240: u16swCount = 0;
      0004FC 7E 00            [12] 1428 	mov	r6,#0x00
      0004FE 7F 00            [12] 1429 	mov	r7,#0x00
                                   1430 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:242: break;
                                   1431 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:246: case 8:
      000500 80 32            [24] 1432 	sjmp	00175$
      000502                       1433 00167$:
                                   1434 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:247: isrFunction = &showStopwatch;
      000502 75 0E 94         [24] 1435 	mov	_isrFunction,#_showStopwatch
      000505 75 0F 01         [24] 1436 	mov	(_isrFunction + 1),#(_showStopwatch >> 8)
                                   1437 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:248: if (SW1) {
      000508 30 97 29         [24] 1438 	jnb	_P17,00175$
                                   1439 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:249: if (u16swCount > 20 && u16swCount < 2000)
      00050B 8E 03            [24] 1440 	mov	ar3,r6
      00050D 8F 04            [24] 1441 	mov	ar4,r7
      00050F C3               [12] 1442 	clr	c
      000510 74 14            [12] 1443 	mov	a,#0x14
      000512 9B               [12] 1444 	subb	a,r3
      000513 E4               [12] 1445 	clr	a
      000514 9C               [12] 1446 	subb	a,r4
      000515 50 0B            [24] 1447 	jnc	00169$
      000517 C3               [12] 1448 	clr	c
      000518 EB               [12] 1449 	mov	a,r3
      000519 94 D0            [12] 1450 	subb	a,#0xd0
      00051B EC               [12] 1451 	mov	a,r4
      00051C 94 07            [12] 1452 	subb	a,#0x07
      00051E 50 02            [24] 1453 	jnc	00169$
                                   1454 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:250: u8mode = 0;
      000520 7D 00            [12] 1455 	mov	r5,#0x00
      000522                       1456 00169$:
                                   1457 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:251: u16swCount = 0;
      000522 7E 00            [12] 1458 	mov	r6,#0x00
      000524 7F 00            [12] 1459 	mov	r7,#0x00
                                   1460 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:253: break;
                                   1461 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:255: case 9:
      000526 80 0C            [24] 1462 	sjmp	00175$
      000528                       1463 00173$:
                                   1464 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:256: stopwatch.minute = 0; // Reset stopwatch then return to mode 8
      000528 75 0C 00         [24] 1465 	mov	(_stopwatch + 0x0001),#0x00
                                   1466 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:257: stopwatch.second = 0;
      00052B 75 0B 00         [24] 1467 	mov	_stopwatch,#0x00
                                   1468 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:258: u8mode = 8;
      00052E 7D 08            [12] 1469 	mov	r5,#0x08
                                   1470 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:259: break;
                                   1471 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:261: default:
      000530 80 02            [24] 1472 	sjmp	00175$
      000532                       1473 00174$:
                                   1474 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:262: u8mode = 0;
      000532 7D 00            [12] 1475 	mov	r5,#0x00
                                   1476 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:263: }
      000534                       1477 00175$:
                                   1478 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:265: P12 = !P12;
      000534 B2 92            [12] 1479 	cpl	_P12
                                   1480 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:268: while (!(TCON & 0x20)); // Wait until timer 0 overflow
      000536                       1481 00176$:
      000536 E5 88            [12] 1482 	mov	a,_TCON
      000538 FC               [12] 1483 	mov	r4,a
      000539 30 E5 FA         [24] 1484 	jnb	acc.5,00176$
                                   1485 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:269: TH0 = (uint8_t)(49536 >> 8); // 65536 - 16000
      00053C 75 8C C1         [24] 1486 	mov	_TH0,#0xc1
                                   1487 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:270: TL0 = (uint8_t)(49536 & 0xFF);
      00053F 75 8A 80         [24] 1488 	mov	_TL0,#0x80
                                   1489 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:271: TCON &= 0xDF; // Clear TF0
      000542 53 88 DF         [24] 1490 	anl	_TCON,#0xdf
                                   1491 ;	/Users/oliver/code/c/Clock_n76e003/firmware/003Clock/main.c:273: }
      000545 02 02 EA         [24] 1492 	ljmp	00180$
                                   1493 	.area CSEG    (CODE)
                                   1494 	.area CONST   (CODE)
                                   1495 	.area XINIT   (CODE)
                                   1496 	.area CABS    (ABS,CODE)
