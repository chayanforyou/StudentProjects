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
#define XTAL 8
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
#define _SYSTEM_VARIABLE_COUNT 49
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
GENH = 39
PP0 = 40
PP0H = 41
PP0HH = 42
PP0HHH = 43
PP1 = 44
PP1H = 45
PP1HH = 46
PP1HHH = 47
PP2 = 48
PP2H = 49
PP2HH = 50
PP2HHH = 51
PP3 = 52
PP3H = 53
PP4 = 54
PP5 = 55
PP6 = 56
PP6H = 57
PP7 = 58
PP7H = 59
PP7HH = 60
PP7HHH = 61
PPZ = 62
PPZH = 63
PPZHH = 64
PPZHHH = 65
PP_AARG = 66
PP_AARGH = 67
PP_AARGHH = 68
PP_AARGHHH = 69
PP_BARG = 70
PP_BARGH = 71
PP_BARGHH = 72
PP_BARGHHH = 73
SP#P9 = 74
_AEXP = 75
_BEXP = 76
_FP_FLAGS = 77
_FP_TEMP = 78
_FP_TEMPB0 = 79
_SIGN = 80
number = 81
variable number#0=81,number#1=82,number#2=83,number#3=84
variable number#4=85,number#5=86,number#6=87,number#7=88
variable number#8=89,number#9=90,number#10=91
adc = 92
old_oil = 93
old_oilH = 94
old_oilHH = 95
old_oilHHH = 96
current_oil = 97
current_oilH = 98
current_oilHH = 99
current_oilHHH = 100
_B#VR1 = 101
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define bike_key PORTC,1
#define buzz PORTC,4
#define flag _B#VR1,0
#define __XTAL 8
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 51
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 56
        clrf 57
        rlf 57,F
        movlw 0
        subwf 57,W
        movlw 128
        skpnz
        subwf 56,W
        skpc
        goto FA@EXT
        btfsc 53,7
        goto FA@EXT
        movlw 32
        addwf 56,F
FA@EXT
        movf 56,W
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
        movwf 41
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 55
        movlw 254
        call CH@SND
        movf 55,W
        goto CH@SND
OUT@FLOAT
        movwf 75
        btfss 59,7
        goto $ + 3
        movlw 45
        call CH@SND
        incfsz 61,F
        goto $ + 6
        incfsz 60,F
        goto $ + 4
        incf 59,F
        btfsc 3,2
        incf 59,F
        clrf 66
        clrf 67
        clrf 68
        clrf 69
        bsf 59,7
        movlw 106
        addwf 58,F
        bcf 3,0
        rrf 59,F
        rrf 60,F
        rrf 61,F
        rrf 69,F
        rrf 68,F
        rrf 67,F
        rrf 66,F
        incfsz 58,F
        goto $ - 9
        movf 61,W
        subwf 58,W
        addwf 61,F
        subwf 58,F
        movf 60,W
        subwf 59,W
        addwf 60,F
        subwf 59,F
        clrf 38
        call OUT@DEC32
        movlw 46
        call CH@SND
FL@OUT
        clrf 76
        bcf 3,0
        rlf 66,W
        movwf 61
        rlf 67,W
        movwf 60
        rlf 68,W
        movwf 59
        rlf 69,W
        movwf 58
        rlf 76,F
        bcf 3,0
        rlf 61,F
        rlf 60,F
        rlf 59,F
        rlf 58,F
        rlf 76,F
        movf 66,W
        addwf 61,F
        movf 67,W
        btfsc 3,0
        incfsz 67,W
        addwf 60,F
        movf 68,W
        btfsc 3,0
        incfsz 68,W
        addwf 59,F
        movf 69,W
        btfsc 3,0
        incfsz 69,W
        addwf 58,F
        btfsc 3,0
        incfsz 76,F
        bcf 3,0
        rlf 61,F
        rlf 60,F
        rlf 59,F
        rlf 58,F
        rlf 76,F
        movf 76,W
        addlw 48
        call CH@SND
        movf 61,W
        movwf 66
        movf 60,W
        movwf 67
        movf 59,W
        movwf 68
        movf 58,W
        movwf 69
        decfsz 75,F
        goto FL@OUT
        bcf 3,0
        goto I@NT
OUT@DEC32
        bcf 32,3
        movf 38,W
        skpz
        goto $ + 4
        bsf 32,3
        movlw 10
        movwf 38
O@D32L1
        movf 61,W
        movwf 43
        movf 60,W
        movwf 42
        movf 59,W
        movwf 41
        movf 58,W
        movwf 40
        clrf 37
O@D32L2
        clrf 51
        clrf 50
        clrf 49
        movlw 10
        movwf 48
        call L@DIV
        incf 37,F
        movf 37,W
        subwf 38,W
        btfss 3,Z
        goto O@D32L2
        movf 48,W
        btfss 3,Z
        bcf 32,3
        btfss 32,3
        goto O@D32SKP
        decfsz 38,W
        goto O@D32L3
O@D32SKP
        movf 48,W
        addlw 48
        call CH@SND
O@D32L3
        decfsz 38,F
        goto O@D32L1
        goto I@NT
SB@STROUT
        movwf 48
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 48,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 48,F
        decf 37,F
        goto SB@STROUTLP
PRINT
        movwf 53
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 53,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 41
        movlw 128
        call DLUS@W
        movlw 51
        movwf 52
        call PR@LP
        movlw 19
        movwf 41
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 52
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 53,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 52
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 41
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
        movf 52,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 52,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 53,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 35,W
        movwf 40
        movf 39,W
        movwf 41
        clrf 44
        clrf 45
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 44,F
        skpc
        addwf 45,F
        skpc
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        incfsz 44,W
        goto $ - 16
        incfsz 45,W
        goto $ - 17
        movlw 100
        movwf 44
        clrf 45
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
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 52
        rlf 52,F
        rlf 52,F
        rlf 52,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 59
        movf 30,W
        movwf 58
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 45
DLY@W
        movwf 44
DLY@P
        movlw 255
        addwf 44,F
        skpc
        addwf 45,F
        skpc
        goto I@NT
        movlw 3
        movwf 41
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 41
DLUS@W
        addlw 244
        movwf 40
        comf 41,F
        movlw 254
        skpc
        goto $ + 4
        addwf 40,F
        skpnc
        goto $ - 2
        addwf 40,F
        nop
        incfsz 41,F
        goto $ - 6
        nop
        btfsc 40,0
        goto $ + 1
        btfsc 40,0
        goto $ + 1
        return
L@DIV
L@MOD
        movf 43,W
        xorwf 51,W
        andlw 128
        movwf 53
        btfss 43,7
        goto DIVS@32X32SKIP1
        comf 40,F
        comf 41,F
        comf 42,F
        comf 43,F
        incf 40,F
        btfsc 3,2
        incf 41,F
        btfsc 3,2
        incf 42,F
        btfsc 3,2
        incf 43,F
DIVS@32X32SKIP1
        btfss 51,7
        goto DIVS@32X32SKIP2
        comf 48,F
        comf 49,F
        comf 50,F
        comf 51,F
        incf 48,F
        btfsc 3,2
        incf 49,F
        btfsc 3,2
        incf 50,F
        btfsc 3,2
        incf 51,F
DIVS@32X32SKIP2
        clrf 44
        clrf 45
        clrf 46
        clrf 47
        clrf 62
        clrf 63
        clrf 64
        clrf 65
        movf 51,W
        iorwf 50,W
        iorwf 49,W
        iorwf 48,W
        bz DIVS@32X32SKIP5
        movlw 32
        movwf 52
DIVS@32X32LOOP
        bcf 3,0
        rlf 40,F
        rlf 41,F
        rlf 42,F
        rlf 43,F
        rlf 62,F
        rlf 63,F
        rlf 64,F
        rlf 65,F
        movf 51,W
        subwf 65,W
        bnz DIVS@32X32SKIP3
        movf 50,W
        subwf 64,W
        bnz DIVS@32X32SKIP3
        movf 49,W
        subwf 63,W
        bnz DIVS@32X32SKIP3
        movf 48,W
        subwf 62,W
DIVS@32X32SKIP3
        bnc DIVS@32X32SKIP4
        movf 48,W
        subwf 62,F
        movf 49,W
        btfss 3,0
        incfsz 49,W
        subwf 63,F
        movf 50,W
        btfss 3,0
        incfsz 50,W
        subwf 64,F
        movf 51,W
        btfss 3,0
        incfsz 51,W
        subwf 65,F
        bsf 3,0
DIVS@32X32SKIP4
        rlf 44,F
        rlf 45,F
        rlf 46,F
        rlf 47,F
        decfsz 52,F
        goto DIVS@32X32LOOP
DIVS@32X32SKIP5
        btfss 53,7
        goto DIVS@32X32EXIT
        comf 44,F
        comf 45,F
        comf 46,F
        comf 47,F
        incf 44,F
        btfsc 3,2
        incf 45,F
        btfsc 3,2
        incf 46,F
        btfsc 3,2
        incf 47,F
DIVS@32X32EXIT
        movf 62,W
        movwf 48
        movf 63,W
        movwf 49
        movf 64,W
        movwf 50
        movf 65,W
        movwf 51
        movf 44,W
        movwf 40
        movf 45,W
        movwf 41
        movf 46,W
        movwf 42
        movf 47,W
        movwf 43
        goto I@NT
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
TALTB@32
        movf 67,W
        xorwf 71,W
        movwf 79
        btfsc 79,7
        goto TALTB@32O
        btfsc 67,7
        goto TALTB@32N
TALTB@32P
        movf 66,W
        subwf 70,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 67,W
        subwf 71,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 68,W
        subwf 72,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 69,W
        subwf 73,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        retlw 0
TALTB@32N
        movf 70,W
        subwf 66,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 71,W
        subwf 67,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 72,W
        subwf 68,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        movf 73,W
        subwf 69,W
        btfss 3,0
        retlw 0
        btfss 3,2
        retlw 1
        retlw 0
TALTB@32O
        btfss 71,7
        retlw 1
        retlw 0
FPS@32
        movlw 128
        xorwf 71,F
FPA@32
        movf 70,W
        subwf 66,W
        movwf 75
        btfsc 3,0
        goto FPA@L3
        comf 75,F
        incf 75,F
        movf 66,W
        movwf 78
        movf 70,W
        movwf 66
        movf 78,W
        movwf 70
        movf 67,W
        movwf 78
        movf 71,W
        movwf 67
        movf 78,W
        movwf 71
        movf 68,W
        movwf 78
        movf 72,W
        movwf 68
        movf 78,W
        movwf 72
        movf 69,W
        movwf 78
        movf 73,W
        movwf 69
        movf 78,W
        movwf 73
FPA@L3
        movlw 26
        subwf 75,W
        btfsc 3,0
        goto I@NT
        movf 70,F
        btfsc 3,2
        goto I@NT
        clrf 62
        movf 67,W
        movwf 78
        xorwf 71,W
        movwf 80
        bsf 67,7
        bsf 71,7
FPA@L8
        movlw 8
        subwf 75,F
        btfss 3,0
        goto FPA@L9
        movf 73,W
        movwf 62
        movf 72,W
        movwf 73
        movf 71,W
        movwf 72
        clrf 71
        goto FPA@L8
FPA@L9
        addwf 75,F
        btfsc 3,2
        goto FPA@L15
FPA@L14
        bcf 3,0
        rrf 71,F
        rrf 72,F
        rrf 73,F
        rrf 62,F
        decf 75,F
        movf 75,F
        btfss 3,2
        goto FPA@L14
FPA@L15
        btfss 80,7
        goto FPA@L17
        movf 73,W
        subwf 69,F
        movf 72,W
        btfss 3,0
        incfsz 72,W
        subwf 68,F
        movf 71,W
        btfss 3,0
        incfsz 71,W
        subwf 67,F
        btfsc 3,0
        goto FPA@L19
        comf 67,F
        comf 68,F
        comf 69,F
        incfsz 69,F
        goto $ + 4
        incf 68,F
        btfsc 3,2
        incf 67,F
        movlw 128
        xorwf 78,F
FPA@L19
        comf 62,F
        incf 62,F
        btfsc 3,2
        goto FPA@L21
        decf 69,F
        incfsz 69,W
        goto $ + 5
        decf 68,F
        incf 68,W
        btfsc 3,2
        decf 67,F
FPA@L21
        movlw 4
        movwf 75
FPA@L22
        movf 67,F
        btfss 3,2
        goto FPA@L23
        movf 68,W
        movwf 67
        movf 69,W
        movwf 68
        movf 62,W
        movwf 69
        clrf 62
        movlw 8
        subwf 66,F
        btfss 3,0
        goto FPA@RES0
        decf 75,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L22
FPA@L23
        btfsc 67,7
        goto FPA@L29
        bcf 3,0
        rlf 62,F
        rlf 69,F
        rlf 68,F
        rlf 67,F
        decf 66,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L23
FPA@L29
        btfss 77,6
        goto FPA@L35
        btfss 62,7
        goto FPA@L35
        clrf 62
        goto FPA@INCREMENT_IT
FPA@L35
        goto FPA@L50
FPA@L17
        movf 73,W
        addwf 69,F
        movf 72,W
        btfsc 3,0
        incfsz 72,W
        addwf 68,F
        movf 71,W
        btfsc 3,0
        incfsz 71,W
        addwf 67,F
        btfss 3,0
        goto FPA@L40
FPA@ADJUST_RIGHT
        rrf 67,F
        rrf 68,F
        rrf 69,F
        rrf 62,F
        incf 66,F
        btfsc 3,2
        goto FPA@OVERFLOW
FPA@L40
        btfss 77,6
        goto FPA@L50
        btfss 62,7
        goto FPA@L50
FPA@INCREMENT_IT
        incfsz 69,F
        goto FPA@L50
        incfsz 68,F
        goto FPA@L50
        incfsz 67,F
        goto FPA@L50
        bsf 3,0
        bcf 66,0
        goto FPA@ADJUST_RIGHT
FPA@L50
        goto FPA@SET_SIGN
FPA@RES0
        clrf 66
        goto FPA@MANTISSA
FPA@OVERFLOW
        bsf 77,5
        movlw 255
        movwf 66
FPA@MANTISSA
        clrf 69
        clrf 68
        movlw 128
        movwf 67
FPA@SET_SIGN
        btfsc 78,7
        goto FPA@L52
        bcf 67,7
FPA@L52
        goto I@NT
FPD@32
        movf 67,W
        movwf 64
        xorwf 71,W
        movwf 80
        movf 70,F
        btfsc 3,2
        goto FPD@DIV0
        movf 66,F
        btfsc 3,2
        goto FPD@RES0
        movf 70,W
        subwf 66,F
        movlw 127
        btfsc 3,0
        goto FPD@L7
        addwf 66,F
        btfss 3,0
        goto FPD@UNDERFLOW
        goto FPD@L12
FPD@L7
        addwf 66,F
        btfsc 3,0
        goto FPD@OVERFLOW
FPD@L12
        movf 69,W
        movwf 62
        movf 68,W
        movwf 63
        bsf 64,7
        bsf 71,7
        movlw 24
        movwf 78
        clrf 69
        clrf 68
        clrf 67
        goto FPD@START
FPD@LOOP
        btfsc 3,0
        goto FPD@SUBTRACT
FPD@START
        movf 73,W
        subwf 62,W
        movf 72,W
        btfss 3,0
        incfsz 72,W
        subwf 63,W
        movf 71,W
        btfss 3,0
        incfsz 71,W
        subwf 64,W
        btfss 3,0
        goto FPD@SKIP_SUB
FPD@SUBTRACT
        movf 73,W
        subwf 62,F
        movf 72,W
        btfss 3,0
        incfsz 72,W
        subwf 63,F
        movf 71,W
        btfss 3,0
        incfsz 71,W
        subwf 64,F
        bsf 3,0
FPD@SKIP_SUB
        rlf 69,F
        rlf 68,F
        rlf 67,F
        rlf 62,F
        rlf 63,F
        rlf 64,F
        decfsz 78,F
        goto FPD@LOOP
        btfsc 67,7
        goto FPD@L20
        movf 66,F
        btfsc 3,2
        goto FPD@UNDERFLOW
        rrf 80,F
        decf 66,F
        incf 78,F
        rlf 80,F
        goto FPD@LOOP
FPD@L20
        btfss 77,6
        goto FPD@L36
        btfsc 3,0
        goto FPD@ADD_1
        movf 73,W
        subwf 62,F
        movf 72,W
        btfss 3,0
        incfsz 72,W
        subwf 63,F
        movf 71,W
        btfss 3,0
        incfsz 71,W
        subwf 64,F
        btfss 3,0
        goto FPD@L36
FPD@ADD_1
        incfsz 69,F
        goto FPD@L36
        incfsz 68,F
        goto FPD@L36
        incfsz 67,F
        goto FPD@L36
        rrf 67,F
        rrf 68,F
        rrf 69,F
        incf 66,F
        btfsc 3,2
        goto FPD@OVERFLOW
FPD@L36
        goto FPD@SET_SIGN
FPD@DIV0
        bsf 77,3
        goto FPD@SATURATE
FPD@UNDERFLOW
        bsf 77,2
FPD@RES0
        clrf 66
        goto FPD@MANTISSA
FPD@OVERFLOW
        bsf 77,1
FPD@SATURATE
        movlw 255
        movwf 66
FPD@MANTISSA
        clrf 69
        clrf 68
        movlw 128
        movwf 67
FPD@SET_SIGN
        btfsc 80,7
        goto FPD@L38
        bcf 67,7
FPD@L38
        goto I@NT
INT08@TOFL32
        movwf 66
        clrf 67
INT16@TOFL32
        clrf 68
        clrf 69
INT32@TOFL32
        movlw 150
        movwf 78
        bcf 80,7
        btfss 69,7
        goto IF@L5
        comf 69,F
        comf 68,F
        comf 67,F
        comf 66,F
        incfsz 66,F
        goto IF@L4
        incfsz 67,F
        goto IF@L4
        incf 68,F
        btfsc 3,2
        incf 69,F
IF@L4
        bsf 80,7
IF@L5
        movf 69,F
        btfsc 3,2
        goto IF@L7
        btfss 77,6
        goto IF@L17
        btfss 69,7
        goto IF@L17
        incfsz 67,F
        goto IF@L17
        incfsz 68,F
        goto IF@L17
        incfsz 69,F
        goto IF@L17
        bsf 3,0
        rrf 69,F
        rrf 68,F
        rrf 67,F
        incf 78,F
IF@L17
        movlw 8
        addwf 78,F
        movf 67,W
        movwf 66
        movf 68,W
        movwf 67
        movf 69,W
        movwf 68
        goto IF@L18
IF@L7
        movf 68,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 78,F
        movf 67,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 78,F
        movf 66,W
        btfss 3,2
        goto IF@L22
        movf 69,W
        movwf 78
        goto IF@EXIT
IF@L22
        clrf 66
IF@L20
        movwf 68
        movf 66,W
        movwf 67
        clrf 66
IF@L18
        btfsc 68,7
        goto IF@L24
        bcf 3,0
        rlf 66,F
        rlf 67,F
        rlf 68,F
        decf 78,F
        goto IF@L18
IF@L24
        btfss 80,7
        bcf 68,7
IF@EXIT
        movf 66,W
        movwf 69
        movf 78,W
        movwf 66
        movf 68,W
        movwf 78
        movf 67,W
        movwf 68
        movf 78,W
        movwf 67
        goto I@NT
GET@ARRAY
        movwf 52
GET@ARRAYW
        movf 36,W
        movwf 53
        movf 52,W
        addwf 36,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 51
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        movlw 64
        movwf 77
        clrf 32
F2_SOF equ $ ; FUEL SAFETY.PRP
F2_EOF equ $ ; FUEL SAFETY.PRP
F1_SOF equ $ ; FUEL SAFETY.BAS
F1_000020 equ $ ; IN [FUEL SAFETY.BAS] CLS
        f@call LCD@CLS
F1_000024 equ $ ; IN [FUEL SAFETY.BAS] INPUT BIKE_KEY : OUTPUT BUZZ
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,1
        bcf TRISC,4
F1_000025 equ $ ; IN [FUEL SAFETY.BAS] PORTC = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000032 equ $ ; IN [FUEL SAFETY.BAS] CLEAR
        movf _FP_FLAGS,W
        movwf 32
        movlw 33
        movwf FSR
        movlw 97
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
        movf 32,W
        movwf _FP_FLAGS
        clrf 32
F1_000034 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 1,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000035 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000036 equ $ ; IN [FUEL SAFETY.BAS] CLS
        f@call LCD@CLS
F1_000037 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 1,1, "CONTACTING GSM.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000038 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
GSM_init
F1_000040 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000041 equ $ ; IN [FUEL SAFETY.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000042 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000043 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000044 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000045 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000046 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["AT+CNMI=0,2,0,0,0", 13, 10]
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
        movlw 48
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
F1_000047 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000048 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 2,1, "GSM OK.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000049 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000050 equ $ ; IN [FUEL SAFETY.BAS] CLS
        f@call LCD@CLS
F1_000052 equ $ ; IN [FUEL SAFETY.BAS] STR NUMBER = "01966535856"
        movlw 48
        movwf number#0
        movlw 49
        movwf number#1
        movlw 57
        movwf number#2
        movlw 54
        movwf number#3
        movwf number#4
        movlw 53
        movwf number#5
        movlw 51
        movwf number#6
        movlw 53
        movwf number#7
        movlw 56
        movwf number#8
        movlw 53
        movwf number#9
        movlw 54
        movwf number#10
main
F1_000055 equ $ ; IN [FUEL SAFETY.BAS] BUZZ = 0
        bcf PORTC,4
F1_000056 equ $ ; IN [FUEL SAFETY.BAS] ADC = ADIN 0
        movlw 0
        f@call RD@AD
        movwf adc
F1_000057 equ $ ; IN [FUEL SAFETY.BAS] IF ADC < 30 THEN ADC = 0
        movlw 30
        subwf adc,W
        set@page BC@LL3
        btfsc STATUS,0
        goto BC@LL3
        clrf adc
BC@LL3
F1_000058 equ $ ; IN [FUEL SAFETY.BAS] IF ADC = 0 OR BIKE_KEY = 1 THEN FLAG = 0
        movlw 1
        movf adc,F
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc PORTC,1
        movlw 1
        iorwf SP#P9,F
        set@page BC@LL5
        btfsc STATUS,2
        goto BC@LL5
        bcf _B#VR1,0
BC@LL5
F1_000059 equ $ ; IN [FUEL SAFETY.BAS] IF FLAG = 0 THEN OLD_OIL = (ADC / 10) - 0.2 : FLAG = 1
        set@page BC@LL7
        btfsc _B#VR1,0
        goto BC@LL7
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 32
        movwf PP_BARGH
        movlw 130
        movwf PP_BARG
        movf adc,W
        f@call INT08@TOFL32
        f@call FPD@32
        movf PP_AARGHHH,W
        movwf PP7HHH
        movf PP_AARGHH,W
        movwf PP7HH
        movf PP_AARGH,W
        movwf PP7H
        movf PP_AARG,W
        movwf PP7
        movlw 205
        movwf PP_BARGHHH
        movlw 204
        movwf PP_BARGHH
        movlw 76
        movwf PP_BARGH
        movlw 124
        movwf PP_BARG
        movf PP7HHH,W
        movwf PP_AARGHHH
        movf PP7HH,W
        movwf PP_AARGHH
        movf PP7H,W
        movwf PP_AARGH
        movf PP7,W
        movwf PP_AARG
        f@call FPS@32
        movf PP_AARGHHH,W
        movwf old_oilHHH
        movf PP_AARGHH,W
        movwf old_oilHH
        movf PP_AARGH,W
        movwf old_oilH
        movf PP_AARG,W
        movwf old_oil
        bsf _B#VR1,0
BC@LL7
F1_000060 equ $ ; IN [FUEL SAFETY.BAS] CURRENT_OIL = ADC / 10
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 32
        movwf PP_BARGH
        movlw 130
        movwf PP_BARG
        movf adc,W
        f@call INT08@TOFL32
        f@call FPD@32
        movf PP_AARGHHH,W
        movwf current_oilHHH
        movf PP_AARGHH,W
        movwf current_oilHH
        movf PP_AARGH,W
        movwf current_oilH
        movf PP_AARG,W
        movwf current_oil
F1_000061 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 1,1, "FUEL THEFT ALARM"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000062 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 2,1, "OIL: ", DEC1 CURRENT_OIL, " LITRE  "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movf current_oilHHH,W
        movwf PP7HHH
        movf current_oilHH,W
        movwf PP7HH
        movf current_oilH,W
        movwf PP7H
        movf current_oil,W
        movwf PP7
        movlw 1
        f@call OUT@FLOAT
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000063 equ $ ; IN [FUEL SAFETY.BAS] IF BIKE_KEY = 0 AND CURRENT_OIL < OLD_OIL THEN SEND_SMS
        movlw 1
        btfsc PORTC,1
        movlw 0
        movwf SP#P9
        movf current_oilHHH,W
        movwf PP_AARGHHH
        movf current_oilHH,W
        movwf PP_AARGHH
        movf current_oilH,W
        movwf PP_AARGH
        movf current_oil,W
        movwf PP_AARG
        movf old_oilHHH,W
        movwf PP_BARGHHH
        movf old_oilHH,W
        movwf PP_BARGHH
        movf old_oilH,W
        movwf PP_BARGH
        movf old_oil,W
        movwf PP_BARG
        f@call TALTB@32
        andwf SP#P9,F
        set@page BC@LL9
        btfsc STATUS,2
        goto BC@LL9
        F@JUMP Send_SMS
BC@LL9
F1_000064 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F1_000065 equ $ ; IN [FUEL SAFETY.BAS] GOTO MAIN
        F@JUMP main
Send_SMS
F1_000068 equ $ ; IN [FUEL SAFETY.BAS] BUZZ = 1
        bsf PORTC,4
F1_000069 equ $ ; IN [FUEL SAFETY.BAS] CLS
        f@call LCD@CLS
F1_000070 equ $ ; IN [FUEL SAFETY.BAS] PRINT AT 1,1,"SENDING SMS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000071 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000072 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000073 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["AT+CMGS=",34, STR NUMBER, 34,13,10]
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
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 81
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000074 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000075 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["SOMEONE STOLEN YOUR BIKE FUEL.", 13]
        movlw 83
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 109
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 121
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
        movlw 105
        f@call HRSOUT
        movlw 107
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 102
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
F1_000076 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT["CURRENT FUEL: ", DEC1 CURRENT_OIL, " LITRE"]
        movlw 67
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
        movlw 102
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movf current_oilHHH,W
        movwf PP7HHH
        movf current_oilHH,W
        movwf PP7HH
        movf current_oilH,W
        movwf PP7H
        movf current_oil,W
        movwf PP7
        movlw 1
        f@call OUT@FLOAT
        movlw 32
        f@call HRSOUT
        movlw 76
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
F1_000077 equ $ ; IN [FUEL SAFETY.BAS] HSEROUT[$1A, 13, 10]
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000078 equ $ ; IN [FUEL SAFETY.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000079 equ $ ; IN [FUEL SAFETY.BAS] BUZZ = 0
        bcf PORTC,4
F1_000080 equ $ ; IN [FUEL SAFETY.BAS] CLS
        f@call LCD@CLS
F1_000081 equ $ ; IN [FUEL SAFETY.BAS] GOTO MAIN
        F@JUMP main
F1_EOF equ $ ; FUEL SAFETY.BAS
PB@LB13
        F@JUMP PB@LB13
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,0
STR@LB2
        de 67,111,110,116,97,99,116,105,110,103,32,71,83,77,46,46,0
STR@LB3
        de 71,83,77,32,79,75,46,46,0
STR@LB4
        de 70,117,101,108,32,84,104,101,102,116,32,65,108,97,114,109,0
STR@LB5
        de 32,76,105,116,114,101,32,32,0
STR@LB6
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
