/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2023 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/
#include "numicro_8051.h"
#include "isp_uart1.h"

BIT volatile bUartDataReady;
BIT volatile g_timer0Over;
BIT volatile g_timer1Over;
BIT volatile g_progarmflag;
BIT BIT_TMP;

__xdata volatile uint8_t uart_rcvbuf[64];
__xdata volatile uint8_t uart_txbuf[64];
__data volatile uint8_t bufhead;
__data volatile uint16_t flash_address;
__data volatile uint16_t AP_size;
__data volatile uint8_t g_timer1Counter;
__data volatile uint8_t count;
__data volatile uint16_t g_timer0Counter;
__data volatile uint32_t g_checksum;
__data volatile uint32_t g_totalchecksum;
__data uint8_t PID_highB, PID_lowB, DID_highB, DID_lowB, CONF0, CONF1, CONF2, CONF4;
__data uint8_t recv_CONF0, recv_CONF1, recv_CONF2, recv_CONF4;
__data uint8_t hircmap0, hircmap1;

void MODIFY_HIRC(uint8_t u8HIRCSEL)
{
    unsigned int trimvalue16bit;

    IAPAL = 0x30;
    IAPAH = 0x00;
    IAPCN = READ_UID;
    set_IAPTRG_IAPGO;
    hircmap0 = IAPFD;
    IAPAL = 0x31;
    IAPAH = 0x00;
    set_IAPTRG_IAPGO;
    hircmap1 = IAPFD;

    switch (u8HIRCSEL) {
        case HIRC_166:
            trimvalue16bit = ((hircmap0 << 1) + (hircmap1 & 0x01));
            trimvalue16bit = trimvalue16bit - 15; // 40 KHz * 15 = 600 KHz
            hircmap1 = trimvalue16bit & 0x01;
            hircmap0 = trimvalue16bit >> 1;
            break;

        default: break;
    }

    TA = 0xAA;
    TA = 0x55;
    RCTRIM0 = hircmap0;
    TA = 0xAA;
    TA = 0x55;
    RCTRIM1 = hircmap1;
}

void READ_ID(void)
{
    IAPCN = READ_DID;
    IAPAH = 0x00;
    IAPAL = 0x00;
    set_IAPTRG_IAPGO;
    DID_lowB = IAPFD;
    IAPAL = 0x01;
    set_IAPTRG_IAPGO;
    DID_highB = IAPFD;
    IAPAL = 0x02;
    set_IAPTRG_IAPGO;
    PID_lowB = IAPFD;
    IAPAL = 0x03;
    set_IAPTRG_IAPGO;
    PID_highB = IAPFD;
}

void READ_CONFIG(void)
{
    IAPCN = BYTE_READ_CONFIG;
    IAPAL = 0x00;
    IAPAH = 0x00;
    set_IAPTRG_IAPGO;
    CONF0 = IAPFD;
    IAPAL = 0x01;
    set_IAPTRG_IAPGO;
    CONF1 = IAPFD;
    IAPAL = 0x02;
    set_IAPTRG_IAPGO;
    CONF2 = IAPFD;
    IAPAL = 0x04;
    set_IAPTRG_IAPGO;
    CONF4 = IAPFD;
    // clr_CHPCON_IAPEN;
}

void TM0_ini(void)
{
    TH0 = 0;
    TL0 = 0;
    set_TCON_TR0; // Start timer0
    set_IPH_PSH; // Serial port 0 interrupt level2
    set_IE_ET0;
}

void UART1_ini_115200_166MHz(void)
{
    P16_QUASI_MODE;                                  
    P02_INPUT_MODE;
  
    SCON_1 = 0x50; // UART1 Mode1, REN_1 = 1
    T3CON = 0x88; // T3PS2 = 0, T3PS1 = 0, T3PS0 = 0(Prescale=1), UART1 in MODE 1
    clr_T3CON_BRCK;
    RH3 = HIBYTE(65536 - 9);
    RL3 = LOBYTE(65536 - 9);
    set_T3CON_TR3; // Trigger Timer3 
    // set_EIE1_ES_1;
    EA = 1;
}

void Package_checksum(void)
{
    uint8_t vo8temp;
    g_checksum = 0;
    for(count = 0; count < 64; count++)
    {
        vo8temp = uart_rcvbuf[count];
        g_checksum += vo8temp;    
    }
    uart_txbuf[0] = g_checksum & 0xFF;
    uart_txbuf[1] = (g_checksum >> 8) & 0xFF;
    uart_txbuf[4] = uart_rcvbuf[4] + 1;
    uart_txbuf[5] = uart_rcvbuf[5];
    if (uart_txbuf[4] == 0x00)
        uart_txbuf[5]++;
}

void Send_64byte_To_UART1(void)
{
    SFRS=0;
    for(count = 0; count < 64; count++)
    {
        TI_1 = 0;  
        SBUF_1 = uart_txbuf[count];
        while (TI_1 == 0);
    }
}
