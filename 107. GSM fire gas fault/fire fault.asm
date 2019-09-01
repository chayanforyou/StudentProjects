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
#define LCD#LINES 4
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
SP#P9 = 55
_B#VR1 = 56
gas = 57
sms_c = 58
contact = 59
variable contact#0=59,contact#1=60,contact#2=61,contact#3=62
variable contact#4=63,contact#5=64,contact#6=65,contact#7=66
variable contact#8=67,contact#9=68,contact#10=69
contact1 = 70
variable contact1#0=70,contact1#1=71,contact1#2=72,contact1#3=73
variable contact1#4=74,contact1#5=75,contact1#6=76,contact1#7=77
variable contact1#8=78,contact1#9=79,contact1#10=80
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define buzz PORTC,4
#define motor PORTC,5
#define fire PORTC,1
#define sms_f _B#VR1,0
#define fire_f _B#VR1,1
#define __XTAL 20
#define __HSERIAL_BAUD 49664
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __LCD_LINES 4
HSERIAL_SPBRG = 10
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 115200
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 51
        clrf 52
        rlf 52,F
        movlw 0
        subwf 52,W
        movlw 128
        skpnz
        subwf 51,W
        skpc
        goto FA@EXT
        btfsc 48,7
        goto FA@EXT
        movlw 32
        addwf 51,F
FA@EXT
        movf 51,W
        movwf 4
        return
T@GTB
        clrf 42
T@GTW
        clrf 44
T@GT
        movwf 43
        movlw 1
T@ST
        movwf 40
        movf 44,W
        subwf 42,W
        skpz
        goto $ + 3
        movf 43,W
        subwf 41,W
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
        movwf 42
        movlw 48
        goto DLUS@W
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
        clrf 38
OUT@DECC
        movwf 45
        clrf 46
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
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
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
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
        movwf 45
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 45,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 45,F
        decf 37,F
        goto SB@STROUTLP
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
        movf 35,W
        movwf 41
        movf 39,W
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
        movwf 47
        rlf 47,F
        rlf 47,F
        rlf 47,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 54
        movf 30,W
        movwf 53
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
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
GET@ARRAY
        movwf 47
GET@ARRAYW
        movf 36,W
        movwf 48
        movf 47,W
        addwf 36,W
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
F2_SOF equ $ ; FIRE FAULT.PRP
F2_EOF equ $ ; FIRE FAULT.PRP
F1_SOF equ $ ; FIRE FAULT.BAS
F1_000021 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
F1_000026 equ $ ; IN [FIRE FAULT.BAS] OUTPUT BUZZ : OUTPUT MOTOR
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf TRISC,5
F1_000027 equ $ ; IN [FIRE FAULT.BAS] INPUT FIRE : CLEAR PORTC
        bsf TRISC,1
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000036 equ $ ; IN [FIRE FAULT.BAS] STR CONTACT = "01710168887"
        movlw 48
        movwf contact#0
        movlw 49
        movwf contact#1
        movlw 55
        movwf contact#2
        movlw 49
        movwf contact#3
        movlw 48
        movwf contact#4
        movlw 49
        movwf contact#5
        movlw 54
        movwf contact#6
        movlw 56
        movwf contact#7
        movwf contact#8
        movwf contact#9
        movlw 55
        movwf contact#10
F1_000037 equ $ ; IN [FIRE FAULT.BAS] STR CONTACT1 = "01913897271"
        movlw 48
        movwf contact1#0
        movlw 49
        movwf contact1#1
        movlw 57
        movwf contact1#2
        movlw 49
        movwf contact1#3
        movlw 51
        movwf contact1#4
        movlw 56
        movwf contact1#5
        movlw 57
        movwf contact1#6
        movlw 55
        movwf contact1#7
        movlw 50
        movwf contact1#8
        movlw 55
        movwf contact1#9
        movlw 49
        movwf contact1#10
GSM_init
F1_000042 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
F1_000043 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 1,1, "CONTACTING GSM.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000044 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
check
F1_000046 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000047 equ $ ; IN [FIRE FAULT.BAS] HSERIN 1000, CHECK,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page check
        btfss STATUS,0
        goto check
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page check
        btfss STATUS,0
        goto check
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000048 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000049 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000050 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000051 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000052 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000053 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000054 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 2,1, "GSM OK."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000055 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000056 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
F1_000058 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 2,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000059 equ $ ; IN [FIRE FAULT.BAS] WHILE GAS > 58
BC@LL2
        movlw 59
        subwf gas,W
        set@page BC@LL3
        btfss STATUS,0
        goto BC@LL3
F1_000060 equ $ ; IN [FIRE FAULT.BAS] GAS = ADIN 0
        movlw 0
        f@call RD@AD
        movwf gas
F1_000061 equ $ ; IN [FIRE FAULT.BAS] WEND
        F@JUMP BC@LL2
BC@LL3
F1_000062 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
main
F1_000065 equ $ ; IN [FIRE FAULT.BAS] GAS = ADIN 0
        movlw 0
        f@call RD@AD
        movwf gas
F1_000066 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 1,3, "GAS: ", DEC3 GAS, " PPM"
        movlw 128
        movwf BPFH
        movlw 130
        f@call LCD@CRS
        movlw 71
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 115
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 3
        movwf GEN4H
        movf gas,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        movlw 80
        f@call PRINT
        f@call PRINT
        movlw 77
        f@call PRINT
F1_000067 equ $ ; IN [FIRE FAULT.BAS] IF GAS > 60 AND SMS_F = 1 THEN GOSUB SEND_SMS
        movf gas,W
        movwf PP0
        movlw 60
        f@call T@GTB
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL5
        btfsc STATUS,2
        goto BC@LL5
        f@call Send_SMS
BC@LL5
F1_000068 equ $ ; IN [FIRE FAULT.BAS] IF GAS < 50 THEN SMS_F = 1
        movlw 50
        subwf gas,W
        set@page BC@LL7
        btfsc STATUS,0
        goto BC@LL7
        bsf _B#VR1,0
BC@LL7
F1_000070 equ $ ; IN [FIRE FAULT.BAS] IF FIRE = 0 THEN
        set@page BC@LL9
        btfsc PORTC,1
        goto BC@LL9
F1_000071 equ $ ; IN [FIRE FAULT.BAS] FIRE_F = 1
        bsf _B#VR1,1
F1_000072 equ $ ; IN [FIRE FAULT.BAS] IF SMS_F = 1 THEN GOSUB SEND_SMS
        set@page BC@LL11
        btfss _B#VR1,0
        goto BC@LL11
        f@call Send_SMS
BC@LL11
        F@JUMP BC@LL12
BC@LL9
F1_000073 equ $ ; IN [FIRE FAULT.BAS] ELSE
F1_000074 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 2,2, "  - NO FIRE - "
        movlw 128
        movwf BPFH
        movlw 193
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000075 equ $ ; IN [FIRE FAULT.BAS] SMS_F = 1 : FIRE_F = 0
        bsf _B#VR1,0
        bcf _B#VR1,1
F1_000076 equ $ ; IN [FIRE FAULT.BAS] ENDIF
BC@LL12
F1_000077 equ $ ; IN [FIRE FAULT.BAS] GOTO MAIN
        F@JUMP main
Send_SMS
F1_000080 equ $ ; IN [FIRE FAULT.BAS] SMS_F = 0
        bcf _B#VR1,0
F1_000081 equ $ ; IN [FIRE FAULT.BAS] BUZZ = 1
        bsf PORTC,4
F1_000082 equ $ ; IN [FIRE FAULT.BAS] MOTOR = 1
        bsf PORTC,5
F1_000083 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
F1_000084 equ $ ; IN [FIRE FAULT.BAS] PRINT AT 1,1,"SENDING SMS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000085 equ $ ; IN [FIRE FAULT.BAS] IF FIRE_F = 1 THEN PRINT AT 2,1,"FIRE DETECTED."
        set@page BC@LL14
        btfss _B#VR1,1
        goto BC@LL14
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
BC@LL14
F1_000086 equ $ ; IN [FIRE FAULT.BAS] IF GAS > 60 THEN PRINT AT 2,1,"GAS OUT OF RANGE"
        movlw 61
        subwf gas,W
        set@page BC@LL16
        btfss STATUS,0
        goto BC@LL16
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
BC@LL16
F1_000087 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000088 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000089 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT+CMGS="]
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
F1_000090 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000091 equ $ ; IN [FIRE FAULT.BAS] HSEROUT[34, STR CONTACT, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 59
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000092 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000093 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["YOU HAVE A WARNING FROM WUB, DHAKA.", 13]
        movlw 89
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 119
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 102
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 109
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 87
        f@call HRSOUT
        movlw 85
        f@call HRSOUT
        movlw 66
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 107
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
F1_000094 equ $ ; IN [FIRE FAULT.BAS] IF FIRE_F = 1 THEN
        set@page BC@LL20
        btfss _B#VR1,1
        goto BC@LL20
F1_000095 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["FIRE DETECTED.", 13]
        movlw 70
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        F@JUMP BC@LL21
BC@LL20
F1_000096 equ $ ; IN [FIRE FAULT.BAS] ELSE
F1_000097 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["NO FIRE DETECTED.", 13]
        movlw 78
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
F1_000098 equ $ ; IN [FIRE FAULT.BAS] ENDIF
BC@LL21
F1_000099 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["GAS: ", DEC GAS, " PPM"]
        movlw 71
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movf gas,W
        f@call OUT@DECB
        movlw 32
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
F1_000100 equ $ ; IN [FIRE FAULT.BAS] HSEROUT[$1A, 13, 10]
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000101 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000103 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["AT+CMGS="]
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
F1_000104 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000105 equ $ ; IN [FIRE FAULT.BAS] HSEROUT[34, STR CONTACT1, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 70
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000106 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000107 equ $ ; IN [FIRE FAULT.BAS] IF FIRE_F = 1 THEN
        set@page BC@LL25
        btfss _B#VR1,1
        goto BC@LL25
F1_000108 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["FIRE DETECTED.", 13]
        movlw 70
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        F@JUMP BC@LL26
BC@LL25
F1_000109 equ $ ; IN [FIRE FAULT.BAS] ELSE
F1_000110 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["NO FIRE DETECTED.", 13]
        movlw 78
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
F1_000111 equ $ ; IN [FIRE FAULT.BAS] ENDIF
BC@LL26
F1_000112 equ $ ; IN [FIRE FAULT.BAS] HSEROUT["GAS: ", DEC GAS, " PPM"]
        movlw 71
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movf gas,W
        f@call OUT@DECB
        movlw 32
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
F1_000113 equ $ ; IN [FIRE FAULT.BAS] HSEROUT[" AT WUB, PLOT - 13/A, RD NO. 5, DHAKA 1205.", 13]
        movlw 32
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 87
        f@call HRSOUT
        movlw 85
        f@call HRSOUT
        movlw 66
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 45
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 107
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 50
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
F1_000114 equ $ ; IN [FIRE FAULT.BAS] HSEROUT[$1A, 13, 10]
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000115 equ $ ; IN [FIRE FAULT.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000116 equ $ ; IN [FIRE FAULT.BAS] BUZZ = 0
        bcf PORTC,4
F1_000117 equ $ ; IN [FIRE FAULT.BAS] MOTOR = 0
        bcf PORTC,5
F1_000118 equ $ ; IN [FIRE FAULT.BAS] CLS
        f@call LCD@CLS
F1_000119 equ $ ; IN [FIRE FAULT.BAS] RETURN
        return
F1_EOF equ $ ; FIRE FAULT.BAS
PB@LB28
        F@JUMP PB@LB28
STR@LB1
        de 67,111,110,116,97,99,116,105,110,103,32,71,83,77,46,46,0
STR@LB2
        de 71,83,77,32,79,75,46,0
STR@LB3
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,0
STR@LB4
        de 32,32,45,32,78,111,32,70,105,114,101,32,45,32,0
STR@LB5
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,0
STR@LB6
        de 70,105,114,101,32,68,101,116,101,99,116,101,100,46,0
STR@LB7
        de 71,97,115,32,111,117,116,32,111,102,32,82,97,110,103,101,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end