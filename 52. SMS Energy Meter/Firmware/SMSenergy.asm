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
#define _SYSTEM_VARIABLE_COUNT 31
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
GPR = 39
PBP#VAR0 = 40
PP0 = 41
PP0H = 42
PP0HH = 43
PP0HHH = 44
PP1 = 45
PP1H = 46
PP2 = 47
PP2H = 48
PP2HH = 49
PP2HHH = 50
PP3 = 51
PP3H = 52
PP4 = 53
PP5 = 54
PP6 = 55
PP6H = 56
PPZ = 57
PPZH = 58
PPZHH = 59
PPZHHH = 60
RPFH = 61
SP#P9 = 62
number = 63
variable number#0=63,number#1=64,number#2=65,number#3=66
variable number#4=67,number#5=68,number#6=69,number#7=70
variable number#8=71,number#9=72,number#10=73
msg = 74
msgH = 75
money = 76
moneyH = 77
_B#VR1 = 78
admin = 79
volt = 80
freq = 81
tvolt = 82
tfreq = 83
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define receive _B#VR1,0
#define low_m _B#VR1,1
#define sms_f_f _B#VR1,2
#define sms_f_v _B#VR1,3
#define incVolt PORTC,1
#define decVolt PORTC,2
#define incFreq PORTC,3
#define decFreq PORTC,4
#define incBlnc PORTC,5
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 49664
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 10
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 115200
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 55
        clrf 56
        rlf 56,F
        movlw 0
        subwf 56,W
        movlw 128
        skpnz
        subwf 55,W
        skpc
        goto FA@EXT
        btfsc 52,7
        goto FA@EXT
        movlw 32
        addwf 55,F
FA@EXT
        movf 55,W
        movwf 4
        return
T@GTB
        clrf 42
T@GTW
        clrf 46
T@GT
        movwf 45
        movlw 1
        goto T@ST
T@LEB
        clrf 42
T@LEW
        clrf 46
T@LE
        movwf 45
        movlw 6
        goto T@ST
T@LT
        movwf 45
        movlw 4
T@ST
        movwf 39
        movf 46,W
        subwf 42,W
        skpz
        goto $ + 3
        movf 45,W
        subwf 41,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 39,W
        skpz
        movlw 1
        goto I@NT
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
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 54
        movlw 254
        call CH@SND
        movf 54,W
        goto CH@SND
IN@DEC32
        clrf 47
        clrf 48
        clrf 49
        clrf 50
        bcf 39,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 39,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 45
        clrf 44
        clrf 43
        clrf 42
        movlw 10
        movwf 41
        call AL@MUL
        movf 45,W
        addwf 41,W
        movwf 47
        movf 42,W
        movwf 48
        clrw
        skpnc
        movlw 1
        addwf 48,F
        movf 43,W
        movwf 49
        clrw
        skpnc
        movlw 1
        addwf 49,F
        movf 44,W
        movwf 50
        clrw
        skpnc
        movlw 1
        addwf 50,F
        decf 37,F
        skpnz
        goto IN@BNF32
        call CH@RCV
        skpc
        return
        addlw 198
        skpnc
        goto IN@BNF32
        addlw 10
        skpnc
        goto IN@DCL132
IN@BNF32
        btfss 39,5
        goto $ + 12
        comf 47,F
        comf 48,F
        comf 49,F
        comf 50,F
        incf 47,F
        skpnz
        incf 48,F
        skpnz
        incf 49,F
        skpnz
        incf 50,F
        movf 47,W
        setc
        goto I@NT
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
        movwf 42
        movf 47,W
        movwf 41
        call D@VD
        movf 41,W
SEND@IT
        movwf 41
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
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
        movwf 52
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 52,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 42
        movlw 128
        call DLUS@W
        movlw 51
        movwf 51
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
        movwf 51
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 52,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 51
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
        movf 51,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 51,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 52,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 41
        movf 38,W
        movwf 42
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
        addwf 41,F
        skpc
        addwf 42,F
        skpc
        goto I@NT
        incfsz 45,W
        goto $ - 16
        incfsz 46,W
        goto $ - 17
        movlw 250
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
CH@RCV
        movf 61,F
        skpnz
        goto HRSIN2
        decf 61,W
        skpnz
        goto HRSIN
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
        clrf 48
        clrf 47
D@VD2
        movlw 16
        movwf 51
        rlf 42,W
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
        rlf 41,F
        rlf 42,F
        decfsz 51,F
        goto $ - 21
        movf 41,W
        return
AL@MUL
        movlw 32
        movwf 51
        clrf 57
        clrf 58
        clrf 59
        clrf 60
MLT32@LP
        clrc
        btfss 41,0
        goto MLT32@BR
        movf 47,W
        addwf 57,F
        movf 48,W
        skpnc
        incfsz 48,W
        addwf 58,F
        movf 49,W
        skpnc
        incfsz 49,W
        addwf 59,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 60,F
MLT32@BR
        rrf 60,F
        rrf 59,F
        rrf 58,F
        rrf 57,F
        rrf 44,F
        rrf 43,F
        rrf 42,F
        rrf 41,F
        decfsz 51,F
        goto MLT32@LP
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
GET@ARRAY
        movwf 51
GET@ARRAYW
        movf 35,W
        movwf 52
        movf 51,W
        addwf 35,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
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
F2_SOF equ $ ; SMSENERGY.PRP
F2_EOF equ $ ; SMSENERGY.PRP
F1_SOF equ $ ; SMSENERGY.BAS
F1_000034 equ $ ; IN [SMSENERGY.BAS] OUTPUT PORTC.0
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,0
F1_000041 equ $ ; IN [SMSENERGY.BAS] PRINT $FE, $40, 0,17,10,4,10,17,0,0
        movlw 254
        bcf STATUS,5
ram_bank = 0
        f@call PRINT
        movlw 64
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
F1_000042 equ $ ; IN [SMSENERGY.BAS] PRINT $FE, $48, 1,2,20,9,2,20,8,0
        movlw 254
        f@call PRINT
        movlw 72
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
F1_000044 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000045 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "WAITING FOR GSM"
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
F1_000046 equ $ ; IN [SMSENERGY.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000047 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 46
        f@call PRINT
Gsm_init
F1_000049 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000050 equ $ ; IN [SMSENERGY.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
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
F1_000051 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,2, "."
        movlw 128
        movwf BPFH
        movlw 193
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000052 equ $ ; IN [SMSENERGY.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000053 equ $ ; IN [SMSENERGY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000054 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,3, "."
        movlw 128
        movwf BPFH
        movlw 194
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000055 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CSDH=1", 13, 10]
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
F1_000056 equ $ ; IN [SMSENERGY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000057 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,4, "."
        movlw 128
        movwf BPFH
        movlw 195
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000058 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000059 equ $ ; IN [SMSENERGY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000060 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,4, "."
        movlw 128
        movwf BPFH
        movlw 195
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000061 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000062 equ $ ; IN [SMSENERGY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000063 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,5, "."
        movlw 128
        movwf BPFH
        movlw 196
        f@call LCD@CRS
        movlw 46
        f@call PRINT
F1_000064 equ $ ; IN [SMSENERGY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000065 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000066 equ $ ; IN [SMSENERGY.BAS] MSG = -1 : MONEY = 100
        movlw 255
        movwf msgH
        movwf msg
        clrf moneyH
        movlw 100
        movwf money
F1_000067 equ $ ; IN [SMSENERGY.BAS] VOLT = 218 : FREQ = 50
        movlw 218
        movwf volt
        movlw 50
        movwf freq
F1_000068 equ $ ; IN [SMSENERGY.BAS] TVOLT = VOLT : TFREQ = FREQ
        movf volt,W
        movwf tvolt
        movf freq,W
        movwf tfreq
F1_000069 equ $ ; IN [SMSENERGY.BAS] RECEIVE = 0
        bcf _B#VR1,0
start
F1_000072 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1,"BLNC: ", DEC4 MONEY, "TK  "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 66
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 4
        movwf GEN4H
        movf moneyH,W
        movwf PP2H
        movf money,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call PRINT
        movlw 75
        f@call PRINT
        movlw 32
        f@call PRINT
        f@call PRINT
F1_000073 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "AC: ", DEC3 VOLT, "V  "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 65
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf volt,W
        f@call OUT@DECC
        movlw 118
        f@call PRINT
        movlw 32
        f@call PRINT
        f@call PRINT
F1_000074 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,13, DEC2 FREQ, "HZ"
        movlw 128
        movwf BPFH
        movlw 204
        f@call LCD@CRS
        movlw 2
        movwf GEN4H
        movf freq,W
        f@call OUT@DECC
        movlw 72
        f@call PRINT
        movlw 122
        f@call PRINT
F1_000076 equ $ ; IN [SMSENERGY.BAS] IF INCVOLT = 1 THEN INC VOLT
        set@page BC@LL3
        btfss PORTC,1
        goto BC@LL3
        incf volt,F
BC@LL3
F1_000077 equ $ ; IN [SMSENERGY.BAS] IF DECVOLT = 1 THEN DEC VOLT
        set@page BC@LL5
        btfss PORTC,2
        goto BC@LL5
        decf volt,F
BC@LL5
F1_000078 equ $ ; IN [SMSENERGY.BAS] IF INCFREQ = 1 THEN INC FREQ
        set@page BC@LL7
        btfss PORTC,3
        goto BC@LL7
        incf freq,F
BC@LL7
F1_000079 equ $ ; IN [SMSENERGY.BAS] IF DECFREQ = 1 THEN DEC FREQ
        set@page BC@LL9
        btfss PORTC,4
        goto BC@LL9
        decf freq,F
BC@LL9
F1_000081 equ $ ; IN [SMSENERGY.BAS] IF INCBLNC = 1 AND MONEY != 0 THEN DEC MONEY
        movlw 0
        btfsc PORTC,5
        movlw 1
        movwf SP#P9
        movf moneyH,W
        iorwf money,W
        btfss STATUS,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL11
        btfsc STATUS,2
        goto BC@LL11
        decf money,F
        incf money,W
        btfsc STATUS,2
        decf moneyH,F
BC@LL11
F1_000082 equ $ ; IN [SMSENERGY.BAS] IF MONEY = 50 THEN LOW_M = 1
        movf money,W
        xorlw 50
        iorwf moneyH,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
        bsf _B#VR1,1
BC@LL13
F1_000083 equ $ ; IN [SMSENERGY.BAS] IF LOW_M = 1 AND MONEY < 50 THEN
        movlw 0
        btfsc _B#VR1,1
        movlw 1
        movwf SP#P9
        movf moneyH,W
        movwf PP0H
        movf money,W
        movwf PP0
        clrf PP1H
        movlw 50
        f@call T@LT
        andwf SP#P9,F
        set@page BC@LL15
        btfsc STATUS,2
        goto BC@LL15
F1_000084 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000085 equ $ ; IN [SMSENERGY.BAS] LOW_M = 0
        bcf _B#VR1,1
F1_000086 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "BALANCE TOO LOW!"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 111
        f@call PRINT
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 119
        f@call PRINT
        movlw 33
        f@call PRINT
F1_000087 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "MONEY: ", DEC MONEY,"TK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        clrf GEN4H
        movf moneyH,W
        movwf PP2H
        movf money,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call PRINT
        movlw 75
        f@call PRINT
F1_000088 equ $ ; IN [SMSENERGY.BAS] ADMIN = 0
        clrf admin
F1_000089 equ $ ; IN [SMSENERGY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000090 equ $ ; IN [SMSENERGY.BAS] ADMIN = 1
        movlw 1
        movwf admin
F1_000091 equ $ ; IN [SMSENERGY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000092 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000093 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL15
F1_000095 equ $ ; IN [SMSENERGY.BAS] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000096 equ $ ; IN [SMSENERGY.BAS] IF RECEIVE = 1 THEN
        set@page BC@LL17
        btfss _B#VR1,0
        goto BC@LL17
F1_000097 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000098 equ $ ; IN [SMSENERGY.BAS] RECEIVE = 0
        bcf _B#VR1,0
F1_000099 equ $ ; IN [SMSENERGY.BAS] MONEY = MONEY + MSG
        movf msg,W
        addwf money,F
        movf msgH,W
        btfsc STATUS,0
        addlw 1
        addwf moneyH,F
F1_000100 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "MONEY RECEIVE:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 77
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 118
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 58
        f@call PRINT
F1_000101 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, DEC MSG, "TK "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        clrf GEN4H
        movf msgH,W
        movwf PP2H
        movf msg,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call PRINT
        movlw 75
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000102 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,7, "TOTAL:", DEC MONEY
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        movlw 84
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 58
        f@call PRINT
        clrf GEN4H
        movf moneyH,W
        movwf PP2H
        movf money,W
        movwf PP2
        f@call OUT@DEC
F1_000103 equ $ ; IN [SMSENERGY.BAS] ADMIN = 0
        clrf admin
F1_000104 equ $ ; IN [SMSENERGY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000105 equ $ ; IN [SMSENERGY.BAS] ADMIN = 1
        movlw 1
        movwf admin
F1_000106 equ $ ; IN [SMSENERGY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000107 equ $ ; IN [SMSENERGY.BAS] MSG = -1
        movlw 255
        movwf msgH
        movwf msg
F1_000108 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000109 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL17
F1_000111 equ $ ; IN [SMSENERGY.BAS] IF VOLT < 180 OR VOLT > 230 OR FREQ < 45 OR FREQ > 55 OR MONEY < 50 THEN
        movlw 180
        subwf volt,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        movwf SP#P9
        movf volt,W
        movwf PP0
        movlw 230
        f@call T@GTB
        iorwf SP#P9,F
        movlw 45
        subwf freq,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        iorwf SP#P9,F
        movf freq,W
        movwf PP0
        movlw 55
        f@call T@GTB
        iorwf SP#P9,F
        movf moneyH,W
        movwf PP0H
        movf money,W
        movwf PP0
        clrf PP1H
        movlw 50
        f@call T@LT
        iorwf SP#P9,F
        set@page BC@LL19
        btfsc STATUS,2
        goto BC@LL19
F1_000112 equ $ ; IN [SMSENERGY.BAS] PORTC.0 = 0
        bcf PORTC,0
F1_000113 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,16, 0
        movlw 128
        movwf BPFH
        movlw 143
        f@call LCD@CRS
        movlw 0
        f@call PRINT
        F@JUMP BC@LL20
BC@LL19
F1_000114 equ $ ; IN [SMSENERGY.BAS] ELSE
F1_000115 equ $ ; IN [SMSENERGY.BAS] PORTC.0 = 1
        bsf PORTC,0
F1_000116 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,16, 1
        movlw 128
        movwf BPFH
        movlw 143
        f@call LCD@CRS
        movlw 1
        f@call PRINT
F1_000117 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL20
F1_000118 equ $ ; IN [SMSENERGY.BAS] IF FREQ >= 45 AND FREQ <= 55 THEN SMS_F_F = 1
        movlw 45
        subwf freq,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf freq,W
        movwf PP0
        movlw 55
        f@call T@LEB
        andwf SP#P9,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
        bsf _B#VR1,2
BC@LL22
F1_000119 equ $ ; IN [SMSENERGY.BAS] IF VOLT >= 180 AND VOLT <= 230 THEN SMS_F_V = 1
        movlw 180
        subwf volt,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf volt,W
        movwf PP0
        movlw 230
        f@call T@LEB
        andwf SP#P9,F
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
        bsf _B#VR1,3
BC@LL24
F1_000120 equ $ ; IN [SMSENERGY.BAS] IF SMS_F_F = 1 THEN
        set@page BC@LL26
        btfss _B#VR1,2
        goto BC@LL26
F1_000121 equ $ ; IN [SMSENERGY.BAS] IF FREQ < 45 OR FREQ > 55 THEN SEND_FREQ : SMS_F_F = 0
        movlw 45
        subwf freq,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        movwf SP#P9
        movf freq,W
        movwf PP0
        movlw 55
        f@call T@GTB
        iorwf SP#P9,F
        set@page BC@LL28
        btfsc STATUS,2
        goto BC@LL28
        F@JUMP Send_freq
ram_bank = 0
        bcf _B#VR1,2
BC@LL28
F1_000122 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL26
F1_000123 equ $ ; IN [SMSENERGY.BAS] IF SMS_F_V = 1 THEN
        set@page BC@LL30
        btfss _B#VR1,3
        goto BC@LL30
F1_000124 equ $ ; IN [SMSENERGY.BAS] IF VOLT < 180 OR VOLT > 230 THEN SEND_VOLT : SMS_F_V = 0
        movlw 180
        subwf volt,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        movwf SP#P9
        movf volt,W
        movwf PP0
        movlw 230
        f@call T@GTB
        iorwf SP#P9,F
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
        F@JUMP Send_volt
ram_bank = 0
        bcf _B#VR1,3
BC@LL32
F1_000125 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL30
F1_000126 equ $ ; IN [SMSENERGY.BAS] GOTO START
        F@JUMP start
Send_SMS
F1_000129 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000130 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "SMS SENDING..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000131 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000132 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000133 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGS="]
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
F1_000134 equ $ ; IN [SMSENERGY.BAS] IF ADMIN = 0 THEN
        movf admin,F
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
F1_000135 equ $ ; IN [SMSENERGY.BAS] HSEROUT[34, STR NUMBER, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 63
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        F@JUMP BC@LL37
BC@LL34
F1_000136 equ $ ; IN [SMSENERGY.BAS] ELSE
F1_000137 equ $ ; IN [SMSENERGY.BAS] HSEROUT[34, "01833905966", 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 54
        f@call HRSOUT
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000138 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL37
F1_000139 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000140 equ $ ; IN [SMSENERGY.BAS] IF RECEIVE = 1 THEN
        set@page BC@LL39
        btfss _B#VR1,0
        goto BC@LL39
F1_000141 equ $ ; IN [SMSENERGY.BAS] HSEROUT["YOUR BALANCE IS REFILLED BY ", DEC MSG, "TK SUCCESSFULLY.", $1A, 13, 10]
        movlw 89
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 102
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        clrf GEN4H
        movf msgH,W
        movwf PP2H
        movf msg,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call HRSOUT
        movlw 75
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        f@call HRSOUT
        movlw 102
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        F@JUMP BC@LL40
BC@LL39
F1_000142 equ $ ; IN [SMSENERGY.BAS] ELSE
F1_000143 equ $ ; IN [SMSENERGY.BAS] HSEROUT["YOUR CURRENT BALANCE LESS THAN 50TK.", $1A, 13, 10]
        movlw 89
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 75
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000144 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL40
F1_000145 equ $ ; IN [SMSENERGY.BAS] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        f@call DLY@W
F1_000146 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000147 equ $ ; IN [SMSENERGY.BAS] GOSUB START
        f@call start
Send_blance
F1_000150 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000151 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "SMS SENDING..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000152 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "BALANCE..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 66
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000153 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000154 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000155 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGS="]
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
F1_000156 equ $ ; IN [SMSENERGY.BAS] HSEROUT[34, STR NUMBER, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 63
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000157 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000158 equ $ ; IN [SMSENERGY.BAS] HSEROUT["YOUR CURRENT BALANCE IS: ", DEC MSG, "TK ONLY.", $1A, 13, 10]
        movlw 89
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        clrf GEN4H
        movf msgH,W
        movwf PP2H
        movf msg,W
        movwf PP2
        f@call OUT@DEC
        movlw 84
        f@call HRSOUT
        movlw 75
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000159 equ $ ; IN [SMSENERGY.BAS] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        f@call DLY@W
F1_000160 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000161 equ $ ; IN [SMSENERGY.BAS] GOSUB START
        f@call start
Send_freq
F1_000164 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000165 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "SMS SENDING..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000166 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "FREQUENCY..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 70
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 113
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 121
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000167 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000168 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000169 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGS="]
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
F1_000170 equ $ ; IN [SMSENERGY.BAS] HSEROUT[34, "01833905966", 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 54
        f@call HRSOUT
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000171 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000172 equ $ ; IN [SMSENERGY.BAS] HSEROUT["FREQUENCY OVER RANGE.", $1A, 13, 10]
        movlw 70
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 113
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000173 equ $ ; IN [SMSENERGY.BAS] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        f@call DLY@W
F1_000174 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000175 equ $ ; IN [SMSENERGY.BAS] GOSUB START
        f@call start
Send_volt
F1_000178 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000179 equ $ ; IN [SMSENERGY.BAS] PRINT AT 1,1, "SMS SENDING..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000180 equ $ ; IN [SMSENERGY.BAS] PRINT AT 2,1, "VOLTAGE..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 86
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
        f@call PRINT
F1_000181 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000182 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000183 equ $ ; IN [SMSENERGY.BAS] HSEROUT["AT+CMGS="]
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
F1_000184 equ $ ; IN [SMSENERGY.BAS] HSEROUT[34, "01833905966", 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 54
        f@call HRSOUT
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000185 equ $ ; IN [SMSENERGY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000186 equ $ ; IN [SMSENERGY.BAS] HSEROUT["VOLTAGE OVER RANGE.", $1A, 13, 10]
        movlw 86
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000187 equ $ ; IN [SMSENERGY.BAS] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        f@call DLY@W
F1_000188 equ $ ; IN [SMSENERGY.BAS] CLS
        f@call LCD@CLS
F1_000189 equ $ ; IN [SMSENERGY.BAS] GOSUB START
        f@call start
Receive_SMS
F1_000192 equ $ ; IN [SMSENERGY.BAS] HSERIN 1000, OVER,[WAIT("+88"), STR NUMBER, WAIT(13,10), DEC MSG]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB44
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB44
        btfss STATUS,2
        goto PB@LB44
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB44
        btfss STATUS,2
        goto PB@LB44
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB44
        btfss STATUS,2
        goto PB@LB44
        clrf PBP#VAR0
PB@LB47
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR0,W
        addlw number
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 11
        set@page PB@LB47
        btfss STATUS,2
        goto PB@LB47
PB@LB48
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB48
        btfss STATUS,2
        goto PB@LB48
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB48
        btfss STATUS,2
        goto PB@LB48
        clrf RPFH
        clrf GEN4H
        f@call IN@DEC32
        set@page over
        btfss STATUS,0
        goto over
        movwf msg
        movf PP2H,W
        movwf msgH
F1_000193 equ $ ; IN [SMSENERGY.BAS] IF MSG > 49 AND MSG <= 500 THEN
        movf msgH,W
        movwf PP0H
        movf msg,W
        movwf PP0
        clrf PP1H
        movlw 49
        f@call T@GT
        movwf SP#P9
        movf msgH,W
        movwf PP0H
        movf msg,W
        movwf PP0
        movlw 1
        movwf PP1H
        movlw 244
        f@call T@LE
        andwf SP#P9,F
        set@page BC@LL49
        btfsc STATUS,2
        goto BC@LL49
F1_000194 equ $ ; IN [SMSENERGY.BAS] RECEIVE = 1
        bsf _B#VR1,0
F1_000195 equ $ ; IN [SMSENERGY.BAS] ENDIF
BC@LL49
F1_000196 equ $ ; IN [SMSENERGY.BAS] IF MSG = 10 THEN GOSUB SEND_BLANCE
        movf msg,W
        xorlw 10
        iorwf msgH,W
        set@page BC@LL51
        btfss STATUS,2
        goto BC@LL51
        f@call Send_blance
BC@LL51
over
F1_000198 equ $ ; IN [SMSENERGY.BAS] RETURN
        return
F1_EOF equ $ ; SMSENERGY.BAS
PB@LB53
        F@JUMP PB@LB53
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
