;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16C73B, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADCON1 equ 0X009F
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
IRP=7
RP1=6
RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
CCP1X=5
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS2=5
CHS1=4
CHS0=3
GO=2
NOT_DONE=2
GO_DONE=2
PP_GO_DONE=2
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
PCFG2=2
PCFG1=1
PCFG0=0
  __MAXRAM 0XFF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X00CF
CP_75 equ 0X15DF
CP_50 equ 0X2AEF
CP_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16C73B 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 2
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define _SYSTEM_VARIABLE_COUNT 25
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTB
#define LCD#DTPIN 4
#define LCD#RSPORT PORTB
#define LCD#RSPIN 2
#define LCD#ENPORT PORTB
#define LCD#ENPIN 3
#define LCD#INTERFACE 4
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        goto PDEST
        endm
set@page macro PDEST
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
        endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
        bcf 3,5
endif
if(ram_bank == 2)
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
        bcf 3,6
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
        bsf 3,5
endif
if(ram_bank == 2)
        bsf 3,5
        bcf 3,6
endif
if(ram_bank == 3)
        bcf 3,6
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
        bsf 3,6
endif
if(ram_bank == 1)
        bcf 3,5
        bsf 3,6
endif
if(ram_bank == 3)
        bcf 3,5
endif
ram_bank = 2
endif
        endm
r@b     macro
if((ram_bank & 1) != 0)
        bcf 3,5
endif
if((ram_bank & 2) != 0)
        bcf 3,6
endif
ram_bank = 0
        endm
jump macro PLABEL
    goto PLABEL
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
variable CURRENT@PAGE = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    CURRENT@PAGE = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    CURRENT@PAGE = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    CURRENT@PAGE = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    CURRENT@PAGE = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
NUM_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw low (pLabelIn)
    s@b pWordOut
    movwf pWordOut
    movlw high (pLabelIn)
    s@b pWordOut
    movwf pWordOut+1
    r@b
    endm
BPF = 32
BPFH = 33
GEN = 34
GEN4 = 35
GEN4H = 36
GENH = 37
PBP#VAR0 = 38
PBP#VAR1 = 39
PBP#VAR2 = 40
PP0 = 41
PP0H = 42
PP1 = 43
PP1H = 44
PP2 = 45
PP2H = 46
PP3 = 47
PP3H = 48
PP4 = 49
PP5 = 50
PP6 = 51
PP6H = 52
PP7 = 53
PP7H = 54
PP8 = 55
PP8H = 56
_X = 57
temp = 58
variable temp#0=58,temp#1=59,temp#2=60
second = 61
minute = 62
minuteH = 63
a_sec_r2 = 64
a_sec_r2H = 65
a_sec_r3 = 66
a_sec_r3H = 67
a_sec_r4 = 68
a_sec_r4H = 69
m_sec_r1 = 70
m_sec_r1H = 71
m_sec_r2 = 72
m_sec_r2H = 73
m_sec_r3 = 74
m_sec_r3H = 75
m_sec_r4 = 76
m_sec_r4H = 77
g_sec_r1 = 78
g_sec_r1H = 79
g_sec_r2 = 80
g_sec_r2H = 81
g_sec_r3 = 82
g_sec_r3H = 83
g_sec_r4 = 84
g_sec_r4H = 85
mode = 86
_B#VR1 = 87
msg = 88
variable msg#0=88,msg#1=89,msg#2=90,msg#3=91
variable msg#4=92,msg#5=93,msg#6=94,msg#7=95
variable msg#8=96,msg#9=97,msg#10=98,msg#11=99
variable msg#12=100,msg#13=101,msg#14=102,msg#15=103
variable msg#16=104,msg#17=105,msg#18=106,msg#19=107
key = 108
key_value = 109
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define rly1 PORTA,3
#define rly2 PORTA,2
#define rly3 PORTA,1
#define rly4 PORTA,0
#define t_stop _B#VR1,0
#define r1_done _B#VR1,1
#define r2_done _B#VR1,2
#define r3_done _B#VR1,3
#define r4_done _B#VR1,4
#define col_1 PORTC,3
#define col_2 PORTC,2
#define col_3 PORTC,1
#define col_4 PORTC,0
#define row_4 PORTC,4
#define row_3 PORTC,5
#define row_2 PORTB,0
#define row_1 PORTB,1
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 49664
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
#define a_r1_sec 10
#define a_r2_sec 10
#define a_r3_sec 10
#define a_r4_sec 10
HSERIAL_SPBRG = 10
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 115200
proton#code#start
        org 0
        goto proton#main#start
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 42
        movlw 48
        goto DLUS@W
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 50
        tstf 50
        skpz
        goto $ + 3
        clrw
        goto $ + 2
        movlw 1
        subwf 50,F
        bcf 3,0
        rrf 34,F
        rrf 34,F
        rrf 34,F
        movlw 192
        andwf 34,W
        addlw 64
        addwf 50,F
        movlw 254
        call CH@SND
        movf 50,W
        goto CH@SND
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 50
        movlw 254
        call CH@SND
        movf 50,W
        goto CH@SND
OUT@DECB
        clrf 36
OUT@DECC
        movwf 45
        clrf 46
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
        movlw 39
        movwf 44
        movlw 16
        call D@DIG
        movlw 3
        movwf 44
        movlw 232
        call D@DIG
        clrf 44
        movlw 100
        call D@DIG
        clrf 44
        movlw 10
        call D@DIG
        movf 45,W
        goto SEND@IT
D@DIG
        movwf 43
        movf 46,W
        movwf 42
        movf 45,W
        movwf 41
        call D@VD
        movf 41,W
SEND@IT
        movwf 41
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 41,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 48
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 48,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 42
        movlw 128
        call DLUS@W
        movlw 51
        movwf 47
        call PR@LP
        movlw 19
        movwf 42
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 47
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 48,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 47
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 42
        movlw 208
        call DLUS@W
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTB,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,3
        movlw 15
        andwf PORTB,F
        movf 47,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 47,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 48,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 41
        movf 37,W
        movwf 42
        clrf 43
        clrf 44
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        addwf 41,F
        skpc
        addwf 42,F
        skpc
        goto I@NT
        incfsz 43,W
        goto $ - 16
        incfsz 44,W
        goto $ - 17
        movlw 250
        movwf 43
        clrf 44
        goto HRSIN@LPT
HRSIN
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        btfss 12,PP_RCIF
        goto $ - 1
H@RSIN
        movf 26,W
        bsf 3,0
        goto I@NT
HRSOUT
        btfss 12,PP_TXIF
        goto $ - 1
        movwf 25
        bsf 3,0
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        btfsc 33,2
        goto HRSOUT
        return
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 44
DLY@W
        movwf 43
DLY@P
        movlw 255
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        movlw 3
        movwf 42
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 42
DLUS@W
        addlw 252
        movwf 41
        comf 42,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 41,F
        skpnc
        goto $ - 3
        addwf 41,F
        nop
        incfsz 42,F
        goto $ - 8
        return
D@VD
        clrf 46
        clrf 45
D@VD2
        movlw 16
        movwf 47
        rlf 42,W
        rlf 45,F
        rlf 46,F
        movf 43,W
        subwf 45,F
        movf 44,W
        skpc
        incfsz 44,W
        subwf 46,F
        skpnc
        goto $ + 8
        movf 43,W
        addwf 45,F
        movf 44,W
        skpnc
        incfsz 44,W
        addwf 46,F
        bcf 3,0
        rlf 41,F
        rlf 42,F
        decfsz 47,F
        goto $ - 21
        movf 41,W
        return
M@PY
        movlw 16
        movwf 52
        clrf 42
        clrf 41
        rrf 48,F
        rrf 47,F
        skpc
        goto $ + 7
        movf 43,W
        addwf 41,F
        movf 44,W
        skpnc
        incfsz 44,W
        addwf 42,F
        rrf 42,F
        rrf 41,F
        rrf 46,F
        rrf 45,F
        decfsz 52,F
        goto $ - 15
        movf 45,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        bsf 3,5
        movlw 10
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; TIME MANAGEMENT.PRP
F2_EOF equ $ ; TIME MANAGEMENT.PRP
F1_SOF equ $ ; TIME MANAGEMENT.BAS
F1_000020 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000022 equ $ ; IN [TIME MANAGEMENT.BAS] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000023 equ $ ; IN [TIME MANAGEMENT.BAS] TRISA = 0 : PORTA = 0
        clrf TRISA
        bcf STATUS,5
ram_bank = 0
        clrf PORTA
F1_000052 equ $ ; IN [TIME MANAGEMENT.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000060 equ $ ; IN [TIME MANAGEMENT.BAS] A_SEC_R2 = A_R2_SEC + A_R1_SEC
        clrf a_sec_r2H
        movlw 20
        movwf a_sec_r2
F1_000061 equ $ ; IN [TIME MANAGEMENT.BAS] A_SEC_R3 = A_R3_SEC + A_SEC_R2
        movlw 10
        addwf a_sec_r2,W
        movwf a_sec_r3
        movf a_sec_r2H,W
        btfsc STATUS,0
        addlw 1
        movwf a_sec_r3H
F1_000062 equ $ ; IN [TIME MANAGEMENT.BAS] A_SEC_R4 = A_R4_SEC + A_SEC_R3
        movlw 10
        addwf a_sec_r3,W
        movwf a_sec_r4
        movf a_sec_r3H,W
        btfsc STATUS,0
        addlw 1
        movwf a_sec_r4H
F1_000064 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT $FE, $48, 0,17,10,4,10,17,0,0
        movlw 254
        f@call PRINT
        movlw 72
        f@call PRINT
        movlw 0
        f@call PRINT
        movlw 17
        f@call PRINT
        movlw 10
        f@call PRINT
        movlw 4
        f@call PRINT
        movlw 10
        f@call PRINT
        movlw 17
        f@call PRINT
        movlw 0
        f@call PRINT
        movlw 0
        f@call PRINT
F1_000065 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT $FE, $40, 1,2,20,9,2,20,8,0
        movlw 254
        f@call PRINT
        movlw 64
        f@call PRINT
        movlw 1
        f@call PRINT
        movlw 2
        f@call PRINT
        movlw 20
        f@call PRINT
        movlw 9
        f@call PRINT
        movlw 2
        f@call PRINT
        movlw 20
        f@call PRINT
        movlw 8
        f@call PRINT
        movlw 0
        f@call PRINT
Gsm_init
F1_000068 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1, "WAITING FOR GSM"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 87
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 102
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
F1_000069 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000070 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1, "."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000071 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000072 equ $ ; IN [TIME MANAGEMENT.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page Gsm_init
        btfss STATUS,0
        goto Gsm_init
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page Gsm_init
        btfss STATUS,0
        goto Gsm_init
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000073 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,2, "."
        movlw 128
        movwf BPFH
        movlw 193
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000074 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["ATE0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 69
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000075 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000076 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,3, "."
        movlw 128
        movwf BPFH
        movlw 194
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000077 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["AT+CSDH=1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000078 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000079 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,4, "."
        movlw 128
        movwf BPFH
        movlw 195
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000080 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["AT+CMGF=1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000081 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000082 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,4, "."
        movlw 128
        movwf BPFH
        movlw 195
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000083 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 50
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000084 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000085 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,5, "."
        movlw 128
        movwf BPFH
        movlw 196
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000086 equ $ ; IN [TIME MANAGEMENT.BAS] HSEROUT["AT+CMGD=4", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 52
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000087 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000088 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,4, "."
        movlw 128
        movwf BPFH
        movlw 195
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000089 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000090 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F3_SOF equ $ ; KEYPAD4X4.INC
checking
F3_000022 equ $ ; IN [KEYPAD4X4.INC] INPUT ROW_1 : INPUT ROW_2 : INPUT ROW_3 : INPUT ROW_4
        bsf STATUS,5
ram_bank = 1
        bsf TRISB,1
        bsf TRISB,0
        bsf TRISC,5
        bsf TRISC,4
F3_000023 equ $ ; IN [KEYPAD4X4.INC] OUTPUT COL_1 : OUTPUT COL_2 : OUTPUT COL_3 : OUTPUT COL_4
        bcf TRISC,3
        bcf TRISC,2
        bcf TRISC,1
        bcf TRISC,0
F3_000026 equ $ ; IN [KEYPAD4X4.INC] GOTO MAIN
        bcf STATUS,5
ram_bank = 0
        F@JUMP main
capture_key
F3_000029 equ $ ; IN [KEYPAD4X4.INC] KEY_VALUE = 0 : KEY = 0
        clrf key_value
        clrf key
F3_000030 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 1 : COL_2 = 0 : COL_3 = 0 : COL_4 = 0
        bsf PORTC,3
        bcf PORTC,2
        bcf PORTC,1
        bcf PORTC,0
F3_000031 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000032 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL3
        btfss PORTB,1
        goto BC@LL3
F3_000033 equ $ ; IN [KEYPAD4X4.INC] KEY = 1 : GOSUB GET_CODE
        movlw 1
        movwf key
        f@call get_code
        F@JUMP BC@LL2
F3_000034 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL3
        set@page BC@LL4
        btfss PORTB,0
        goto BC@LL4
F3_000035 equ $ ; IN [KEYPAD4X4.INC] KEY = 2 : GOSUB GET_CODE
        movlw 2
        movwf key
        f@call get_code
        F@JUMP BC@LL2
F3_000036 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL4
        set@page BC@LL5
        btfss PORTC,5
        goto BC@LL5
F3_000037 equ $ ; IN [KEYPAD4X4.INC] KEY = 3 : GOSUB GET_CODE
        movlw 3
        movwf key
        f@call get_code
        F@JUMP BC@LL2
F3_000038 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL5
        set@page BC@LL6
        btfss PORTC,4
        goto BC@LL6
F3_000039 equ $ ; IN [KEYPAD4X4.INC] KEY = 4 : GOSUB GET_CODE
        movlw 4
        movwf key
        f@call get_code
F3_000040 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL6
BC@LL2
F3_000041 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 1 : COL_3 = 0 : COL_4 = 0
        bcf PORTC,3
        bsf PORTC,2
        bcf PORTC,1
        bcf PORTC,0
F3_000042 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000043 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL8
        btfss PORTB,1
        goto BC@LL8
F3_000044 equ $ ; IN [KEYPAD4X4.INC] KEY = 5 : GOSUB GET_CODE
        movlw 5
        movwf key
        f@call get_code
        F@JUMP BC@LL7
F3_000045 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL8
        set@page BC@LL9
        btfss PORTB,0
        goto BC@LL9
F3_000046 equ $ ; IN [KEYPAD4X4.INC] KEY = 6 : GOSUB GET_CODE
        movlw 6
        movwf key
        f@call get_code
        F@JUMP BC@LL7
F3_000047 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL9
        set@page BC@LL10
        btfss PORTC,5
        goto BC@LL10
F3_000048 equ $ ; IN [KEYPAD4X4.INC] KEY = 7 : GOSUB GET_CODE
        movlw 7
        movwf key
        f@call get_code
        F@JUMP BC@LL7
F3_000049 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL10
        set@page BC@LL11
        btfss PORTC,4
        goto BC@LL11
F3_000050 equ $ ; IN [KEYPAD4X4.INC] KEY = 8 : GOSUB GET_CODE
        movlw 8
        movwf key
        f@call get_code
F3_000051 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL11
BC@LL7
F3_000052 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 1 : COL_4 = 0
        bcf PORTC,3
        bcf PORTC,2
        bsf PORTC,1
        bcf PORTC,0
F3_000053 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000054 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL13
        btfss PORTB,1
        goto BC@LL13
F3_000055 equ $ ; IN [KEYPAD4X4.INC] KEY = 9 : GOSUB GET_CODE
        movlw 9
        movwf key
        f@call get_code
        F@JUMP BC@LL12
F3_000056 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL13
        set@page BC@LL14
        btfss PORTB,0
        goto BC@LL14
F3_000057 equ $ ; IN [KEYPAD4X4.INC] KEY = 10 : GOSUB GET_CODE
        movlw 10
        movwf key
        f@call get_code
        F@JUMP BC@LL12
F3_000058 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL14
        set@page BC@LL15
        btfss PORTC,5
        goto BC@LL15
F3_000059 equ $ ; IN [KEYPAD4X4.INC] KEY = 11 : GOSUB GET_CODE
        movlw 11
        movwf key
        f@call get_code
        F@JUMP BC@LL12
F3_000060 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL15
        set@page BC@LL16
        btfss PORTC,4
        goto BC@LL16
F3_000061 equ $ ; IN [KEYPAD4X4.INC] KEY = 12 : GOSUB GET_CODE
        movlw 12
        movwf key
        f@call get_code
F3_000062 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL16
BC@LL12
F3_000063 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 0 : COL_4 = 1
        bcf PORTC,3
        bcf PORTC,2
        bcf PORTC,1
        bsf PORTC,0
F3_000064 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000065 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL18
        btfss PORTB,1
        goto BC@LL18
F3_000066 equ $ ; IN [KEYPAD4X4.INC] KEY = 13 : GOSUB GET_CODE
        movlw 13
        movwf key
        f@call get_code
        F@JUMP BC@LL17
F3_000067 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL18
        set@page BC@LL19
        btfss PORTB,0
        goto BC@LL19
F3_000068 equ $ ; IN [KEYPAD4X4.INC] KEY = 14 : GOSUB GET_CODE
        movlw 14
        movwf key
        f@call get_code
        F@JUMP BC@LL17
F3_000069 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL19
        set@page BC@LL20
        btfss PORTC,5
        goto BC@LL20
F3_000070 equ $ ; IN [KEYPAD4X4.INC] KEY = 15 : GOSUB GET_CODE
        movlw 15
        movwf key
        f@call get_code
        F@JUMP BC@LL17
F3_000071 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL20
        set@page BC@LL21
        btfss PORTC,4
        goto BC@LL21
F3_000072 equ $ ; IN [KEYPAD4X4.INC] KEY = 16 : GOSUB GET_CODE
        movlw 16
        movwf key
        f@call get_code
F3_000073 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL21
BC@LL17
F3_000074 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
read_key
F3_000077 equ $ ; IN [KEYPAD4X4.INC] REPEAT
BC@LL22
F3_000078 equ $ ; IN [KEYPAD4X4.INC] GOSUB CAPTURE_KEY
        f@call capture_key
BC@LL24
F3_000079 equ $ ; IN [KEYPAD4X4.INC] UNTIL KEY != 0
        movf key,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
BC@LL23
F3_000080 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
get_code
F3_000083 equ $ ; IN [KEYPAD4X4.INC] SELECT KEY
F3_000084 equ $ ; IN [KEYPAD4X4.INC] CASE 0 : KEY_VALUE = 0 : RETURN
        movf key,F
        set@page BC@LL26
        btfss STATUS,2
        goto BC@LL26
ram_bank = 0
        clrf key_value
        return
        F@JUMP BC@LL25
BC@LL26
F3_000085 equ $ ; IN [KEYPAD4X4.INC] CASE 1 : KEY_VALUE = "1" : DELAYMS 500
        movlw 1
        subwf key,W
        set@page BC@LL29
        btfss STATUS,2
        goto BC@LL29
ram_bank = 0
        movlw 49
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL29
F3_000086 equ $ ; IN [KEYPAD4X4.INC] CASE 2 : KEY_VALUE = "4" : DELAYMS 500
        movlw 2
        subwf key,W
        set@page BC@LL31
        btfss STATUS,2
        goto BC@LL31
ram_bank = 0
        movlw 52
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL31
F3_000087 equ $ ; IN [KEYPAD4X4.INC] CASE 3 : KEY_VALUE = "7" : DELAYMS 500
        movlw 3
        subwf key,W
        set@page BC@LL33
        btfss STATUS,2
        goto BC@LL33
ram_bank = 0
        movlw 55
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL33
F3_000088 equ $ ; IN [KEYPAD4X4.INC] CASE 4 : KEY_VALUE = "*" : DELAYMS 500
        movlw 4
        subwf key,W
        set@page BC@LL35
        btfss STATUS,2
        goto BC@LL35
ram_bank = 0
        movlw 42
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL35
F3_000089 equ $ ; IN [KEYPAD4X4.INC] CASE 5 : KEY_VALUE = "2" : DELAYMS 500
        movlw 5
        subwf key,W
        set@page BC@LL37
        btfss STATUS,2
        goto BC@LL37
ram_bank = 0
        movlw 50
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL37
F3_000090 equ $ ; IN [KEYPAD4X4.INC] CASE 6 : KEY_VALUE = "5" : DELAYMS 500
        movlw 6
        subwf key,W
        set@page BC@LL39
        btfss STATUS,2
        goto BC@LL39
ram_bank = 0
        movlw 53
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL39
F3_000091 equ $ ; IN [KEYPAD4X4.INC] CASE 7 : KEY_VALUE = "8" : DELAYMS 500
        movlw 7
        subwf key,W
        set@page BC@LL41
        btfss STATUS,2
        goto BC@LL41
ram_bank = 0
        movlw 56
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL41
F3_000092 equ $ ; IN [KEYPAD4X4.INC] CASE 8 : KEY_VALUE = "0" : DELAYMS 500
        movlw 8
        subwf key,W
        set@page BC@LL43
        btfss STATUS,2
        goto BC@LL43
ram_bank = 0
        movlw 48
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL43
F3_000093 equ $ ; IN [KEYPAD4X4.INC] CASE 9 : KEY_VALUE = "3" : DELAYMS 500
        movlw 9
        subwf key,W
        set@page BC@LL45
        btfss STATUS,2
        goto BC@LL45
ram_bank = 0
        movlw 51
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL45
F3_000094 equ $ ; IN [KEYPAD4X4.INC] CASE 10 : KEY_VALUE = "6" : DELAYMS 500
        movlw 10
        subwf key,W
        set@page BC@LL47
        btfss STATUS,2
        goto BC@LL47
ram_bank = 0
        movlw 54
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL47
F3_000095 equ $ ; IN [KEYPAD4X4.INC] CASE 11 : KEY_VALUE = "9" : DELAYMS 500
        movlw 11
        subwf key,W
        set@page BC@LL49
        btfss STATUS,2
        goto BC@LL49
ram_bank = 0
        movlw 57
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL49
F3_000096 equ $ ; IN [KEYPAD4X4.INC] CASE 12 : KEY_VALUE = "#" : DELAYMS 500
        movlw 12
        subwf key,W
        set@page BC@LL51
        btfss STATUS,2
        goto BC@LL51
ram_bank = 0
        movlw 35
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL51
F3_000097 equ $ ; IN [KEYPAD4X4.INC] CASE 13 : KEY_VALUE = "A" : DELAYMS 500
        movlw 13
        subwf key,W
        set@page BC@LL53
        btfss STATUS,2
        goto BC@LL53
ram_bank = 0
        movlw 65
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL53
F3_000098 equ $ ; IN [KEYPAD4X4.INC] CASE 14 : KEY_VALUE = "B" : DELAYMS 500
        movlw 14
        subwf key,W
        set@page BC@LL55
        btfss STATUS,2
        goto BC@LL55
ram_bank = 0
        movlw 66
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL55
F3_000099 equ $ ; IN [KEYPAD4X4.INC] CASE 15 : KEY_VALUE = "C" : DELAYMS 500
        movlw 15
        subwf key,W
        set@page BC@LL57
        btfss STATUS,2
        goto BC@LL57
ram_bank = 0
        movlw 67
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL25
BC@LL57
F3_000100 equ $ ; IN [KEYPAD4X4.INC] CASE 16 : KEY_VALUE = "D" : DELAYMS 500
        movlw 16
        subwf key,W
        set@page BC@LL59
        btfss STATUS,2
        goto BC@LL59
ram_bank = 0
        movlw 68
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F3_000101 equ $ ; IN [KEYPAD4X4.INC] CASE ELSE : KEY_VALUE = 0 : RETURN
        F@JUMP BC@LL61
BC@LL59
        clrf key_value
        return
F3_000102 equ $ ; IN [KEYPAD4X4.INC] ENDSELECT
BC@LL61
BC@LL25
F3_000103 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
F3_EOF equ $ ; KEYPAD4X4.INC
main
F1_000095 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"TIME MANAGEMENT."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 84
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 46
        f@call PRINT
F1_000096 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1, DEC2 MINUTE, ":", DEC2 SECOND
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 2
        movwf GEN4H
        movf minuteH,W
        movwf PP2H
        movf minute,W
        movwf PP2
        f@call OUT@DEC
        movlw 58
        f@call PRINT
        movlw 2
        movwf GEN4H
        movf second,W
        f@call OUT@DECC
F1_000097 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = 60 THEN
        movlw 60
        subwf second,W
        set@page BC@LL63
        btfss STATUS,2
        goto BC@LL63
F1_000098 equ $ ; IN [TIME MANAGEMENT.BAS] SECOND = 0
        clrf second
F1_000099 equ $ ; IN [TIME MANAGEMENT.BAS] INC MINUTE
        incf minute,F
        btfsc STATUS,2
        incf minuteH,F
F1_000100 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL63
F1_000101 equ $ ; IN [TIME MANAGEMENT.BAS] IF RLY1 = 0 THEN PRINT AT 2,7, 1 : ELSE : PRINT AT 2,7, 0
        set@page BC@LL65
        btfsc PORTA,3
        goto BC@LL65
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        movlw 1
        f@call PRINT
        F@JUMP BC@LL66
BC@LL65
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        movlw 0
        f@call PRINT
BC@LL66
F1_000102 equ $ ; IN [TIME MANAGEMENT.BAS] IF RLY2 = 0 THEN PRINT AT 2,8, 1 : ELSE : PRINT AT 2,8, 0
        set@page BC@LL68
        btfsc PORTA,2
        goto BC@LL68
        movlw 128
        movwf BPFH
        movlw 199
        f@call LCD@CRS
        movlw 1
        f@call PRINT
        F@JUMP BC@LL69
BC@LL68
        movlw 128
        movwf BPFH
        movlw 199
        f@call LCD@CRS
        movlw 0
        f@call PRINT
BC@LL69
F1_000103 equ $ ; IN [TIME MANAGEMENT.BAS] IF RLY3 = 0 THEN PRINT AT 2,9, 1 : ELSE : PRINT AT 2,9, 0
        set@page BC@LL71
        btfsc PORTA,1
        goto BC@LL71
        movlw 128
        movwf BPFH
        movlw 200
        f@call LCD@CRS
        movlw 1
        f@call PRINT
        F@JUMP BC@LL72
BC@LL71
        movlw 128
        movwf BPFH
        movlw 200
        f@call LCD@CRS
        movlw 0
        f@call PRINT
BC@LL72
F1_000104 equ $ ; IN [TIME MANAGEMENT.BAS] IF RLY4 = 0 THEN PRINT AT 2,10, 1 : ELSE : PRINT AT 2,10, 0
        set@page BC@LL74
        btfsc PORTA,0
        goto BC@LL74
        movlw 128
        movwf BPFH
        movlw 201
        f@call LCD@CRS
        movlw 1
        f@call PRINT
        F@JUMP BC@LL75
BC@LL74
        movlw 128
        movwf BPFH
        movlw 201
        f@call LCD@CRS
        movlw 0
        f@call PRINT
BC@LL75
F1_000105 equ $ ; IN [TIME MANAGEMENT.BAS] IF MODE = 0 THEN
        movf mode,F
        set@page BC@LL77
        btfss STATUS,2
        goto BC@LL77
F1_000106 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,12, "AUTO "
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 65
        f@call PRINT
        movlw 85
        f@call PRINT
        movlw 84
        f@call PRINT
        movlw 79
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000107 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = A_R1_SEC THEN RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 1
        movlw 10
        subwf second,W
        set@page BC@LL79
        btfss STATUS,2
        goto BC@LL79
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bsf PORTA,0
BC@LL79
F1_000108 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = A_SEC_R2 THEN RLY1 = 0 : RLY2 = 0 : RLY3 = 1 : RLY4 = 1
        movf a_sec_r2H,F
        set@page BC@LL81
        btfss STATUS,2
        goto BC@LL81
        movf a_sec_r2,W
        subwf second,W
        set@page BC@LL81
        btfss STATUS,2
        goto BC@LL81
        bcf PORTA,3
        bcf PORTA,2
        bsf PORTA,1
        bsf PORTA,0
BC@LL81
F1_000109 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = A_SEC_R3 THEN RLY1 = 0 : RLY2 = 1 : RLY3 = 1 : RLY4 = 1
        movf a_sec_r3H,F
        set@page BC@LL83
        btfss STATUS,2
        goto BC@LL83
        movf a_sec_r3,W
        subwf second,W
        set@page BC@LL83
        btfss STATUS,2
        goto BC@LL83
        bcf PORTA,3
        bsf PORTA,2
        bsf PORTA,1
        bsf PORTA,0
BC@LL83
F1_000110 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = A_SEC_R4 THEN RLY1 = 1 : RLY2 = 1 : RLY3 = 1 : RLY4 = 1
        movf a_sec_r4H,F
        set@page BC@LL85
        btfss STATUS,2
        goto BC@LL85
        movf a_sec_r4,W
        subwf second,W
        set@page BC@LL85
        btfss STATUS,2
        goto BC@LL85
        bsf PORTA,3
        bsf PORTA,2
        bsf PORTA,1
        bsf PORTA,0
BC@LL85
F1_000111 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = 50 THEN RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0 : SECOND = 0
        movlw 50
        subwf second,W
        set@page BC@LL87
        btfss STATUS,2
        goto BC@LL87
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
        clrf second
BC@LL87
        F@JUMP BC@LL76
F1_000112 equ $ ; IN [TIME MANAGEMENT.BAS] ELSEIF MODE = 1 THEN
BC@LL77
        movlw 1
        subwf mode,W
        set@page BC@LL88
        btfss STATUS,2
        goto BC@LL88
F1_000113 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,12, "MAN. "
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 46
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000114 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = M_SEC_R1 THEN RLY1 = 1
        movf m_sec_r1H,F
        set@page BC@LL90
        btfss STATUS,2
        goto BC@LL90
        movf m_sec_r1,W
        subwf second,W
        set@page BC@LL90
        btfss STATUS,2
        goto BC@LL90
        bsf PORTA,3
BC@LL90
F1_000115 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = M_SEC_R2 THEN RLY2 = 1
        movf m_sec_r2H,F
        set@page BC@LL92
        btfss STATUS,2
        goto BC@LL92
        movf m_sec_r2,W
        subwf second,W
        set@page BC@LL92
        btfss STATUS,2
        goto BC@LL92
        bsf PORTA,2
BC@LL92
F1_000116 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = M_SEC_R3 THEN RLY3 = 1
        movf m_sec_r3H,F
        set@page BC@LL94
        btfss STATUS,2
        goto BC@LL94
        movf m_sec_r3,W
        subwf second,W
        set@page BC@LL94
        btfss STATUS,2
        goto BC@LL94
        bsf PORTA,1
BC@LL94
F1_000117 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = M_SEC_R4 THEN
        movf m_sec_r4H,F
        set@page BC@LL96
        btfss STATUS,2
        goto BC@LL96
        movf m_sec_r4,W
        subwf second,W
        set@page BC@LL96
        btfss STATUS,2
        goto BC@LL96
F1_000118 equ $ ; IN [TIME MANAGEMENT.BAS] RLY4 = 1
        bsf PORTA,0
F1_000119 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000120 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0 : SECOND = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
        clrf second
F1_000121 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL96
        F@JUMP BC@LL76
F1_000122 equ $ ; IN [TIME MANAGEMENT.BAS] ELSEIF MODE = 2 THEN
BC@LL88
        movlw 2
        subwf mode,W
        set@page BC@LL97
        btfss STATUS,2
        goto BC@LL97
F1_000123 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,12, "GSM. "
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 46
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000124 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = G_SEC_R1 THEN RLY1 = 1
        movf g_sec_r1H,F
        set@page BC@LL99
        btfss STATUS,2
        goto BC@LL99
        movf g_sec_r1,W
        subwf second,W
        set@page BC@LL99
        btfss STATUS,2
        goto BC@LL99
        bsf PORTA,3
BC@LL99
F1_000125 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = G_SEC_R2 THEN RLY2 = 1
        movf g_sec_r2H,F
        set@page BC@LL101
        btfss STATUS,2
        goto BC@LL101
        movf g_sec_r2,W
        subwf second,W
        set@page BC@LL101
        btfss STATUS,2
        goto BC@LL101
        bsf PORTA,2
BC@LL101
F1_000126 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = G_SEC_R3 THEN RLY3 = 1
        movf g_sec_r3H,F
        set@page BC@LL103
        btfss STATUS,2
        goto BC@LL103
        movf g_sec_r3,W
        subwf second,W
        set@page BC@LL103
        btfss STATUS,2
        goto BC@LL103
        bsf PORTA,1
BC@LL103
F1_000127 equ $ ; IN [TIME MANAGEMENT.BAS] IF SECOND = G_SEC_R4 THEN
        movf g_sec_r4H,F
        set@page BC@LL105
        btfss STATUS,2
        goto BC@LL105
        movf g_sec_r4,W
        subwf second,W
        set@page BC@LL105
        btfss STATUS,2
        goto BC@LL105
F1_000128 equ $ ; IN [TIME MANAGEMENT.BAS] RLY4 = 1
        bsf PORTA,0
F1_000129 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000130 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0 : SECOND = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
        clrf second
F1_000131 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL105
F1_000132 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL97
BC@LL76
F1_000133 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000134 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "A" THEN
        movlw 65
        subwf key_value,W
        set@page BC@LL107
        btfss STATUS,2
        goto BC@LL107
F1_000135 equ $ ; IN [TIME MANAGEMENT.BAS] MODE = 0
        clrf mode
F1_000136 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F1_000137 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL107
F1_000138 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "B" THEN
        movlw 66
        subwf key_value,W
        set@page BC@LL109
        btfss STATUS,2
        goto BC@LL109
F1_000139 equ $ ; IN [TIME MANAGEMENT.BAS] MODE = 1
        movlw 1
        movwf mode
F1_000140 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F1_000141 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB MANUAL_SET
        f@call manual_set
F1_000142 equ $ ; IN [TIME MANAGEMENT.BAS] ENDIF
BC@LL109
F1_000143 equ $ ; IN [TIME MANAGEMENT.BAS] IF T_STOP = 0 THEN INC SECOND
        set@page BC@LL111
        btfsc _B#VR1,0
        goto BC@LL111
        incf second,F
BC@LL111
F1_000144 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000145 equ $ ; IN [TIME MANAGEMENT.BAS] GOTO MAIN
        F@JUMP main
Receive_SMS
F1_000148 equ $ ; IN [TIME MANAGEMENT.BAS] CLEAR MSG
        movlw 20
        movwf PP0
        movlw 88
        movwf FSR
PB@LB113
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB113
        btfss STATUS,2
        goto PB@LB113
F1_000149 equ $ ; IN [TIME MANAGEMENT.BAS] HSERIN 1000, OVER,[WAIT("+CMT"), WAIT(13,10), STR MSG]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB114
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB114
        btfss STATUS,2
        goto PB@LB114
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 67
        set@page PB@LB114
        btfss STATUS,2
        goto PB@LB114
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 77
        set@page PB@LB114
        btfss STATUS,2
        goto PB@LB114
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 84
        set@page PB@LB114
        btfss STATUS,2
        goto PB@LB114
PB@LB115
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB115
        btfss STATUS,2
        goto PB@LB115
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB115
        btfss STATUS,2
        goto PB@LB115
        clrf PBP#VAR0
PB@LB118
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR0,W
        addlw msg
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 20
        set@page PB@LB118
        btfss STATUS,2
        goto PB@LB118
F1_000150 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R1 = (MSG[2] - 48) * 100 + (MSG[3] - 48) * 10 + (MSG[4] - 48)
        movf msg#2,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movlw 48
        subwf PP7,F
        btfss STATUS,0
        decf PP7H,F
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf msg#3,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf msg#4,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP7,W
        addwf PP8,W
        movwf g_sec_r1
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        addwf PP8H,W
        movwf g_sec_r1H
F1_000151 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R2 = (MSG[7] - 48) * 100 + (MSG[8] - 48) * 10 + (MSG[9] - 48)
        movf msg#7,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movlw 48
        subwf PP7,F
        btfss STATUS,0
        decf PP7H,F
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf msg#8,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf msg#9,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP7,W
        addwf PP8,W
        movwf g_sec_r2
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        addwf PP8H,W
        movwf g_sec_r2H
F1_000152 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R3 = (MSG[12] - 48) * 100 + (MSG[13] - 48) * 10 + (MSG[14] - 48)
        movf msg#12,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movlw 48
        subwf PP7,F
        btfss STATUS,0
        decf PP7H,F
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf msg#13,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf msg#14,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP7,W
        addwf PP8,W
        movwf g_sec_r3
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        addwf PP8H,W
        movwf g_sec_r3H
F1_000153 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R4 = (MSG[17] - 48) * 100 + (MSG[18] - 48) * 10 + (MSG[19] - 48)
        movf msg#17,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movlw 48
        subwf PP7,F
        btfss STATUS,0
        decf PP7H,F
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf msg#18,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf msg#19,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 48
        subwf PP8,F
        btfss STATUS,0
        decf PP8H,F
        movf PP7,W
        addwf PP8,W
        movwf g_sec_r4
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        addwf PP8H,W
        movwf g_sec_r4H
F1_000154 equ $ ; IN [TIME MANAGEMENT.BAS] PORTA = $FF
        movlw 255
        movwf PORTA
F1_000155 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000156 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"R1: ", DEC3 G_SEC_R1, "  R2: ", DEC3 G_SEC_R2
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 49
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf g_sec_r1H,W
        movwf PP2H
        movf g_sec_r1,W
        movwf PP2
        f@call OUT@DEC
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 82
        f@call PRINT
        movlw 50
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf g_sec_r2H,W
        movwf PP2H
        movf g_sec_r2,W
        movwf PP2
        f@call OUT@DEC
F1_000157 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"R3: ", DEC3 G_SEC_R3, "  R4: ", DEC3 G_SEC_R4
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 51
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf g_sec_r3H,W
        movwf PP2H
        movf g_sec_r3,W
        movwf PP2
        f@call OUT@DEC
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 82
        f@call PRINT
        movlw 52
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf g_sec_r4H,W
        movwf PP2H
        movf g_sec_r4,W
        movwf PP2
        f@call OUT@DEC
F1_000158 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000159 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000160 equ $ ; IN [TIME MANAGEMENT.BAS] SECOND = 0
        clrf second
F1_000161 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R2 = G_SEC_R2 + G_SEC_R1
        movf g_sec_r1,W
        addwf g_sec_r2,F
        movf g_sec_r1H,W
        btfsc STATUS,0
        addlw 1
        addwf g_sec_r2H,F
F1_000162 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R3 = G_SEC_R3 + G_SEC_R2
        movf g_sec_r2,W
        addwf g_sec_r3,F
        movf g_sec_r2H,W
        btfsc STATUS,0
        addlw 1
        addwf g_sec_r3H,F
F1_000163 equ $ ; IN [TIME MANAGEMENT.BAS] G_SEC_R4 = G_SEC_R4 + G_SEC_R3
        movf g_sec_r3,W
        addwf g_sec_r4,F
        movf g_sec_r3H,W
        btfsc STATUS,0
        addlw 1
        addwf g_sec_r4H,F
F1_000164 equ $ ; IN [TIME MANAGEMENT.BAS] MODE = 2
        movlw 2
        movwf mode
F1_000165 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
over
F1_000167 equ $ ; IN [TIME MANAGEMENT.BAS] RETURN
        return
manual_set
F1_000170 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000171 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"MANUAL SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000172 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000173 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"RELAY 1:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 49
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000174 equ $ ; IN [TIME MANAGEMENT.BAS] FOR X = 0 TO 2
        clrf _X
FR@LB119
        movlw 3
        subwf _X,W
        set@page NX@LB120
        btfsc STATUS,0
        goto NX@LB120
F1_000175 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB READ_KEY
        f@call read_key
F1_000176 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,X+10, KEY_VALUE
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        movlw 10
        addwf _X,W
        f@call CURSOR
        movf key_value,W
        f@call PRINT
F1_000177 equ $ ; IN [TIME MANAGEMENT.BAS] TEMP[X] = KEY_VALUE - 48
        movlw 48
        subwf key_value,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
CT@LB121
F1_000178 equ $ ; IN [TIME MANAGEMENT.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB119
        btfss STATUS,0
        goto FR@LB119
NX@LB120
F1_000179 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R1 = TEMP[0] * 100 + TEMP[1] * 10 + TEMP[2]
        movf temp#0,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf temp#1,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf temp#2,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        addwf PP7,W
        movwf m_sec_r1
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf m_sec_r1H
F1_000180 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000181 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"RELAY 1:", DEC3 M_SEC_R1, "SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 49
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf m_sec_r1H,W
        movwf PP2H
        movf m_sec_r1,W
        movwf PP2
        f@call OUT@DEC
        movlw 115
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
F1_000182 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"*:CONFIRM #:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 42
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 102
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 35
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 107
        f@call PRINT
F1_000183 equ $ ; IN [TIME MANAGEMENT.BAS] WHILE 1 = 1
BC@LL121
F1_000184 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000185 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "*" THEN GOSUB SETUP2
        movlw 42
        subwf key_value,W
        set@page BC@LL124
        btfss STATUS,2
        goto BC@LL124
        f@call setup2
BC@LL124
F1_000186 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "#" THEN GOSUB MANUAL_SET
        movlw 35
        subwf key_value,W
        set@page BC@LL126
        btfss STATUS,2
        goto BC@LL126
        f@call manual_set
BC@LL126
F1_000187 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "D" THEN CLS : GOSUB MAIN
        movlw 68
        subwf key_value,W
        set@page BC@LL128
        btfss STATUS,2
        goto BC@LL128
        f@call LCD@CLS
        f@call main
BC@LL128
F1_000188 equ $ ; IN [TIME MANAGEMENT.BAS] WEND
        F@JUMP BC@LL121
BC@LL122
setup2
F1_000190 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000191 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"MANUAL SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000192 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"RELAY 2:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 50
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000193 equ $ ; IN [TIME MANAGEMENT.BAS] FOR X = 0 TO 2
        clrf _X
FR@LB130
        movlw 3
        subwf _X,W
        set@page NX@LB131
        btfsc STATUS,0
        goto NX@LB131
F1_000194 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB READ_KEY
        f@call read_key
F1_000195 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,X+10, KEY_VALUE
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        movlw 10
        addwf _X,W
        f@call CURSOR
        movf key_value,W
        f@call PRINT
F1_000196 equ $ ; IN [TIME MANAGEMENT.BAS] TEMP[X] = KEY_VALUE - 48
        movlw 48
        subwf key_value,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
CT@LB132
F1_000197 equ $ ; IN [TIME MANAGEMENT.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB130
        btfss STATUS,0
        goto FR@LB130
NX@LB131
F1_000198 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R2 = TEMP[0] * 100 + TEMP[1] * 10 + TEMP[2]
        movf temp#0,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf temp#1,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf temp#2,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        addwf PP7,W
        movwf m_sec_r2
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf m_sec_r2H
F1_000199 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000200 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"RELAY 2:", DEC3 M_SEC_R2, "SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 50
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf m_sec_r2H,W
        movwf PP2H
        movf m_sec_r2,W
        movwf PP2
        f@call OUT@DEC
        movlw 115
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
F1_000201 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"*:CONFIRM #:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 42
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 102
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 35
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 107
        f@call PRINT
F1_000202 equ $ ; IN [TIME MANAGEMENT.BAS] WHILE 1 = 1
BC@LL132
F1_000203 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000204 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "*" THEN GOSUB SETUP3
        movlw 42
        subwf key_value,W
        set@page BC@LL135
        btfss STATUS,2
        goto BC@LL135
        f@call setup3
BC@LL135
F1_000205 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "#" THEN GOSUB SETUP2
        movlw 35
        subwf key_value,W
        set@page BC@LL137
        btfss STATUS,2
        goto BC@LL137
        f@call setup2
BC@LL137
F1_000206 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "D" THEN CLS : GOSUB MAIN
        movlw 68
        subwf key_value,W
        set@page BC@LL139
        btfss STATUS,2
        goto BC@LL139
        f@call LCD@CLS
        f@call main
BC@LL139
F1_000207 equ $ ; IN [TIME MANAGEMENT.BAS] WEND
        F@JUMP BC@LL132
BC@LL133
setup3
F1_000209 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000210 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"MANUAL SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000211 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"RELAY 3:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 51
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000212 equ $ ; IN [TIME MANAGEMENT.BAS] FOR X = 0 TO 2
        clrf _X
FR@LB141
        movlw 3
        subwf _X,W
        set@page NX@LB142
        btfsc STATUS,0
        goto NX@LB142
F1_000213 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB READ_KEY
        f@call read_key
F1_000214 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,X+10, KEY_VALUE
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        movlw 10
        addwf _X,W
        f@call CURSOR
        movf key_value,W
        f@call PRINT
F1_000215 equ $ ; IN [TIME MANAGEMENT.BAS] TEMP[X] = KEY_VALUE - 48
        movlw 48
        subwf key_value,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
CT@LB143
F1_000216 equ $ ; IN [TIME MANAGEMENT.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB141
        btfss STATUS,0
        goto FR@LB141
NX@LB142
F1_000217 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R3 = TEMP[0] * 100 + TEMP[1] * 10 + TEMP[2]
        movf temp#0,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf temp#1,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf temp#2,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        addwf PP7,W
        movwf m_sec_r3
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf m_sec_r3H
F1_000218 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000219 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"RELAY 3:", DEC3 M_SEC_R3, "SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 51
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf m_sec_r3H,W
        movwf PP2H
        movf m_sec_r3,W
        movwf PP2
        f@call OUT@DEC
        movlw 115
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
F1_000220 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"*:CONFIRM #:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 42
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 102
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 35
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 107
        f@call PRINT
F1_000221 equ $ ; IN [TIME MANAGEMENT.BAS] WHILE 1 = 1
BC@LL143
F1_000222 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000223 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "*" THEN GOSUB SETUP4
        movlw 42
        subwf key_value,W
        set@page BC@LL146
        btfss STATUS,2
        goto BC@LL146
        f@call setup4
BC@LL146
F1_000224 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "#" THEN GOSUB SETUP3
        movlw 35
        subwf key_value,W
        set@page BC@LL148
        btfss STATUS,2
        goto BC@LL148
        f@call setup3
BC@LL148
F1_000225 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "D" THEN CLS : GOSUB MAIN
        movlw 68
        subwf key_value,W
        set@page BC@LL150
        btfss STATUS,2
        goto BC@LL150
        f@call LCD@CLS
        f@call main
BC@LL150
F1_000226 equ $ ; IN [TIME MANAGEMENT.BAS] WEND
        F@JUMP BC@LL143
BC@LL144
setup4
F1_000228 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000229 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"MANUAL SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000230 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"RELAY 4:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 52
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000231 equ $ ; IN [TIME MANAGEMENT.BAS] FOR X = 0 TO 2
        clrf _X
FR@LB152
        movlw 3
        subwf _X,W
        set@page NX@LB153
        btfsc STATUS,0
        goto NX@LB153
F1_000232 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB READ_KEY
        f@call read_key
F1_000233 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,X+10, KEY_VALUE
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        movlw 10
        addwf _X,W
        f@call CURSOR
        movf key_value,W
        f@call PRINT
F1_000234 equ $ ; IN [TIME MANAGEMENT.BAS] TEMP[X] = KEY_VALUE - 48
        movlw 48
        subwf key_value,W
        movwf PBP#VAR0
        movf _X,W
        addlw temp
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
CT@LB154
F1_000235 equ $ ; IN [TIME MANAGEMENT.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB152
        btfss STATUS,0
        goto FR@LB152
NX@LB153
F1_000236 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R4 = TEMP[0] * 100 + TEMP[1] * 10 + TEMP[2]
        movf temp#0,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        movf PP7H,W
        movwf PP3H
        movf PP7,W
        movwf PP3
        clrf PP1H
        movlw 100
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf temp#1,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movf PP8H,W
        movwf PP3H
        movf PP8,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP8
        movf PP2H,W
        movwf PP8H
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf temp#2,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        addwf PP7,W
        movwf m_sec_r4
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        movwf m_sec_r4H
F1_000237 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000238 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 1,1,"RELAY 4:", DEC3 M_SEC_R4, "SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 82
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 52
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf m_sec_r4H,W
        movwf PP2H
        movf m_sec_r4,W
        movwf PP2
        f@call OUT@DEC
        movlw 115
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
F1_000239 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"*:CONFIRM #:BACK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 42
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 102
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 35
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 107
        f@call PRINT
F1_000240 equ $ ; IN [TIME MANAGEMENT.BAS] WHILE 1 = 1
BC@LL154
F1_000241 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000242 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "*" THEN GOSUB DONE
        movlw 42
        subwf key_value,W
        set@page BC@LL157
        btfss STATUS,2
        goto BC@LL157
        f@call done
BC@LL157
F1_000243 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "#" THEN GOSUB SETUP4
        movlw 35
        subwf key_value,W
        set@page BC@LL159
        btfss STATUS,2
        goto BC@LL159
        f@call setup4
BC@LL159
F1_000244 equ $ ; IN [TIME MANAGEMENT.BAS] IF KEY_VALUE = "D" THEN CLS : GOSUB MAIN
        movlw 68
        subwf key_value,W
        set@page BC@LL161
        btfss STATUS,2
        goto BC@LL161
        f@call LCD@CLS
        f@call main
BC@LL161
F1_000245 equ $ ; IN [TIME MANAGEMENT.BAS] WEND
        F@JUMP BC@LL154
BC@LL155
done
F1_000247 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000248 equ $ ; IN [TIME MANAGEMENT.BAS] RLY1 = 0 : RLY2 = 0 : RLY3 = 0 : RLY4 = 0 : SECOND = 0
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
        clrf second
F1_000249 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R2 = M_SEC_R2 + M_SEC_R1
        movf m_sec_r1,W
        addwf m_sec_r2,F
        movf m_sec_r1H,W
        btfsc STATUS,0
        addlw 1
        addwf m_sec_r2H,F
F1_000250 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R3 = M_SEC_R3 + M_SEC_R2
        movf m_sec_r2,W
        addwf m_sec_r3,F
        movf m_sec_r2H,W
        btfsc STATUS,0
        addlw 1
        addwf m_sec_r3H,F
F1_000251 equ $ ; IN [TIME MANAGEMENT.BAS] M_SEC_R4 = M_SEC_R4 + M_SEC_R3
        movf m_sec_r3,W
        addwf m_sec_r4,F
        movf m_sec_r3H,W
        btfsc STATUS,0
        addlw 1
        addwf m_sec_r4H,F
F1_000252 equ $ ; IN [TIME MANAGEMENT.BAS] PRINT AT 2,1,"DONE.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 68
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
F1_000253 equ $ ; IN [TIME MANAGEMENT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000254 equ $ ; IN [TIME MANAGEMENT.BAS] CLS
        f@call LCD@CLS
F1_000255 equ $ ; IN [TIME MANAGEMENT.BAS] GOSUB MAIN
        f@call main
F1_EOF equ $ ; TIME MANAGEMENT.BAS
PB@LB163
        F@JUMP PB@LB163
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
