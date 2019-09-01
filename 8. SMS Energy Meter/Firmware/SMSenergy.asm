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
#define XTAL 10
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
#define _SYSTEM_VARIABLE_COUNT 34
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
GPR = 40
PBP#VAR0 = 41
PP0 = 42
PP0H = 43
PP0HH = 44
PP0HHH = 45
PP1 = 46
PP1H = 47
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
PPZ = 60
PPZH = 61
PPZHH = 62
PPZHHH = 63
RPFH = 64
SP#P9 = 65
volt = 66
amp = 67
number = 68
variable number#0=68,number#1=69,number#2=70,number#3=71
variable number#4=72,number#5=73,number#6=74,number#7=75
variable number#8=76,number#9=77,number#10=78
msg = 79
msgH = 80
money = 81
moneyH = 82
_B#VR1 = 83
admin = 84
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define receive _B#VR1,0
#define low_m _B#VR1,1
#define dec_m PORTC,0
#define __XTAL 10
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
HSERIAL_SPBRG = 15
HSERIAL_TXSTA = 32
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
T@GT
        movwf 46
        movlw 1
        goto T@ST
T@LE
        movwf 46
        movlw 6
        goto T@ST
T@LT
        movwf 46
        movlw 4
T@ST
        movwf 40
        movf 47,W
        subwf 43,W
        skpz
        goto $ + 3
        movf 46,W
        subwf 42,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 40,W
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
        movwf 43
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
IN@DEC32
        clrf 48
        clrf 49
        clrf 50
        clrf 51
        bcf 40,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 40,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 46
        clrf 45
        clrf 44
        clrf 43
        movlw 10
        movwf 42
        call AL@MUL
        movf 46,W
        addwf 42,W
        movwf 48
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
        movf 45,W
        movwf 51
        clrw
        skpnc
        movlw 1
        addwf 51,F
        decf 38,F
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
        btfss 40,5
        goto $ + 12
        comf 48,F
        comf 49,F
        comf 50,F
        comf 51,F
        incf 48,F
        skpnz
        incf 49,F
        skpnz
        incf 50,F
        skpnz
        incf 51,F
        movf 48,W
        setc
        goto I@NT
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 47
        movlw 16
        call D@DIG
        movlw 3
        movwf 47
        movlw 232
        call D@DIG
        clrf 47
        movlw 100
        call D@DIG
        clrf 47
        movlw 10
        call D@DIG
        movf 48,W
        goto SEND@IT
D@DIG
        movwf 46
        movf 49,W
        movwf 43
        movf 48,W
        movwf 42
        call D@VD
        movf 42,W
SEND@IT
        movwf 42
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 42,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
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
        movwf 43
        movlw 128
        call DLUS@W
        movlw 51
        movwf 52
        call PR@LP
        movlw 19
        movwf 43
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
        movwf 43
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
        movwf 42
        movf 39,W
        movwf 43
        clrf 46
        clrf 47
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 46,F
        skpc
        addwf 47,F
        skpc
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        incfsz 46,W
        goto $ - 16
        incfsz 47,W
        goto $ - 17
        movlw 125
        movwf 46
        clrf 47
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
        movf 64,F
        skpnz
        goto HRSIN2
        decf 64,W
        skpnz
        goto HRSIN
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
        clrf 47
DLY@W
        movwf 46
DLY@P
        movlw 255
        addwf 46,F
        skpc
        addwf 47,F
        skpc
        goto I@NT
        movlw 3
        movwf 43
        movlw 228
        call DLUS@W
        goto DLY@P
DL@US
        clrf 43
DLUS@W
        addlw 246
        movwf 42
        comf 43,F
        skpc
        goto $ + 7
        movlw 254
        nop
        addwf 42,F
        skpnc
        goto $ - 3
        addwf 42,F
        nop
        incfsz 43,F
        goto $ - 8
        nop
        btfsc 42,0
        goto $ + 1
        btfsc 42,0
        goto $ + 1
        return
D@VD
        clrf 49
        clrf 48
D@VD2
        movlw 16
        movwf 52
        rlf 43,W
        rlf 48,F
        rlf 49,F
        movf 46,W
        subwf 48,F
        movf 47,W
        skpc
        incfsz 47,W
        subwf 49,F
        skpnc
        goto $ + 8
        movf 46,W
        addwf 48,F
        movf 47,W
        skpnc
        incfsz 47,W
        addwf 49,F
        bcf 3,0
        rlf 42,F
        rlf 43,F
        decfsz 52,F
        goto $ - 21
        movf 42,W
        return
AL@MUL
        movlw 32
        movwf 52
        clrf 60
        clrf 61
        clrf 62
        clrf 63
MLT32@LP
        clrc
        btfss 42,0
        goto MLT32@BR
        movf 48,W
        addwf 60,F
        movf 49,W
        skpnc
        incfsz 49,W
        addwf 61,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 62,F
        movf 51,W
        skpnc
        incfsz 51,W
        addwf 63,F
MLT32@BR
        rrf 63,F
        rrf 62,F
        rrf 61,F
        rrf 60,F
        rrf 45,F
        rrf 44,F
        rrf 43,F
        rrf 42,F
        decfsz 52,F
        goto MLT32@LP
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
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
        movlw 15
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
F1_000032 equ $ ; IN [ABRAR] INPUT DEC_M
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,0
F1_000034 equ $ ; IN [ABRAR] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
main
F1_000037 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000038 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000039 equ $ ; IN [ABRAR] MONEY = 0 : MSG = 0
        clrf moneyH
        clrf money
        clrf msgH
        clrf msg
F1_000040 equ $ ; IN [ABRAR] PRINT AT 2,1,"PLEASE WAIT..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000041 equ $ ; IN [ABRAR] GOSUB GSM_INIT
        f@call GSM_init
F1_000042 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000043 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
start
F1_000048 equ $ ; IN [ABRAR] PRINT AT 1,1,"BLN:", DEC4 MONEY, "TK  "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 66
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 58
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
F1_000049 equ $ ; IN [ABRAR] PRINT AT 2,1, "AC: 217V",
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000050 equ $ ; IN [ABRAR] PRINT AT 2,12,"45MA"
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 52
        f@call PRINT
        movlw 53
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 65
        f@call PRINT
F1_000051 equ $ ; IN [ABRAR] IF DEC_M = 1 THEN DEC MONEY
        set@page BC@LL2
        btfss PORTC,0
        goto BC@LL2
        decf money,F
        incf money,W
        btfsc STATUS,2
        decf moneyH,F
BC@LL2
F1_000052 equ $ ; IN [ABRAR] IF MONEY <= 0 THEN MONEY = 0
        set@page CP@LB3
        btfsc moneyH,7
        goto CP@LB3
        movf money,W
        iorwf moneyH,W
        set@page BC@LL4
        btfss STATUS,2
        goto BC@LL4
CP@LB3
        clrf moneyH
        clrf money
BC@LL4
F1_000053 equ $ ; IN [ABRAR] IF MONEY = 50 THEN LOW_M = 1
        movf money,W
        xorlw 50
        iorwf moneyH,W
        set@page BC@LL6
        btfss STATUS,2
        goto BC@LL6
        bsf _B#VR1,1
BC@LL6
F1_000054 equ $ ; IN [ABRAR] IF LOW_M = 1 AND MONEY < 50 THEN
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
        set@page BC@LL8
        btfsc STATUS,2
        goto BC@LL8
F1_000055 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000056 equ $ ; IN [ABRAR] LOW_M = 0
        bcf _B#VR1,1
F1_000057 equ $ ; IN [ABRAR] PRINT AT 1,1, "BALANCE TOO LOW!"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000058 equ $ ; IN [ABRAR] PRINT AT 2,1, "MONEY: ", DEC MONEY,"TK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
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
F1_000059 equ $ ; IN [ABRAR] ADMIN = 0
        clrf admin
F1_000060 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000061 equ $ ; IN [ABRAR] ADMIN = 1
        movlw 1
        movwf admin
F1_000062 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000063 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000064 equ $ ; IN [ABRAR] ENDIF
BC@LL8
F1_000065 equ $ ; IN [ABRAR] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000066 equ $ ; IN [ABRAR] IF RECEIVE = 1 THEN
        set@page BC@LL10
        btfss _B#VR1,0
        goto BC@LL10
F1_000067 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000068 equ $ ; IN [ABRAR] MONEY = MONEY + MSG
        movf msg,W
        addwf money,F
        movf msgH,W
        btfsc STATUS,0
        addlw 1
        addwf moneyH,F
F1_000069 equ $ ; IN [ABRAR] PRINT AT 1,1, "MONEY RECEIVE:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000070 equ $ ; IN [ABRAR] PRINT AT 2,1, DEC MSG, "TK "
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
F1_000071 equ $ ; IN [ABRAR] PRINT AT 2,7, "TOTAL:", DEC MONEY
        movlw 128
        movwf BPFH
        movlw 198
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
        clrf GEN4H
        movf moneyH,W
        movwf PP2H
        movf money,W
        movwf PP2
        f@call OUT@DEC
F1_000072 equ $ ; IN [ABRAR] ADMIN = 0
        clrf admin
F1_000073 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000074 equ $ ; IN [ABRAR] ADMIN = 1
        movlw 1
        movwf admin
F1_000075 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000076 equ $ ; IN [ABRAR] RECEIVE = 0
        bcf _B#VR1,0
F1_000077 equ $ ; IN [ABRAR] MSG = 0
        clrf msgH
        clrf msg
F1_000078 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000079 equ $ ; IN [ABRAR] ENDIF
BC@LL10
F1_000080 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
Send_SMS
F1_000083 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000084 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000085 equ $ ; IN [ABRAR] HSEROUT["AT+CMGS="]
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
F1_000086 equ $ ; IN [ABRAR] IF ADMIN = 0 THEN
        movf admin,F
        set@page BC@LL12
        btfss STATUS,2
        goto BC@LL12
F1_000087 equ $ ; IN [ABRAR] HSEROUT[34, STR NUMBER, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 68
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        F@JUMP BC@LL15
BC@LL12
F1_000088 equ $ ; IN [ABRAR] ELSE
F1_000089 equ $ ; IN [ABRAR] HSEROUT[34, "01833905966", 34,13,10]
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
F1_000090 equ $ ; IN [ABRAR] ENDIF
BC@LL15
F1_000091 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000092 equ $ ; IN [ABRAR] IF RECEIVE = 1 THEN
        set@page BC@LL17
        btfss _B#VR1,0
        goto BC@LL17
F1_000093 equ $ ; IN [ABRAR] HSEROUT["YOUR BALANCE IS REFILLED BY ", DEC MSG, "TK SUCCESSFULLY.", $1A, 13, 10]
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
        F@JUMP BC@LL18
BC@LL17
F1_000094 equ $ ; IN [ABRAR] ELSE
F1_000095 equ $ ; IN [ABRAR] HSEROUT["YOUR CURRENT BALANCE LESS THAN 50TK.", $1A, 13, 10]
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
F1_000096 equ $ ; IN [ABRAR] ENDIF
BC@LL18
F1_000097 equ $ ; IN [ABRAR] DELAYMS 6000
        movlw 23
        movwf PP1H
        movlw 112
        f@call DLY@W
F1_000098 equ $ ; IN [ABRAR] RETURN
        return
Receive_SMS
F1_000101 equ $ ; IN [ABRAR] HSERIN 1000, OVER,[WAIT("+88"), STR NUMBER, WAIT(13,10),DEC MSG]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB20
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB20
        btfss STATUS,2
        goto PB@LB20
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB20
        btfss STATUS,2
        goto PB@LB20
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB20
        btfss STATUS,2
        goto PB@LB20
        clrf PBP#VAR0
PB@LB23
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
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
PB@LB24
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB24
        btfss STATUS,2
        goto PB@LB24
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB24
        btfss STATUS,2
        goto PB@LB24
        clrf RPFH
        clrf GEN4H
        f@call IN@DEC32
        set@page over
        btfss STATUS,0
        goto over
        movwf msg
        movf PP2H,W
        movwf msgH
F1_000102 equ $ ; IN [ABRAR] IF MSG > 49 AND MSG <= 500 THEN
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
        set@page BC@LL25
        btfsc STATUS,2
        goto BC@LL25
F1_000103 equ $ ; IN [ABRAR] RECEIVE = 1
        bsf _B#VR1,0
F1_000104 equ $ ; IN [ABRAR] ENDIF
BC@LL25
over
F1_000106 equ $ ; IN [ABRAR] RETURN
        return
GSM_init
F1_000109 equ $ ; IN [ABRAR] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000110 equ $ ; IN [ABRAR] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB27
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB27
        btfss STATUS,2
        goto PB@LB27
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB27
        btfss STATUS,2
        goto PB@LB27
F1_000111 equ $ ; IN [ABRAR] HSEROUT["ATE0", 13, 10]
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
F1_000112 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000113 equ $ ; IN [ABRAR] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000114 equ $ ; IN [ABRAR] RETURN
        return
default_lcd
F1_000117 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000118 equ $ ; IN [ABRAR] PRINT AT 1,13,"50HZ"
        movlw 128
        movwf BPFH
        movlw 140
        f@call LCD@CRS
        movlw 53
        f@call PRINT
        movlw 48
        f@call PRINT
        movlw 72
        f@call PRINT
        movlw 122
        f@call PRINT
F1_000119 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
get_ACvolt
F1_000122 equ $ ; IN [ABRAR] VOLT = ADIN 0
        movlw 0
        f@call RD@AD
        movwf volt
F1_000124 equ $ ; IN [ABRAR] RETURN
        return
get_ACamp
F1_000127 equ $ ; IN [ABRAR] AMP = ADIN 1
        movlw 1
        f@call RD@AD
        movwf amp
F1_000129 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB28
        F@JUMP PB@LB28
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,46,0
STR@LB2
        de 65,67,58,32,50,49,55,118,0
STR@LB3
        de 66,97,108,97,110,99,101,32,116,111,111,32,108,111,119,33,0
STR@LB4
        de 77,111,110,101,121,58,32,0
STR@LB5
        de 77,111,110,101,121,32,114,101,99,101,105,118,101,58,0
STR@LB6
        de 84,111,116,97,108,58,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
