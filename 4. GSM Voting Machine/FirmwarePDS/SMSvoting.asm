;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
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
#define XTAL 8
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
GEN3H = 35
GEN4 = 36
GEN4H = 37
GENH = 38
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
PP7 = 55
text = 56
variable text#0=56,text#1=57,text#2=58,text#3=59
variable text#4=60,text#5=61,text#6=62,text#7=63
variable text#8=64,text#9=65,text#10=66,text#11=67
variable text#12=68,text#13=69,text#14=70,text#15=71
variable text#16=72,text#17=73,text#18=74,text#19=75
number = 76
variable number#0=76,number#1=77,number#2=78,number#3=79
variable number#4=80,number#5=81,number#6=82,number#7=83
variable number#8=84,number#9=85,number#10=86
msg = 87
variable msg#0=87,msg#1=88,msg#2=89,msg#3=90
variable msg#4=91,msg#5=92
_B#VR1 = 93
contact1 = 94
variable contact1#0=94,contact1#1=95,contact1#2=96,contact1#3=97
variable contact1#4=98,contact1#5=99,contact1#6=100,contact1#7=101
variable contact1#8=102,contact1#9=103,contact1#10=104
contact2 = 105
variable contact2#0=105,contact2#1=106,contact2#2=107,contact2#3=108
variable contact2#4=109,contact2#5=110,contact2#6=111,contact2#7=112
variable contact2#8=113,contact2#9=114,contact2#10=115
contact3 = 116
variable contact3#0=116,contact3#1=117,contact3#2=118,contact3#3=119
variable contact3#4=120,contact3#5=121,contact3#6=122,contact3#7=123
variable contact3#8=124,contact3#9=125,contact3#10=126
contact4 = 127
variable contact4#0=127,contact4#1=160,contact4#2=161,contact4#3=162
variable contact4#4=163,contact4#5=164,contact4#6=165,contact4#7=166
variable contact4#8=167,contact4#9=168,contact4#10=169
contact5 = 170
variable contact5#0=170,contact5#1=171,contact5#2=172,contact5#3=173
variable contact5#4=174,contact5#5=175,contact5#6=176,contact5#7=177
variable contact5#8=178,contact5#9=179,contact5#10=180
contact6 = 181
variable contact6#0=181,contact6#1=182,contact6#2=183,contact6#3=184
variable contact6#4=185,contact6#5=186,contact6#6=187,contact6#7=188
variable contact6#8=189,contact6#9=190,contact6#10=191
contact7 = 192
variable contact7#0=192,contact7#1=193,contact7#2=194,contact7#3=195
variable contact7#4=196,contact7#5=197,contact7#6=198,contact7#7=199
variable contact7#8=200,contact7#9=201,contact7#10=202
contact8 = 203
variable contact8#0=203,contact8#1=204,contact8#2=205,contact8#3=206
variable contact8#4=207,contact8#5=208,contact8#6=209,contact8#7=210
variable contact8#8=211,contact8#9=212,contact8#10=213
contact9 = 214
variable contact9#0=214,contact9#1=215,contact9#2=216,contact9#3=217
variable contact9#4=218,contact9#5=219,contact9#6=220,contact9#7=221
variable contact9#8=222,contact9#9=223,contact9#10=224
_A = 225
_B = 226
_C = 227
_D = 228
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define flag _B#VR1,0
#define smsflag1 _B#VR1,1
#define smsflag2 _B#VR1,2
#define smsflag3 _B#VR1,3
#define smsflag4 _B#VR1,4
#define vote PORTC,4
#define __XTAL 8
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
HSERIAL_SPBRG = 12
HSERIAL_TXSTA = 32
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
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
        clrf 37
OUT@DECC
        movwf 47
        clrf 48
OUT@DEC
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 36
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
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
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
SB@STROUT
        movwf 47
SB@STROUTLP
        movf 36,W
        skpnz
        goto I@NT
        movf 47,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 47,F
        decf 36,F
        goto SB@STROUTLP
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
        bcf PORTB,3
        swapf 49,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 50,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 43
        movf 38,W
        movwf 44
        clrf 45
        clrf 46
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 45,F
        skpc
        addwf 46,F
        skpc
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        incfsz 45,W
        goto $ - 16
        incfsz 46,W
        goto $ - 17
        movlw 100
        movwf 45
        clrf 46
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
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 44
DLUS@W
        addlw 244
        movwf 43
        comf 44,F
        movlw 254
        skpc
        goto $ + 4
        addwf 43,F
        skpnc
        goto $ - 2
        addwf 43,F
        nop
        incfsz 44,F
        goto $ - 6
        nop
        btfsc 43,0
        goto $ + 1
        btfsc 43,0
        goto $ + 1
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
GET@ARRAY
        movwf 49
GET@ARRAYW
        movf 35,W
        movwf 50
        movf 49,W
        addwf 35,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 12
        movwf 153
        movlw 32
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000049 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000052 equ $ ; IN [ABRAR] STR CONTACT1 = "01994171591"
        movlw 48
        movwf contact1#0
        movlw 49
        movwf contact1#1
        movlw 57
        movwf contact1#2
        movwf contact1#3
        movlw 52
        movwf contact1#4
        movlw 49
        movwf contact1#5
        movlw 55
        movwf contact1#6
        movlw 49
        movwf contact1#7
        movlw 53
        movwf contact1#8
        movlw 57
        movwf contact1#9
        movlw 49
        movwf contact1#10
F1_000053 equ $ ; IN [ABRAR] STR CONTACT2 = "01946933355"
        movlw 48
        movwf contact2#0
        movlw 49
        movwf contact2#1
        movlw 57
        movwf contact2#2
        movlw 52
        movwf contact2#3
        movlw 54
        movwf contact2#4
        movlw 57
        movwf contact2#5
        movlw 51
        movwf contact2#6
        movwf contact2#7
        movwf contact2#8
        movlw 53
        movwf contact2#9
        movwf contact2#10
F1_000054 equ $ ; IN [ABRAR] STR CONTACT3 = "01875752347"
        movlw 48
        movwf contact3#0
        movlw 49
        movwf contact3#1
        movlw 56
        movwf contact3#2
        movlw 55
        movwf contact3#3
        movlw 53
        movwf contact3#4
        movlw 55
        movwf contact3#5
        movlw 53
        movwf contact3#6
        movlw 50
        movwf contact3#7
        movlw 51
        movwf contact3#8
        movlw 52
        movwf contact3#9
        movlw 55
        movwf contact3#10
F1_000056 equ $ ; IN [ABRAR] STR CONTACT4 = "01833905966"
        movlw 48
        movwf contact4#0
        movlw 49
        bsf STATUS,5
ram_bank = 1
        movwf contact4#1
        movlw 56
        movwf contact4#2
        movlw 51
        movwf contact4#3
        movwf contact4#4
        movlw 57
        movwf contact4#5
        movlw 48
        movwf contact4#6
        movlw 53
        movwf contact4#7
        movlw 57
        movwf contact4#8
        movlw 54
        movwf contact4#9
        movwf contact4#10
F1_000057 equ $ ; IN [ABRAR] STR CONTACT5 = "01833905966"
        movlw 48
        movwf contact5#0
        movlw 49
        movwf contact5#1
        movlw 56
        movwf contact5#2
        movlw 51
        movwf contact5#3
        movwf contact5#4
        movlw 57
        movwf contact5#5
        movlw 48
        movwf contact5#6
        movlw 53
        movwf contact5#7
        movlw 57
        movwf contact5#8
        movlw 54
        movwf contact5#9
        movwf contact5#10
F1_000058 equ $ ; IN [ABRAR] STR CONTACT6 = "01833905966"
        movlw 48
        movwf contact6#0
        movlw 49
        movwf contact6#1
        movlw 56
        movwf contact6#2
        movlw 51
        movwf contact6#3
        movwf contact6#4
        movlw 57
        movwf contact6#5
        movlw 48
        movwf contact6#6
        movlw 53
        movwf contact6#7
        movlw 57
        movwf contact6#8
        movlw 54
        movwf contact6#9
        movwf contact6#10
F1_000060 equ $ ; IN [ABRAR] STR CONTACT7 = "01833905966"
        movlw 48
        movwf contact7#0
        movlw 49
        movwf contact7#1
        movlw 56
        movwf contact7#2
        movlw 51
        movwf contact7#3
        movwf contact7#4
        movlw 57
        movwf contact7#5
        movlw 48
        movwf contact7#6
        movlw 53
        movwf contact7#7
        movlw 57
        movwf contact7#8
        movlw 54
        movwf contact7#9
        movwf contact7#10
F1_000061 equ $ ; IN [ABRAR] STR CONTACT8 = "01833905966"
        movlw 48
        movwf contact8#0
        movlw 49
        movwf contact8#1
        movlw 56
        movwf contact8#2
        movlw 51
        movwf contact8#3
        movwf contact8#4
        movlw 57
        movwf contact8#5
        movlw 48
        movwf contact8#6
        movlw 53
        movwf contact8#7
        movlw 57
        movwf contact8#8
        movlw 54
        movwf contact8#9
        movwf contact8#10
F1_000062 equ $ ; IN [ABRAR] STR CONTACT9 = "01833905966"
        movlw 48
        movwf contact9#0
        movlw 49
        movwf contact9#1
        movlw 56
        movwf contact9#2
        movlw 51
        movwf contact9#3
        movwf contact9#4
        movlw 57
        movwf contact9#5
        movlw 48
        movwf contact9#6
        movlw 53
        movwf contact9#7
        movlw 57
        movwf contact9#8
        movlw 54
        movwf contact9#9
        movwf contact9#10
F1_000065 equ $ ; IN [ABRAR] INPUT VOTE
        bsf TRISC,4
F1_000067 equ $ ; IN [ABRAR] PRINT $FE, 1
        movlw 254
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        movlw 1
        f@call PRINT
F1_000068 equ $ ; IN [ABRAR] GOSUB DEFAULT
        f@call default
F1_000069 equ $ ; IN [ABRAR] PRINT AT 4,1,"CONTACTING GSM..."
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
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
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000070 equ $ ; IN [ABRAR] GOSUB GSM_INIT
        f@call GSM_init
F1_000071 equ $ ; IN [ABRAR] PRINT AT 4,1,"GSM MODULE CONNECTED"
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 100
        f@call PRINT
F1_000072 equ $ ; IN [ABRAR] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000079 equ $ ; IN [ABRAR] FLAG = 0
        bcf _B#VR1,0
main
F1_000082 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000083 equ $ ; IN [ABRAR] GOSUB DEFAULT
        f@call default
F1_000084 equ $ ; IN [ABRAR] WHILE FLAG = 0
BC@LL1
        set@page BC@LL2
        btfsc _B#VR1,0
        goto BC@LL2
F1_000085 equ $ ; IN [ABRAR] SMSFLAG1 = 1 : SMSFLAG2 = 1
        bsf _B#VR1,1
        bsf _B#VR1,2
F1_000086 equ $ ; IN [ABRAR] SMSFLAG3 = 1 : SMSFLAG4 = 1
        bsf _B#VR1,3
        bsf _B#VR1,4
F1_000087 equ $ ; IN [ABRAR] PRINT AT 2,7, "OFF"
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000088 equ $ ; IN [ABRAR] PRINT AT 2,18, "OFF"
        movlw 128
        movwf BPFH
        movlw 209
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000089 equ $ ; IN [ABRAR] PRINT AT 3,7, "OFF"
        movlw 128
        movwf BPFH
        movlw 154
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000090 equ $ ; IN [ABRAR] PRINT AT 3,18, "OFF"
        movlw 128
        movwf BPFH
        movlw 165
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000091 equ $ ; IN [ABRAR] PRINT AT 4,2,"VOTING ACCEPT: OFF"
        movlw 128
        movwf BPFH
        movlw 213
        f@call LCD@CRS
        movlw 86
        f@call PRINT
        movlw 111
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
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000092 equ $ ; IN [ABRAR] IF VOTE = 1 THEN DELAYMS 300 : FLAG =~ FLAG
        set@page BC@LL4
        btfss PORTC,4
        goto BC@LL4
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 1
        xorwf _B#VR1,F
BC@LL4
F1_000093 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL1
BC@LL2
F1_000094 equ $ ; IN [ABRAR] A = 0 : B = 0 : C = 0 : D = 0
        bsf STATUS,5
ram_bank = 1
        clrf _A
        clrf _B
        clrf _C
        clrf _D
F1_000095 equ $ ; IN [ABRAR] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000096 equ $ ; IN [ABRAR] GOSUB DEFAULT
        f@call default
F1_000097 equ $ ; IN [ABRAR] WHILE FLAG = 1
BC@LL5
        set@page BC@LL6
        btfss _B#VR1,0
        goto BC@LL6
F1_000098 equ $ ; IN [ABRAR] PRINT AT 2,7, DEC A
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        bsf STATUS,5
ram_bank = 1
        movf _A,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECB
F1_000099 equ $ ; IN [ABRAR] PRINT AT 2,18, DEC B
        movlw 128
        movwf BPFH
        movlw 209
        f@call LCD@CRS
        bsf STATUS,5
ram_bank = 1
        movf _B,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECB
F1_000100 equ $ ; IN [ABRAR] PRINT AT 3,7, DEC C
        movlw 128
        movwf BPFH
        movlw 154
        f@call LCD@CRS
        bsf STATUS,5
ram_bank = 1
        movf _C,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECB
F1_000101 equ $ ; IN [ABRAR] PRINT AT 3,18, DEC D
        movlw 128
        movwf BPFH
        movlw 165
        f@call LCD@CRS
        bsf STATUS,5
ram_bank = 1
        movf _D,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECB
F1_000102 equ $ ; IN [ABRAR] PRINT AT 4,2,"VOTING ACCEPT: ON"
        movlw 128
        movwf BPFH
        movlw 213
        f@call LCD@CRS
        movlw 86
        f@call PRINT
        movlw 111
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
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 112
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 79
        f@call PRINT
        movlw 78
        f@call PRINT
F1_000103 equ $ ; IN [ABRAR] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000104 equ $ ; IN [ABRAR] IF VOTE = 1 THEN DELAYMS 300 : FLAG =~ FLAG
        set@page BC@LL8
        btfss PORTC,4
        goto BC@LL8
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 1
        xorwf _B#VR1,F
BC@LL8
F1_000105 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL5
BC@LL6
F1_000106 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
check_vote
F1_000109 equ $ ; IN [ABRAR] IF MSG[5] = "A" THEN
        movf msg#5,W
        movwf PBP#VAR0
        movlw 65
        subwf PBP#VAR0,W
        set@page BC@LL10
        btfss STATUS,2
        goto BC@LL10
F1_000110 equ $ ; IN [ABRAR] INC A
        bsf STATUS,5
ram_bank = 1
        incf _A,F
F1_000111 equ $ ; IN [ABRAR] GOSUB SEND_ACCEPTED
        bcf STATUS,5
ram_bank = 0
        f@call send_accepted
        F@JUMP BC@LL9
F1_000112 equ $ ; IN [ABRAR] ELSEIF MSG[5] = "B" THEN
BC@LL10
        movf msg#5,W
        movwf PBP#VAR0
        movlw 66
        subwf PBP#VAR0,W
        set@page BC@LL11
        btfss STATUS,2
        goto BC@LL11
F1_000113 equ $ ; IN [ABRAR] INC B
        bsf STATUS,5
ram_bank = 1
        incf _B,F
F1_000114 equ $ ; IN [ABRAR] GOSUB SEND_ACCEPTED
        bcf STATUS,5
ram_bank = 0
        f@call send_accepted
        F@JUMP BC@LL9
F1_000115 equ $ ; IN [ABRAR] ELSEIF MSG[5] = "C" THEN
BC@LL11
        movf msg#5,W
        movwf PBP#VAR0
        movlw 67
        subwf PBP#VAR0,W
        set@page BC@LL12
        btfss STATUS,2
        goto BC@LL12
F1_000116 equ $ ; IN [ABRAR] INC C
        bsf STATUS,5
ram_bank = 1
        incf _C,F
F1_000117 equ $ ; IN [ABRAR] GOSUB SEND_ACCEPTED
        bcf STATUS,5
ram_bank = 0
        f@call send_accepted
        F@JUMP BC@LL9
F1_000118 equ $ ; IN [ABRAR] ELSEIF MSG[5] = "D" THEN
BC@LL12
        movf msg#5,W
        movwf PBP#VAR0
        movlw 68
        subwf PBP#VAR0,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
F1_000119 equ $ ; IN [ABRAR] INC D
        bsf STATUS,5
ram_bank = 1
        incf _D,F
F1_000120 equ $ ; IN [ABRAR] GOSUB SEND_ACCEPTED
        bcf STATUS,5
ram_bank = 0
        f@call send_accepted
        F@JUMP BC@LL14
BC@LL13
F1_000121 equ $ ; IN [ABRAR] ELSE
F1_000122 equ $ ; IN [ABRAR] STR TEXT = "WRONG FORMAT SMS."
        movlw 87
        movwf text#0
        movlw 114
        movwf text#1
        movlw 111
        movwf text#2
        movlw 110
        movwf text#3
        movlw 103
        movwf text#4
        movlw 32
        movwf text#5
        movlw 102
        movwf text#6
        movlw 111
        movwf text#7
        movlw 114
        movwf text#8
        movlw 109
        movwf text#9
        movlw 97
        movwf text#10
        movlw 116
        movwf text#11
        movlw 32
        movwf text#12
        movlw 83
        movwf text#13
        movlw 77
        movwf text#14
        movlw 83
        movwf text#15
        movlw 46
        movwf text#16
F1_000123 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000124 equ $ ; IN [ABRAR] ENDIF
BC@LL14
BC@LL9
F1_000125 equ $ ; IN [ABRAR] RETURN
        return
send_accepted
F1_000128 equ $ ; IN [ABRAR] STR TEXT = "YOUR VOTE ACCEPTED."
        movlw 89
        movwf text#0
        movlw 111
        movwf text#1
        movlw 117
        movwf text#2
        movlw 114
        movwf text#3
        movlw 32
        movwf text#4
        movlw 118
        movwf text#5
        movlw 111
        movwf text#6
        movlw 116
        movwf text#7
        movlw 101
        movwf text#8
        movlw 32
        movwf text#9
        movlw 97
        movwf text#10
        movlw 99
        movwf text#11
        movwf text#12
        movlw 101
        movwf text#13
        movlw 112
        movwf text#14
        movlw 116
        movwf text#15
        movlw 101
        movwf text#16
        movlw 100
        movwf text#17
        movlw 46
        movwf text#18
F1_000129 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000130 equ $ ; IN [ABRAR] RETURN
        return
already_voted
F1_000133 equ $ ; IN [ABRAR] STR TEXT = "YOU ALREADY VOTED."
        movlw 89
        movwf text#0
        movlw 111
        movwf text#1
        movlw 117
        movwf text#2
        movlw 32
        movwf text#3
        movlw 97
        movwf text#4
        movlw 108
        movwf text#5
        movlw 114
        movwf text#6
        movlw 101
        movwf text#7
        movlw 97
        movwf text#8
        movlw 100
        movwf text#9
        movlw 121
        movwf text#10
        movlw 32
        movwf text#11
        movlw 118
        movwf text#12
        movlw 111
        movwf text#13
        movlw 116
        movwf text#14
        movlw 101
        movwf text#15
        movlw 100
        movwf text#16
        movlw 46
        movwf text#17
F1_000134 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000135 equ $ ; IN [ABRAR] RETURN
        return
default
F1_000139 equ $ ; IN [ABRAR] PRINT AT 1,1," SMS VOTING MACHINE "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 86
        f@call PRINT
        movlw 111
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
        movlw 77
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 104
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000140 equ $ ; IN [ABRAR] PRINT AT 2,1,"CAN_A:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 95
        f@call PRINT
        movlw 65
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000141 equ $ ; IN [ABRAR] PRINT AT 2,12,"CAN_B:"
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 95
        f@call PRINT
        movlw 66
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000142 equ $ ; IN [ABRAR] PRINT AT 3,1,"CAN_C:"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 95
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000143 equ $ ; IN [ABRAR] PRINT AT 3,12,"CAN_D:"
        movlw 128
        movwf BPFH
        movlw 159
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 95
        f@call PRINT
        movlw 68
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000144 equ $ ; IN [ABRAR] RETURN
        return
GSM_init
F1_000147 equ $ ; IN [ABRAR] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000148 equ $ ; IN [ABRAR] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB16
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB16
        btfss STATUS,2
        goto PB@LB16
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB16
        btfss STATUS,2
        goto PB@LB16
F1_000149 equ $ ; IN [ABRAR] HSEROUT["ATE0", 13, 10]
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
F1_000150 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000151 equ $ ; IN [ABRAR] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000152 equ $ ; IN [ABRAR] RETURN
        return
Send_SMS
F1_000155 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000156 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000157 equ $ ; IN [ABRAR] HSEROUT["AT+CMGS="]
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
        movlw 83
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
F1_000158 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000159 equ $ ; IN [ABRAR] HSEROUT[34, STR NUMBER, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 76
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000160 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000161 equ $ ; IN [ABRAR] HSEROUT[STR TEXT, $1A, 13, 10]
        movlw 4
        movwf BPFH
        movlw 20
        movwf GEN4
        clrf PP2H
        movlw 56
        f@call SB@STROUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000162 equ $ ; IN [ABRAR] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000163 equ $ ; IN [ABRAR] RETURN
        return
Receive_SMS
F1_000166 equ $ ; IN [ABRAR] CLEAR NUMBER : CLEAR MSG
        movlw 11
        movwf PP0
        movlw 76
        movwf FSR
PB@LB21
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB21
        btfss STATUS,2
        goto PB@LB21
        movlw 6
        movwf PP0
        movlw 87
        movwf FSR
PB@LB22
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB22
        btfss STATUS,2
        goto PB@LB22
F1_000167 equ $ ; IN [ABRAR] HSERIN 1000, OVER,[WAIT("+88"), STR NUMBER, WAIT(13,10),STR MSG]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB23
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
        clrf PBP#VAR1
PB@LB26
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR1,W
        addlw number
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR1,F
        movf PBP#VAR1,W
        sublw 11
        set@page PB@LB26
        btfss STATUS,2
        goto PB@LB26
PB@LB27
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB27
        btfss STATUS,2
        goto PB@LB27
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB27
        btfss STATUS,2
        goto PB@LB27
        clrf PBP#VAR1
PB@LB30
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR1,W
        addlw msg
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR1,F
        movf PBP#VAR1,W
        sublw 6
        set@page PB@LB30
        btfss STATUS,2
        goto PB@LB30
F1_000168 equ $ ; IN [ABRAR] SELECT CASE NUMBER[9]
        movf number#9,W
        movwf PBP#VAR1
        movf contact1#9,W
        movwf PBP#VAR2
F1_000169 equ $ ; IN [ABRAR] CASE CONTACT1[9], CONTACT2[9], CONTACT3[9]
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
        movf contact2#9,W
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
        movf contact3#9,W
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL31
        btfss STATUS,2
        goto BC@LL31
BC@LL32
F1_000170 equ $ ; IN [ABRAR] SELECT CASE NUMBER[10]
        movf number#10,W
        movwf PBP#VAR2
        movf contact1#10,W
        movwf PBP#VAR3
F1_000171 equ $ ; IN [ABRAR] CASE CONTACT1[10], CONTACT2[10], CONTACT3[10]
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL35
        btfsc STATUS,2
        goto BC@LL35
        movf contact2#10,W
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL35
        btfsc STATUS,2
        goto BC@LL35
        movf contact3#10,W
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
BC@LL35
F1_000172 equ $ ; IN [ABRAR] IF SMSFLAG1 = 1 THEN
        set@page BC@LL37
        btfss _B#VR1,1
        goto BC@LL37
F1_000173 equ $ ; IN [ABRAR] GOSUB CHECK_VOTE
        f@call check_vote
F1_000174 equ $ ; IN [ABRAR] SMSFLAG1 = 0
        bcf _B#VR1,1
        F@JUMP BC@LL38
BC@LL37
F1_000175 equ $ ; IN [ABRAR] ELSE
F1_000176 equ $ ; IN [ABRAR] GOSUB ALREADY_VOTED
        f@call already_voted
F1_000177 equ $ ; IN [ABRAR] ENDIF
BC@LL38
F1_000178 equ $ ; IN [ABRAR] ENDSELECT
BC@LL34
BC@LL33
F1_000179 equ $ ; IN [ABRAR] ENDSELECT
BC@LL31
BC@LL30
F1_000180 equ $ ; IN [ABRAR] SELECT CASE NUMBER[9]
        movf number#9,W
        movwf PBP#VAR1
        bsf STATUS,5
ram_bank = 1
        movf contact4#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
F1_000181 equ $ ; IN [ABRAR] CASE CONTACT4[9], CONTACT5[9], CONTACT6[9]
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL41
        btfsc STATUS,2
        goto BC@LL41
        bsf STATUS,5
ram_bank = 1
        movf contact5#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL41
        btfsc STATUS,2
        goto BC@LL41
        bsf STATUS,5
ram_bank = 1
        movf contact6#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL40
        btfss STATUS,2
        goto BC@LL40
BC@LL41
F1_000182 equ $ ; IN [ABRAR] SELECT CASE NUMBER[10]
        movf number#10,W
        movwf PBP#VAR2
        bsf STATUS,5
ram_bank = 1
        movf contact4#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
F1_000183 equ $ ; IN [ABRAR] CASE CONTACT4[10], CONTACT5[10], CONTACT6[10]
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL44
        btfsc STATUS,2
        goto BC@LL44
        bsf STATUS,5
ram_bank = 1
        movf contact5#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL44
        btfsc STATUS,2
        goto BC@LL44
        bsf STATUS,5
ram_bank = 1
        movf contact6#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL43
        btfss STATUS,2
        goto BC@LL43
BC@LL44
F1_000184 equ $ ; IN [ABRAR] IF SMSFLAG2 = 1 THEN
        set@page BC@LL46
        btfss _B#VR1,2
        goto BC@LL46
F1_000185 equ $ ; IN [ABRAR] GOSUB CHECK_VOTE
        f@call check_vote
F1_000186 equ $ ; IN [ABRAR] SMSFLAG2 = 0
        bcf _B#VR1,2
        F@JUMP BC@LL47
BC@LL46
F1_000187 equ $ ; IN [ABRAR] ELSE
F1_000188 equ $ ; IN [ABRAR] GOSUB ALREADY_VOTED
        f@call already_voted
F1_000189 equ $ ; IN [ABRAR] ENDIF
BC@LL47
F1_000190 equ $ ; IN [ABRAR] ENDSELECT
BC@LL43
BC@LL42
F1_000191 equ $ ; IN [ABRAR] ENDSELECT
BC@LL40
BC@LL39
F1_000192 equ $ ; IN [ABRAR] SELECT CASE NUMBER[9]
        movf number#9,W
        movwf PBP#VAR1
        bsf STATUS,5
ram_bank = 1
        movf contact7#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
F1_000193 equ $ ; IN [ABRAR] CASE CONTACT7[9], CONTACT8[9], CONTACT9[9]
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL50
        btfsc STATUS,2
        goto BC@LL50
        bsf STATUS,5
ram_bank = 1
        movf contact8#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL50
        btfsc STATUS,2
        goto BC@LL50
        bsf STATUS,5
ram_bank = 1
        movf contact9#9,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        movf PBP#VAR1,W
        subwf PBP#VAR2,W
        set@page BC@LL49
        btfss STATUS,2
        goto BC@LL49
BC@LL50
F1_000194 equ $ ; IN [ABRAR] SELECT CASE NUMBER[10]
        movf number#10,W
        movwf PBP#VAR2
        bsf STATUS,5
ram_bank = 1
        movf contact7#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
F1_000195 equ $ ; IN [ABRAR] CASE CONTACT7[10], CONTACT8[10], CONTACT9[10]
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL53
        btfsc STATUS,2
        goto BC@LL53
        bsf STATUS,5
ram_bank = 1
        movf contact8#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL53
        btfsc STATUS,2
        goto BC@LL53
        bsf STATUS,5
ram_bank = 1
        movf contact9#10,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR3
        movf PBP#VAR2,W
        subwf PBP#VAR3,W
        set@page BC@LL52
        btfss STATUS,2
        goto BC@LL52
BC@LL53
F1_000196 equ $ ; IN [ABRAR] IF SMSFLAG3 = 1 THEN
        set@page BC@LL55
        btfss _B#VR1,3
        goto BC@LL55
F1_000197 equ $ ; IN [ABRAR] GOSUB CHECK_VOTE
        f@call check_vote
F1_000198 equ $ ; IN [ABRAR] SMSFLAG3 = 0
        bcf _B#VR1,3
        F@JUMP BC@LL56
BC@LL55
F1_000199 equ $ ; IN [ABRAR] ELSE
F1_000200 equ $ ; IN [ABRAR] GOSUB ALREADY_VOTED
        f@call already_voted
F1_000201 equ $ ; IN [ABRAR] ENDIF
BC@LL56
F1_000202 equ $ ; IN [ABRAR] ENDSELECT
BC@LL52
BC@LL51
F1_000203 equ $ ; IN [ABRAR] ENDSELECT
BC@LL49
BC@LL48
over
F1_000205 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB58
        F@JUMP PB@LB58
__EOF
__config XT_OSC & PWRTE_ON & CP_OFF & WDT_OFF
        end
