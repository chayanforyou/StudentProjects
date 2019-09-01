;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F73, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
EEDATL equ 0X010C
PMDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
PMDATA equ 0X010C
EEADR equ 0X010D
PMADR equ 0X010D
EEDATLH equ 0X010E
PMDATLH equ 0X010E
EEDATH equ 0X010E
PMDATH equ 0X010E
EEADRH equ 0X010F
PMADRH equ 0X010F
EECON1 equ 0X018C
PMCON1 equ 0X018C
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
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
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
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F73 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 3
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define BANK2_START 0X0110
#define BANK2_END 0X0120
#define BANK3_START 0X0190
#define BANK3_END 0X01A0
#define _SYSTEM_VARIABLE_COUNT 24
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
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
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
CSTR#CT = 34
GEN = 35
GEN3H = 36
GEN4 = 37
GEN4H = 38
PBP#VAR0 = 39
PBP#VAR1 = 40
PBP#VAR2 = 41
PBP#VAR3 = 42
PP0 = 43
PP0H = 44
PP1 = 45
PP1H = 46
PP2 = 47
PP2H = 48
PP3 = 49
PP3H = 50
PP4 = 51
PP5 = 52
PP6 = 53
PP6H = 54
SP#P9 = 55
vote_A = 56
vote_B = 57
vote_C = 58
pass = 59
variable pass#0=59,pass#1=60,pass#2=61,pass#3=62
temp = 63
variable temp#0=63,temp#1=64,temp#2=65,temp#3=66
cnt = 67
voted = 68
variable voted#0=68,voted#1=69,voted#2=70,voted#3=71
variable voted#4=72,voted#5=73,voted#6=74,voted#7=75
variable voted#8=76,voted#9=77,voted#10=78,voted#11=79
variable voted#12=80,voted#13=81,voted#14=82,voted#15=83
variable voted#16=84,voted#17=85,voted#18=86,voted#19=87
variable voted#20=88,voted#21=89,voted#22=90,voted#23=91
variable voted#24=92,voted#25=93,voted#26=94,voted#27=95
variable voted#28=96,voted#29=97,voted#30=98,voted#31=99
variable voted#32=100,voted#33=101,voted#34=102,voted#35=103
variable voted#36=104,voted#37=105,voted#38=106,voted#39=107
variable voted#40=108,voted#41=109,voted#42=110,voted#43=111
variable voted#44=112,voted#45=113,voted#46=114,voted#47=115
variable voted#48=116,voted#49=117,voted#50=118,voted#51=119
variable voted#52=120,voted#53=121,voted#54=122,voted#55=123
variable voted#56=124,voted#57=125,voted#58=126,voted#59=127
variable voted#60=160,voted#61=161,voted#62=162,voted#63=163
variable voted#64=164,voted#65=165,voted#66=166,voted#67=167
variable voted#68=168,voted#69=169,voted#70=170,voted#71=171
variable voted#72=172,voted#73=173,voted#74=174,voted#75=175
variable voted#76=176,voted#77=177,voted#78=178,voted#79=179
variable voted#80=180,voted#81=181,voted#82=182,voted#83=183
variable voted#84=184,voted#85=185,voted#86=186,voted#87=187
variable voted#88=188,voted#89=189,voted#90=190,voted#91=191
variable voted#92=192,voted#93=193,voted#94=194,voted#95=195
variable voted#96=196,voted#97=197,voted#98=198,voted#99=199
RXD = 200
variable RXD#0=200,RXD#1=201,RXD#2=202,RXD#3=203
variable RXD#4=204,RXD#5=205,RXD#6=206,RXD#7=207
variable RXD#8=208,RXD#9=209,RXD#10=210,RXD#11=211
variable RXD#12=212,RXD#13=213,RXD#14=214,RXD#15=215
variable RXD#16=216,RXD#17=217,RXD#18=218,RXD#19=219
get_ID = 220
ID_no = 221
checksum = 222
_B#VR1 = 223
IDs = 224
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define _A PORTC,0
#define _B PORTC,1
#define _C PORTC,2
#define buzzer PORTC,4
#define FP_error _B#VR1,0
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 56700
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 21
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 56700
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 53
        clrf 54
        rlf 54,F
        movlw 0
        subwf 54,W
        movlw 128
        skpnz
        subwf 53,W
        skpc
        goto FA@EXT
        btfsc 50,7
        goto FA@EXT
        movlw 32
        addwf 53,F
FA@EXT
        movf 53,W
        movwf 4
        return
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 44
        movlw 48
        goto DLUS@W
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 52
        tstf 52
        skpz
        goto $ + 3
        clrw
        goto $ + 2
        movlw 1
        subwf 52,F
        bcf 3,0
        rrf 35,F
        rrf 35,F
        rrf 35,F
        movlw 192
        andwf 35,W
        addlw 64
        addwf 52,F
        movlw 254
        call CH@SND
        movf 52,W
        goto CH@SND
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 52
        movlw 254
        call CH@SND
        movf 52,W
        goto CH@SND
OUT@DECB
        clrf 38
OUT@DECC
        movwf 47
        clrf 48
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 46
        movlw 16
        call D@DIG
        movlw 3
        movwf 46
        movlw 232
        call D@DIG
        clrf 46
        movlw 100
        call D@DIG
        clrf 46
        movlw 10
        call D@DIG
        movf 47,W
        goto SEND@IT
D@DIG
        movwf 45
        movf 48,W
        movwf 44
        movf 47,W
        movwf 43
        call D@VD
        movf 43,W
SEND@IT
        movwf 43
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 43,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 50
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 50,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 44
        movlw 128
        call DLUS@W
        movlw 51
        movwf 49
        call PR@LP
        movlw 19
        movwf 44
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 49
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 50,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 49
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 44
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
        movf 49,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 49,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 50,W
        goto I@NT
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
C@STROUT
        movwf 37
C@STROUTW
        clrf 34
C@STROUTLP
        movf 37,W
        bsf 3,6
        movwf 269
        bcf 3,6
        movf 38,W
        bsf 3,6
        movwf 271
        call C@READ
        skpnz
        goto I@NT
        call CH@SND
        incf 37,F
        skpnz
        incf 38,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
C@READ
        bsf 3,5
        bsf 3,6
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
DL@MS
        clrf 46
DLY@W
        movwf 45
DLY@P
        movlw 255
        addwf 45,F
        skpc
        addwf 46,F
        skpc
        goto I@NT
        movlw 3
        movwf 44
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 44
DLUS@W
        addlw 252
        movwf 43
        comf 44,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 43,F
        skpnc
        goto $ - 3
        addwf 43,F
        nop
        incfsz 44,F
        goto $ - 8
        return
D@VD
        clrf 48
        clrf 47
D@VD2
        movlw 16
        movwf 49
        rlf 44,W
        rlf 47,F
        rlf 48,F
        movf 45,W
        subwf 47,F
        movf 46,W
        skpc
        incfsz 46,W
        subwf 48,F
        skpnc
        goto $ + 8
        movf 45,W
        addwf 47,F
        movf 46,W
        skpnc
        incfsz 46,W
        addwf 48,F
        bcf 3,0
        rlf 43,F
        rlf 44,F
        decfsz 49,F
        goto $ - 21
        movf 43,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
PUT@ARRAY
        movwf 49
PUT@ARRAYW
        movf 37,W
        movwf 50
        addwf 38,W
        call FIND@ADDRESS
        movf 49,W
        movwf 0
        goto I@NT
GET@ARRAY
        movwf 49
GET@ARRAYW
        movf 36,W
        movwf 50
        movf 49,W
        addwf 36,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 21
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; FINGERP.PRP
F2_EOF equ $ ; FINGERP.PRP
F1_SOF equ $ ; FINGERP.BAS
F1_000025 equ $ ; IN [FINGERP.BAS] INPUT A : INPUT B
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,0
        bsf TRISC,1
F1_000026 equ $ ; IN [FINGERP.BAS] INPUT C : OUTPUT BUZZER
        bsf TRISC,2
        bcf TRISC,4
F1_000027 equ $ ; IN [FINGERP.BAS] CLEAR PORTC
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F3_SOF equ $ ; FP_R305.INC
F3_000002 equ $ ; IN [FP_R305.INC] GOTO MAIN
        F@JUMP main
FP_init
F3_000012 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Enroll
F3_000015 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bsf STATUS,5
ram_bank = 1
        bcf _B#VR1,0
F3_000016 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 5
        f@call HRSOUT
F3_000017 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000018 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ENROLL
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL2
        btfsc STATUS,2
        goto BC@LL2
        F@JUMP FP_Enroll
BC@LL2
F3_000019 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 4
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 8
        f@call HRSOUT
F3_000020 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000021 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL4
        btfsc STATUS,2
        goto BC@LL4
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL4
Recheck
F3_000023 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 5
        f@call HRSOUT
F3_000024 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000025 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN RECHECK
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL6
        btfsc STATUS,2
        goto BC@LL6
        F@JUMP Recheck
BC@LL6
F3_000026 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $02 , $00 , $09]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 4
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 9
        f@call HRSOUT
F3_000027 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000028 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL8
        btfsc STATUS,2
        goto BC@LL8
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL8
F3_000029 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $05 , $00 , $09]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 5
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 9
        f@call HRSOUT
F3_000030 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000031 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL10
        btfsc STATUS,2
        goto BC@LL10
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL10
F3_000032 equ $ ; IN [FP_R305.INC] CHECKSUM = 15 + ID_NO
        movlw 15
        bsf STATUS,5
ram_bank = 1
        addwf ID_no,W
        movwf checksum
F3_000033 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $06 , $06 , $02 , $00, ID_NO, $00, CHECKSUM]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 6
        f@call HRSOUT
        movlw 6
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        bsf STATUS,5
ram_bank = 1
        movf ID_no,W
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        bsf STATUS,5
ram_bank = 1
        movf checksum,W
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
F3_000034 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000035 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL12
        btfsc STATUS,2
        goto BC@LL12
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL12
F3_000036 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Search
F3_000039 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bsf STATUS,5
ram_bank = 1
        bcf _B#VR1,0
F3_000040 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 5
        f@call HRSOUT
F3_000041 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000042 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_SEARCH
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL14
        btfsc STATUS,2
        goto BC@LL14
        F@JUMP FP_Search
BC@LL14
F3_000043 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 4
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 8
        f@call HRSOUT
F3_000044 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000045 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL16
        btfsc STATUS,2
        goto BC@LL16
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL16
F3_000046 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $08, $1B, $01, $00, $00, $03, $E9, $01, $11]
        movlw 239
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 8
        f@call HRSOUT
        movlw 27
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 233
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 17
        f@call HRSOUT
F3_000047 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13],RXD[14],RXD[15]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#12
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#13
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#14
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#15
F3_000048 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL18
        btfsc STATUS,2
        goto BC@LL18
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL18
F3_000049 equ $ ; IN [FP_R305.INC] GET_ID = RXD[11]
        bsf STATUS,5
ram_bank = 1
        movf RXD#11,W
        movwf get_ID
F3_000050 equ $ ; IN [FP_R305.INC] RETURN
        bcf STATUS,5
ram_bank = 0
        return
FP_Delete_ID
F3_000053 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bsf STATUS,5
ram_bank = 1
        bcf _B#VR1,0
F3_000054 equ $ ; IN [FP_R305.INC] CHECKSUM = 21 + ID_NO
        movlw 21
        addwf ID_no,W
        movwf checksum
F3_000055 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $07, $0C, $00, ID_NO, $00, $01, $00, CHECKSUM]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 7
        f@call HRSOUT
        movlw 12
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        bsf STATUS,5
ram_bank = 1
        movf ID_no,W
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        bsf STATUS,5
ram_bank = 1
        movf checksum,W
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
F3_000056 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000057 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL20
        btfsc STATUS,2
        goto BC@LL20
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL20
F3_000058 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Delete_ALL
F3_000061 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bsf STATUS,5
ram_bank = 1
        bcf _B#VR1,0
F3_000062 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $0D, $00, $11]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 17
        f@call HRSOUT
F3_000063 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
F3_000064 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL22
F3_000065 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_total_ID
F3_000068 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bsf STATUS,5
ram_bank = 1
        bcf _B#VR1,0
F3_000069 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $1D, $00, $21]
        movlw 239
        bcf STATUS,5
ram_bank = 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 255
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 3
        f@call HRSOUT
        movlw 29
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 33
        f@call HRSOUT
F3_000070 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13]]
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#0
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#1
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#2
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#3
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#4
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#5
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#6
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#7
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#8
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#9
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#10
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#11
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#12
        bcf STATUS,5
ram_bank = 0
        f@call HRSIN
        movf RCREG,W
        bsf STATUS,5
ram_bank = 1
        movwf RXD#13
F3_000071 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
        bsf STATUS,5
ram_bank = 1
        bsf _B#VR1,0
        bcf STATUS,5
ram_bank = 0
        return
BC@LL24
F3_000072 equ $ ; IN [FP_R305.INC] IDS = RXD[11]
        bsf STATUS,5
ram_bank = 1
        movf RXD#11,W
        movwf IDs
F3_000073 equ $ ; IN [FP_R305.INC] RETURN
        bcf STATUS,5
ram_bank = 0
        return
F3_EOF equ $ ; FP_R305.INC
main
F1_000040 equ $ ; IN [FINGERP.BAS] GOSUB FP_INIT : CLS
        f@call FP_init
        f@call LCD@CLS
F1_000041 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "PLEASE WAIT..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000042 equ $ ; IN [FINGERP.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000043 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000045 equ $ ; IN [FINGERP.BAS] PASS[0] = 1 : PASS[1] = 1 : PASS[2] = 1 : PASS[3] = 1
        movlw 1
        movwf pass#0
        movwf pass#1
        movwf pass#2
        movwf pass#3
F1_000047 equ $ ; IN [FINGERP.BAS] VOTE_A = 0 : VOTE_B = 0 : VOTE_C = 0 : CLEAR VOTED
        clrf vote_A
        clrf vote_B
        clrf vote_C
        movlw 100
        movwf PP0
        clrf PP0H
PB@LB26
        movf PP0H,W
        movwf GEN4H
        movlw 68
        movwf GEN4
        movlw 0
        f@call PUT@ARRAY
        incf PP0H,F
        decf PP0,F
        set@page PB@LB26
        btfss STATUS,2
        goto PB@LB26
F1_000048 equ $ ; IN [FINGERP.BAS] ID_NO = 0
        bsf STATUS,5
ram_bank = 1
        clrf ID_no
F1_000049 equ $ ; IN [FINGERP.BAS] GOSUB HOME
        bcf STATUS,5
ram_bank = 0
        f@call home
standby
F1_000053 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : GOSUB ADD_PEOPLE
        set@page BC@LL27
        btfss PORTC,0
        goto BC@LL27
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        f@call add_people
BC@LL27
F1_000054 equ $ ; IN [FINGERP.BAS] IF B = 1 THEN GOSUB SHOW_IDS
        set@page BC@LL29
        btfss PORTC,1
        goto BC@LL29
        f@call show_IDs
BC@LL29
F1_000055 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN DELAYMS 300 : GOSUB VOTE_MODE
        set@page BC@LL31
        btfss PORTC,2
        goto BC@LL31
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        f@call vote_mode
BC@LL31
F1_000056 equ $ ; IN [FINGERP.BAS] GOTO STANDBY
        F@JUMP standby
add_people
F1_000059 equ $ ; IN [FINGERP.BAS] GOSUB CHECK_PASS
        f@call check_pass
F1_000060 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000061 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "ADD VOTER ID"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000062 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "ID NO: "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000063 equ $ ; IN [FINGERP.BAS] WHILE 1 = 1
BC@LL32
F1_000064 equ $ ; IN [FINGERP.BAS] PRINT AT 2,8, DEC2 ID_NO
        movlw 128
        movwf BPFH
        movlw 199
        f@call LCD@CRS
        movlw 2
        movwf GEN4H
        bsf STATUS,5
ram_bank = 1
        movf ID_no,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECC
F1_000065 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : INC ID_NO
        set@page BC@LL35
        btfss PORTC,0
        goto BC@LL35
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        bsf STATUS,5
ram_bank = 1
        incf ID_no,F
BC@LL35
        bcf STATUS,5
ram_bank = 0
F1_000066 equ $ ; IN [FINGERP.BAS] IF ID_NO = 100 THEN ID_NO = 0
        movlw 100
        bsf STATUS,5
ram_bank = 1
        subwf ID_no,W
        set@page BC@LL37
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL37
        bsf STATUS,5
ram_bank = 1
        clrf ID_no
BC@LL37
        bcf STATUS,5
ram_bank = 0
F1_000067 equ $ ; IN [FINGERP.BAS] IF ID_NO = 0 AND B = 1 THEN DELAYMS 300 : ID_NO = 99
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movf ID_no,F
        btfss STATUS,2
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 0
        btfsc PORTC,1
        movlw 1
        andwf SP#P9,F
        set@page BC@LL39
        btfsc STATUS,2
        goto BC@LL39
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 99
        bsf STATUS,5
ram_bank = 1
        movwf ID_no
BC@LL39
        bcf STATUS,5
ram_bank = 0
F1_000068 equ $ ; IN [FINGERP.BAS] IF B = 1 THEN DELAYMS 300 : DEC ID_NO
        set@page BC@LL41
        btfss PORTC,1
        goto BC@LL41
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        bsf STATUS,5
ram_bank = 1
        decf ID_no,F
BC@LL41
        bcf STATUS,5
ram_bank = 0
F1_000069 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN GOSUB ADDING
        set@page BC@LL43
        btfss PORTC,2
        goto BC@LL43
        f@call adding
BC@LL43
F1_000070 equ $ ; IN [FINGERP.BAS] WEND
        F@JUMP BC@LL32
BC@LL33
adding
F1_000072 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000073 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "PUT UR FINGER"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000074 equ $ ; IN [FINGERP.BAS] GOSUB FP_ENROLL
        f@call FP_Enroll
F1_000075 equ $ ; IN [FINGERP.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL45
        bsf STATUS,5
ram_bank = 1
        rrf _B#VR1,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto BC@LL45
F1_000076 equ $ ; IN [FINGERP.BAS] GOSUB GOT_ERROR
        f@call got_error
        F@JUMP BC@LL46
BC@LL45
F1_000077 equ $ ; IN [FINGERP.BAS] ELSE
F1_000078 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000079 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1,"ID NO: ", DEC2 ID_NO, " ADDED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
        movlw 2
        movwf GEN4H
        bsf STATUS,5
ram_bank = 1
        movf ID_no,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECC
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000080 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000081 equ $ ; IN [FINGERP.BAS] GOSUB HOME
        f@call home
F1_000082 equ $ ; IN [FINGERP.BAS] ENDIF
BC@LL46
F1_000083 equ $ ; IN [FINGERP.BAS] GOSUB HOME
        f@call home
show_IDs
F1_000086 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000087 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "TOTAL VOTER:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
F1_000088 equ $ ; IN [FINGERP.BAS] GOSUB FP_TOTAL_ID
        f@call FP_total_ID
F1_000089 equ $ ; IN [FINGERP.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL48
        bsf STATUS,5
ram_bank = 1
        rrf _B#VR1,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto BC@LL48
F1_000090 equ $ ; IN [FINGERP.BAS] GOSUB GOT_ERROR
        f@call got_error
        F@JUMP BC@LL49
BC@LL48
F1_000091 equ $ ; IN [FINGERP.BAS] ELSE
F1_000092 equ $ ; IN [FINGERP.BAS] WHILE 1 = 1
BC@LL50
F1_000093 equ $ ; IN [FINGERP.BAS] PRINT AT 1,14, DEC2 IDS
        movlw 128
        movwf BPFH
        movlw 141
        f@call LCD@CRS
        movlw 2
        movwf GEN4H
        bsf STATUS,5
ram_bank = 1
        movf IDs,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECC
F1_000094 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "C: DELETE ALL ID"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
F1_000095 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN GOSUB DELETING
        set@page BC@LL53
        btfss PORTC,2
        goto BC@LL53
        f@call deleting
BC@LL53
F1_000096 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : GOSUB HOME
        set@page BC@LL55
        btfss PORTC,0
        goto BC@LL55
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        f@call home
BC@LL55
F1_000097 equ $ ; IN [FINGERP.BAS] WEND
        F@JUMP BC@LL50
BC@LL51
F1_000098 equ $ ; IN [FINGERP.BAS] ENDIF
BC@LL49
F1_000099 equ $ ; IN [FINGERP.BAS] RETURN
        return
deleting
F1_000102 equ $ ; IN [FINGERP.BAS] GOSUB CHECK_PASS
        f@call check_pass
F1_000103 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000104 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "DELETING IDS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
F1_000105 equ $ ; IN [FINGERP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000106 equ $ ; IN [FINGERP.BAS] GOSUB FP_DELETE_ALL
        f@call FP_Delete_ALL
F1_000107 equ $ ; IN [FINGERP.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL57
        bsf STATUS,5
ram_bank = 1
        rrf _B#VR1,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto BC@LL57
F1_000108 equ $ ; IN [FINGERP.BAS] GOSUB GOT_ERROR
        f@call got_error
        F@JUMP BC@LL58
BC@LL57
F1_000109 equ $ ; IN [FINGERP.BAS] ELSE
F1_000110 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000111 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "ALL DELETED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
F1_000112 equ $ ; IN [FINGERP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000113 equ $ ; IN [FINGERP.BAS] GOSUB HOME
        f@call home
F1_000114 equ $ ; IN [FINGERP.BAS] ENDIF
BC@LL58
F1_000115 equ $ ; IN [FINGERP.BAS] RETURN
        return
vote_mode
F1_000118 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000119 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "VOTE TAKING ON"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
F1_000120 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "A:VOTE  B:RESULT"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
F1_000121 equ $ ; IN [FINGERP.BAS] WHILE 1 = 1
BC@LL59
F1_000122 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN GOSUB VOTING
        set@page BC@LL62
        btfss PORTC,0
        goto BC@LL62
        f@call voting
BC@LL62
F1_000123 equ $ ; IN [FINGERP.BAS] IF B = 1 THEN GOSUB SHOW_RESULT
        set@page BC@LL64
        btfss PORTC,1
        goto BC@LL64
        f@call show_result
BC@LL64
F1_000124 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN DELAYMS 300 : GOSUB HOME
        set@page BC@LL66
        btfss PORTC,2
        goto BC@LL66
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        f@call home
BC@LL66
F1_000125 equ $ ; IN [FINGERP.BAS] WEND
        F@JUMP BC@LL59
BC@LL60
voting
F1_000128 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000129 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "PUT UR FINGER"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000130 equ $ ; IN [FINGERP.BAS] GOSUB FP_SEARCH
        f@call FP_Search
F1_000131 equ $ ; IN [FINGERP.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL68
        bsf STATUS,5
ram_bank = 1
        rrf _B#VR1,W
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto BC@LL68
F1_000132 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "ID NOT FOUND."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000133 equ $ ; IN [FINGERP.BAS] BUZZER = 1
        bsf PORTC,4
F1_000134 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000135 equ $ ; IN [FINGERP.BAS] BUZZER = 0
        bcf PORTC,4
F1_000136 equ $ ; IN [FINGERP.BAS] GOTO VOTE_MODE
        F@JUMP vote_mode
        F@JUMP BC@LL67
F1_000137 equ $ ; IN [FINGERP.BAS] ELSEIF FP_ERROR = 0 AND VOTED[GET_ID] = 0 THEN
BC@LL68
        movlw 1
        bsf STATUS,5
ram_bank = 1
        btfsc _B#VR1,0
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 68
        movwf GEN3H
        bsf STATUS,5
ram_bank = 1
        movf get_ID,W
        bcf STATUS,5
ram_bank = 0
        f@call GET@ARRAY
        movwf PBP#VAR0
        movlw 1
        movf PBP#VAR0,F
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL69
        btfsc STATUS,2
        goto BC@LL69
F1_000138 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000139 equ $ ; IN [FINGERP.BAS] VOTED[GET_ID] = 1
        bsf STATUS,5
ram_bank = 1
        movf get_ID,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 68
        movwf GEN4
        movlw 1
        f@call PUT@ARRAY
F1_000140 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "VOTER VERIFIED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000141 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000142 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000143 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "A: WATER LILY"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB16)
        movwf GEN4H
        movlw low (STR@LB16)
        f@call C@STROUT
F1_000144 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "B: LOTUS C: ROSE"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB17)
        movwf GEN4H
        movlw low (STR@LB17)
        f@call C@STROUT
F1_000145 equ $ ; IN [FINGERP.BAS] WHILE 1 = 1
BC@LL70
F1_000146 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : INC VOTE_A : BREAK
        set@page BC@LL73
        btfss PORTC,0
        goto BC@LL73
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        incf vote_A,F
        F@JUMP BC@LL71
BC@LL73
F1_000147 equ $ ; IN [FINGERP.BAS] IF B = 1 THEN DELAYMS 300 : INC VOTE_B : BREAK
        set@page BC@LL75
        btfss PORTC,1
        goto BC@LL75
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        incf vote_B,F
        F@JUMP BC@LL71
BC@LL75
F1_000148 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN DELAYMS 300 : INC VOTE_C : BREAK
        set@page BC@LL77
        btfss PORTC,2
        goto BC@LL77
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        incf vote_C,F
        F@JUMP BC@LL71
BC@LL77
F1_000149 equ $ ; IN [FINGERP.BAS] WEND
        F@JUMP BC@LL70
BC@LL71
F1_000150 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000151 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "VOTE SUCCESSFUL."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB18)
        movwf GEN4H
        movlw low (STR@LB18)
        f@call C@STROUT
F1_000152 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "THANKS.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB19)
        movwf GEN4H
        movlw low (STR@LB19)
        f@call C@STROUT
F1_000153 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000154 equ $ ; IN [FINGERP.BAS] GOTO VOTE_MODE
        F@JUMP vote_mode
        F@JUMP BC@LL67
F1_000155 equ $ ; IN [FINGERP.BAS] ELSEIF FP_ERROR = 0 AND VOTED[GET_ID] = 1 THEN
BC@LL69
        movlw 1
        bsf STATUS,5
ram_bank = 1
        btfsc _B#VR1,0
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 68
        movwf GEN3H
        bsf STATUS,5
ram_bank = 1
        movf get_ID,W
        bcf STATUS,5
ram_bank = 0
        f@call GET@ARRAY
        movwf PBP#VAR1
        movlw 1
        subwf PBP#VAR1,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL78
        btfsc STATUS,2
        goto BC@LL78
F1_000156 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000157 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "ALREADY VOTED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB20)
        movwf GEN4H
        movlw low (STR@LB20)
        f@call C@STROUT
F1_000158 equ $ ; IN [FINGERP.BAS] BUZZER = 1
        bsf PORTC,4
F1_000159 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000160 equ $ ; IN [FINGERP.BAS] BUZZER = 0
        bcf PORTC,4
F1_000161 equ $ ; IN [FINGERP.BAS] GOTO VOTE_MODE
        F@JUMP vote_mode
F1_000162 equ $ ; IN [FINGERP.BAS] ENDIF
BC@LL78
BC@LL67
show_result
F1_000165 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000166 equ $ ; IN [FINGERP.BAS] WHILE 1 = 1
BC@LL79
F1_000167 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "A: ", DEC VOTE_A, "   "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 65
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movf vote_A,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000168 equ $ ; IN [FINGERP.BAS] PRINT AT 1,10, "B: ", DEC VOTE_B
        movlw 128
        movwf BPFH
        movlw 137
        f@call LCD@CRS
        movlw 66
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movf vote_B,W
        f@call OUT@DECB
F1_000169 equ $ ; IN [FINGERP.BAS] PRINT AT 2,6, "C: ", DEC VOTE_C
        movlw 128
        movwf BPFH
        movlw 197
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movf vote_C,W
        f@call OUT@DECB
F1_000170 equ $ ; IN [FINGERP.BAS] IF C = 1 THEN VOTE_A = 0 : VOTE_B = 0 : VOTE_C = 0 : CLEAR VOTED
        set@page BC@LL82
        btfss PORTC,2
        goto BC@LL82
        clrf vote_A
        clrf vote_B
        clrf vote_C
        movlw 100
        movwf PP0
        clrf PP0H
PB@LB84
        movf PP0H,W
        movwf GEN4H
        movlw 68
        movwf GEN4
        movlw 0
        f@call PUT@ARRAY
        incf PP0H,F
        decf PP0,F
        set@page PB@LB84
        btfss STATUS,2
        goto PB@LB84
BC@LL82
F1_000171 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : GOTO VOTE_MODE
        set@page BC@LL85
        btfss PORTC,0
        goto BC@LL85
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        F@JUMP vote_mode
BC@LL85
F1_000172 equ $ ; IN [FINGERP.BAS] WEND
        F@JUMP BC@LL79
BC@LL80
F1_000173 equ $ ; IN [FINGERP.BAS] RETURN
        return
check_pass
F1_000176 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000177 equ $ ; IN [FINGERP.BAS] CLEAR TEMP
        movlw 4
        movwf PP0
        movlw 63
        movwf FSR
PB@LB87
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB87
        btfss STATUS,2
        goto PB@LB87
F1_000178 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "ENTER PASSWORD:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB21)
        movwf GEN4H
        movlw low (STR@LB21)
        f@call C@STROUT
F1_000179 equ $ ; IN [FINGERP.BAS] FOR CNT = 0 TO 3
        clrf cnt
FR@LB88
        movlw 4
        subwf cnt,W
        set@page NX@LB89
        btfsc STATUS,0
        goto NX@LB89
F1_000180 equ $ ; IN [FINGERP.BAS] REPEAT
BC@LL90
F1_000181 equ $ ; IN [FINGERP.BAS] PRINT AT 2,CNT+1, DEC TEMP[CNT]
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf cnt,W
        f@call CURSOR
        movf cnt,W
        addlw temp
        movwf FSR
        movf INDF,W
        f@call OUT@DECB
F1_000182 equ $ ; IN [FINGERP.BAS] IF A = 1 THEN DELAYMS 300 : INC TEMP[CNT]
        set@page BC@LL94
        btfss PORTC,0
        goto BC@LL94
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movf cnt,W
        addlw temp
        movwf FSR
        movf INDF,W
        movwf PBP#VAR2
        incf PBP#VAR2,F
        movf cnt,W
        addlw temp
        movwf FSR
        movf PBP#VAR2,W
        movwf INDF
BC@LL94
F1_000183 equ $ ; IN [FINGERP.BAS] IF TEMP[CNT] > 9 THEN TEMP[CNT] = 0
        movf cnt,W
        addlw temp
        movwf FSR
        movf INDF,W
        movwf PBP#VAR2
        movlw 10
        subwf PBP#VAR2,W
        set@page BC@LL96
        btfss STATUS,0
        goto BC@LL96
        movf cnt,W
        addlw temp
        movwf FSR
        movlw 0
        movwf INDF
BC@LL96
BC@LL92
F1_000184 equ $ ; IN [FINGERP.BAS] UNTIL B = 1
        set@page BC@LL90
        btfss PORTC,1
        goto BC@LL90
BC@LL91
F1_000185 equ $ ; IN [FINGERP.BAS] IF TEMP[CNT] != PASS[CNT] THEN CLS : GOSUB GOT_ERROR
        movf cnt,W
        addlw temp
        movwf FSR
        movf INDF,W
        movwf PBP#VAR2
        movf cnt,W
        addlw pass
        movwf FSR
        movf INDF,W
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL98
        btfsc STATUS,2
        goto BC@LL98
        f@call LCD@CLS
        f@call got_error
BC@LL98
F1_000186 equ $ ; IN [FINGERP.BAS] DELAYMS 300
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
CT@LB90
F1_000187 equ $ ; IN [FINGERP.BAS] NEXT
        movlw 1
        addwf cnt,F
        set@page FR@LB88
        btfss STATUS,0
        goto FR@LB88
NX@LB89
F1_000188 equ $ ; IN [FINGERP.BAS] RETURN
        return
got_error
F1_000191 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "ERROR."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB22)
        movwf GEN4H
        movlw low (STR@LB22)
        f@call C@STROUT
F1_000192 equ $ ; IN [FINGERP.BAS] BUZZER = 1
        bsf PORTC,4
F1_000193 equ $ ; IN [FINGERP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000194 equ $ ; IN [FINGERP.BAS] BUZZER = 0
        bcf PORTC,4
F1_000195 equ $ ; IN [FINGERP.BAS] GOSUB HOME
        f@call home
F1_000196 equ $ ; IN [FINGERP.BAS] RETURN
        return
home
F1_000199 equ $ ; IN [FINGERP.BAS] CLS
        f@call LCD@CLS
F1_000200 equ $ ; IN [FINGERP.BAS] PRINT AT 1,1, "FP VOTING SYSTEM"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB23)
        movwf GEN4H
        movlw low (STR@LB23)
        f@call C@STROUT
F1_000201 equ $ ; IN [FINGERP.BAS] PRINT AT 2,1, "A:ADD      B:IDS"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB24)
        movwf GEN4H
        movlw low (STR@LB24)
        f@call C@STROUT
F1_000202 equ $ ; IN [FINGERP.BAS] GOTO STANDBY
        F@JUMP standby
F1_EOF equ $ ; FINGERP.BAS
PB@LB100
        F@JUMP PB@LB100
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,46,0
STR@LB2
        de 65,68,68,32,118,111,116,101,114,32,73,68,0
STR@LB3
STR@LB5
        de 73,68,32,110,111,58,32,0
STR@LB4
STR@LB13
        de 80,117,116,32,117,114,32,102,105,110,103,101,114,0
STR@LB6
        de 32,65,68,68,69,68,46,0
STR@LB7
        de 84,111,116,97,108,32,118,111,116,101,114,58,0
STR@LB8
        de 67,58,32,68,101,108,101,116,101,32,65,76,76,32,73,68,0
STR@LB9
        de 68,101,108,101,116,105,110,103,32,73,68,115,46,46,0
STR@LB10
        de 65,108,108,32,100,101,108,101,116,101,100,46,0
STR@LB11
        de 86,111,116,101,32,116,97,107,105,110,103,32,79,78,0
STR@LB12
        de 65,58,86,111,116,101,32,32,66,58,82,101,115,117,108,116,0
STR@LB14
        de 73,68,32,110,111,116,32,102,111,117,110,100,46,0
STR@LB15
        de 86,111,116,101,114,32,118,101,114,105,102,105,101,100,46,0
STR@LB16
        de 65,58,32,87,97,116,101,114,32,108,105,108,121,0
STR@LB17
        de 66,58,32,76,111,116,117,115,32,67,58,32,82,111,115,101,0
STR@LB18
        de 86,111,116,101,32,83,117,99,99,101,115,115,102,117,108,46,0
STR@LB19
        de 84,104,97,110,107,115,46,46,0
STR@LB20
        de 65,108,114,101,97,100,121,32,86,111,116,101,100,46,0
STR@LB21
        de 69,110,116,101,114,32,112,97,115,115,119,111,114,100,58,0
STR@LB22
        de 69,114,114,111,114,46,0
STR@LB23
        de 70,80,32,118,111,116,105,110,103,32,115,121,115,116,101,109,0
STR@LB24
        de 65,58,65,68,68,32,32,32,32,32,32,66,58,73,68,115,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
