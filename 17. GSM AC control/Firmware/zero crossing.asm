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
#define LCD#LINES 2
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
PBP#VAR0 = 40
PBP#VAR1 = 41
PP0 = 42
PP0H = 43
PP1 = 44
PP1H = 45
PP2 = 46
PP2H = 47
PP3 = 48
PP3H = 49
PP4 = 50
PP5 = 51
PP6 = 52
PP6H = 53
PP7 = 54
PP7H = 55
SP#P9 = 56
number = 57
variable number#0=57,number#1=58,number#2=59,number#3=60
variable number#4=61,number#5=62,number#6=63,number#7=64
variable number#8=65,number#9=66,number#10=67
msg = 68
variable msg#0=68,msg#1=69,msg#2=70,msg#3=71
variable msg#4=72
speed = 73
_B#VR1 = 74
#define __LCD_DTPORT PORTB
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define L1_pin PORTC,2
#define L2_pin PORTC,3
#define L3_pin PORTC,4
#define F1_pin PORTC,5
#define flag _B#VR1,0
#define __XTAL 20
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_INTERFACE 4
#define __LCD_LINES 2
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
        movwf 52
        clrf 53
        rlf 53,F
        movlw 0
        subwf 53,W
        movlw 128
        skpnz
        subwf 52,W
        skpc
        goto FA@EXT
        btfsc 49,7
        goto FA@EXT
        movlw 32
        addwf 52,F
FA@EXT
        movf 52,W
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
        movwf 43
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 51
        movlw 254
        call CH@SND
        movf 51,W
        goto CH@SND
OUT@DECB
        clrf 38
OUT@DECC
        movwf 46
        clrf 47
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 45
        movlw 16
        call D@DIG
        movlw 3
        movwf 45
        movlw 232
        call D@DIG
        clrf 45
        movlw 100
        call D@DIG
        clrf 45
        movlw 10
        call D@DIG
        movf 46,W
        goto SEND@IT
D@DIG
        movwf 44
        movf 47,W
        movwf 43
        movf 46,W
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
        movwf 46
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 46,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 46,F
        decf 37,F
        goto SB@STROUTLP
PRINT
        movwf 49
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 49,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 43
        movlw 128
        call DLUS@W
        movlw 51
        movwf 48
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
        movwf 48
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 49,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 48
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
        movf 48,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 48,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 49,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 35,W
        movwf 42
        movf 39,W
        movwf 43
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
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        incfsz 44,W
        goto $ - 16
        incfsz 45,W
        goto $ - 17
        movlw 250
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
        movwf 43
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 43
DLUS@W
        addlw 252
        movwf 42
        comf 43,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 42,F
        skpnc
        goto $ - 3
        addwf 42,F
        nop
        incfsz 43,F
        goto $ - 8
        return
D@VD
        clrf 47
        clrf 46
D@VD2
        movlw 16
        movwf 48
        rlf 43,W
        rlf 46,F
        rlf 47,F
        movf 44,W
        subwf 46,F
        movf 45,W
        skpc
        incfsz 45,W
        subwf 47,F
        skpnc
        goto $ + 8
        movf 44,W
        addwf 46,F
        movf 45,W
        skpnc
        incfsz 45,W
        addwf 47,F
        bcf 3,0
        rlf 42,F
        rlf 43,F
        decfsz 48,F
        goto $ - 21
        movf 42,W
        return
M@PY
        movlw 16
        movwf 53
        clrf 43
        clrf 42
        rrf 49,F
        rrf 48,F
        skpc
        goto $ + 7
        movf 44,W
        addwf 42,F
        movf 45,W
        skpnc
        incfsz 45,W
        addwf 43,F
        rrf 43,F
        rrf 42,F
        rrf 47,F
        rrf 46,F
        decfsz 53,F
        goto $ - 15
        movf 46,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
GET@ARRAY
        movwf 48
GET@ARRAYW
        movf 36,W
        movwf 49
        movf 48,W
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
F2_SOF equ $ ; ZERO CROSSING.PRP
F2_EOF equ $ ; ZERO CROSSING.PRP
F1_SOF equ $ ; ZERO CROSSING.BAS
F1_000028 equ $ ; IN [ZERO CROSSING.BAS] OUTPUT L1_PIN : OUTPUT L2_PIN
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,2
        bcf TRISC,3
F1_000029 equ $ ; IN [ZERO CROSSING.BAS] OUTPUT L3_PIN : OUTPUT F1_PIN
        bcf TRISC,4
        bcf TRISC,5
F1_000036 equ $ ; IN [ZERO CROSSING.BAS] PORTC = 0 : CLEAR
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000038 equ $ ; IN [ZERO CROSSING.BAS] PRINT $FE,$40,1,2,20,9,2,20,8,0
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
F1_000039 equ $ ; IN [ZERO CROSSING.BAS] PRINT $FE,$48,0,17,10,4,10,17,0,0
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
F1_000041 equ $ ; IN [ZERO CROSSING.BAS] CLS
        f@call LCD@CLS
F1_000042 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000043 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,1, "WAIT FOR GSM..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
Gsm_init
F1_000046 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000047 equ $ ; IN [ZERO CROSSING.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
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
F1_000048 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000049 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000050 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000051 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000052 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000053 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000054 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT+CMGD=1,4", 13, 10]
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
        movlw 49
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 52
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000055 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000056 equ $ ; IN [ZERO CROSSING.BAS] CLS
        f@call LCD@CLS
F1_000058 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,1, "L1: "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 76
        f@call PRINT
        movlw 49
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000059 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,12, "L2: "
        movlw 128
        movwf BPFH
        movlw 139
        f@call LCD@CRS
        movlw 76
        f@call PRINT
        movlw 50
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000060 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,1, "L3: "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 76
        f@call PRINT
        movlw 51
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000061 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,9, "FAN: "
        movlw 128
        movwf BPFH
        movlw 200
        f@call LCD@CRS
        movlw 70
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
F1_000063 equ $ ; IN [ZERO CROSSING.BAS] FLAG = 0 : SPEED = 0
        bcf _B#VR1,0
        clrf speed
MAIN
F1_000066 equ $ ; IN [ZERO CROSSING.BAS] GOSUB RECEIVE_SMS
        f@call RECEIVE_SMS
F1_000067 equ $ ; IN [ZERO CROSSING.BAS] GOSUB REGULATE
        f@call regulate
F1_000068 equ $ ; IN [ZERO CROSSING.BAS] IF L1_PIN = 1 THEN
        set@page BC@LL3
        btfss PORTC,2
        goto BC@LL3
F1_000069 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,5, 0
        movlw 128
        movwf BPFH
        movlw 132
        f@call LCD@CRS
        movlw 0
        f@call PRINT
        F@JUMP BC@LL4
BC@LL3
F1_000070 equ $ ; IN [ZERO CROSSING.BAS] ELSE
F1_000071 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,5, 1
        movlw 128
        movwf BPFH
        movlw 132
        f@call LCD@CRS
        movlw 1
        f@call PRINT
F1_000072 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL4
F1_000073 equ $ ; IN [ZERO CROSSING.BAS] IF L2_PIN = 1 THEN
        set@page BC@LL6
        btfss PORTC,3
        goto BC@LL6
F1_000074 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,16, 0
        movlw 128
        movwf BPFH
        movlw 143
        f@call LCD@CRS
        movlw 0
        f@call PRINT
        F@JUMP BC@LL7
BC@LL6
F1_000075 equ $ ; IN [ZERO CROSSING.BAS] ELSE
F1_000076 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 1,16, 1
        movlw 128
        movwf BPFH
        movlw 143
        f@call LCD@CRS
        movlw 1
        f@call PRINT
F1_000077 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL7
F1_000078 equ $ ; IN [ZERO CROSSING.BAS] IF L3_PIN = 1 THEN
        set@page BC@LL9
        btfss PORTC,4
        goto BC@LL9
F1_000079 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,5, 0
        movlw 128
        movwf BPFH
        movlw 196
        f@call LCD@CRS
        movlw 0
        f@call PRINT
        F@JUMP BC@LL10
BC@LL9
F1_000080 equ $ ; IN [ZERO CROSSING.BAS] ELSE
F1_000081 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,5, 1
        movlw 128
        movwf BPFH
        movlw 196
        f@call LCD@CRS
        movlw 1
        f@call PRINT
F1_000082 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL10
F1_000083 equ $ ; IN [ZERO CROSSING.BAS] IF FLAG = 1 THEN
        set@page BC@LL12
        btfss _B#VR1,0
        goto BC@LL12
F1_000084 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,14, DEC SPEED, "%"
        movlw 128
        movwf BPFH
        movlw 205
        f@call LCD@CRS
        movf speed,W
        f@call OUT@DECB
        movlw 37
        f@call PRINT
        F@JUMP BC@LL13
BC@LL12
F1_000085 equ $ ; IN [ZERO CROSSING.BAS] ELSE
F1_000086 equ $ ; IN [ZERO CROSSING.BAS] PRINT AT 2,14, "OFF"
        movlw 128
        movwf BPFH
        movlw 205
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000087 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL13
F1_000088 equ $ ; IN [ZERO CROSSING.BAS] GOTO MAIN
        F@JUMP MAIN
RECEIVE_SMS
F1_000091 equ $ ; IN [ZERO CROSSING.BAS] HSERIN 100, OVER,[WAIT("+88"),STR NUMBER,WAIT(13, 10), STR MSG]
        clrf GENH
        movlw 100
        movwf GEN
PB@LB15
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB15
        btfss STATUS,2
        goto PB@LB15
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB15
        btfss STATUS,2
        goto PB@LB15
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB15
        btfss STATUS,2
        goto PB@LB15
        clrf PBP#VAR0
PB@LB18
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
        set@page PB@LB18
        btfss STATUS,2
        goto PB@LB18
PB@LB19
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB19
        btfss STATUS,2
        goto PB@LB19
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB19
        btfss STATUS,2
        goto PB@LB19
        clrf PBP#VAR0
PB@LB22
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
        sublw 5
        set@page PB@LB22
        btfss STATUS,2
        goto PB@LB22
F1_000092 equ $ ; IN [ZERO CROSSING.BAS] GOSUB TAKE_ACTION
        f@call take_action
over
F1_000094 equ $ ; IN [ZERO CROSSING.BAS] RETURN
        return
take_action
F1_000097 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "1" AND MSG[2] = "O" AND MSG[3] = "N" THEN L1_PIN = 1
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 78
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL23
        btfsc STATUS,2
        goto BC@LL23
        bsf PORTC,2
BC@LL23
F1_000098 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "1" AND MSG[2] = "O" AND MSG[3] = "F" THEN L1_PIN = 0
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL25
        btfsc STATUS,2
        goto BC@LL25
        bcf PORTC,2
BC@LL25
F1_000099 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "2" AND MSG[2] = "O" AND MSG[3] = "N" THEN L2_PIN = 1
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 50
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 78
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL27
        btfsc STATUS,2
        goto BC@LL27
        bsf PORTC,3
BC@LL27
F1_000100 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "2" AND MSG[2] = "O" AND MSG[3] = "F" THEN L2_PIN = 0
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 50
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL29
        btfsc STATUS,2
        goto BC@LL29
        bcf PORTC,3
BC@LL29
F1_000101 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "3" AND MSG[2] = "O" AND MSG[3] = "N" THEN L3_PIN = 1
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 51
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 78
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL31
        btfsc STATUS,2
        goto BC@LL31
        bsf PORTC,4
BC@LL31
F1_000102 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "L" AND MSG[1] = "3" AND MSG[2] = "O" AND MSG[3] = "F" THEN L3_PIN = 0
        movf msg#0,W
        movwf PBP#VAR0
        movlw 76
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 51
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL33
        btfsc STATUS,2
        goto BC@LL33
        bcf PORTC,4
BC@LL33
F1_000103 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "C" AND MSG[1] = "H" AND MSG[2] = "E" AND MSG[3] = "C" THEN GOSUB SEND_SMS
        movf msg#0,W
        movwf PBP#VAR0
        movlw 67
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 72
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 69
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 67
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL35
        btfsc STATUS,2
        goto BC@LL35
        f@call Send_SMS
BC@LL35
F1_000105 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "F" AND MSG[1] = "1" THEN
        movf msg#0,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL37
        btfsc STATUS,2
        goto BC@LL37
F1_000106 equ $ ; IN [ZERO CROSSING.BAS] SPEED = (MSG[2] - 48) * 10 + MSG[3] - 48
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
        movlw 10
        movwf PP1
        f@call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf msg#3,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        addwf PP7,F
        btfsc STATUS,0
        incf PP7H,F
        movlw 48
        subwf PP7,W
        movwf speed
F1_000107 equ $ ; IN [ZERO CROSSING.BAS] FLAG = 1
        bsf _B#VR1,0
F1_000108 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL37
F1_000110 equ $ ; IN [ZERO CROSSING.BAS] IF MSG[0] = "F" AND MSG[1] = "1" AND MSG[2] = "O" AND MSG[3] = "F" THEN
        movf msg#0,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf msg#1,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#2,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        movf msg#3,W
        movwf PBP#VAR0
        movlw 70
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL39
        btfsc STATUS,2
        goto BC@LL39
F1_000111 equ $ ; IN [ZERO CROSSING.BAS] FLAG = 0
        bcf _B#VR1,0
F1_000112 equ $ ; IN [ZERO CROSSING.BAS] F1_PIN = 0
        bcf PORTC,5
F1_000113 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL39
F1_000115 equ $ ; IN [ZERO CROSSING.BAS] CLEAR MSG
        movlw 5
        movwf PP0
        movlw 68
        movwf FSR
PB@LB41
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB41
        btfss STATUS,2
        goto PB@LB41
F1_000116 equ $ ; IN [ZERO CROSSING.BAS] RETURN
        return
Send_SMS
F1_000119 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000120 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000121 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["AT+CMGS="]
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
F1_000122 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000123 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT[34, STR NUMBER, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 57
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000124 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000125 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["LIGHT 1: ", DEC1 L1_PIN, 13, 10]
        movlw 76
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,2
        movlw 1
        f@call OUT@DECC
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000126 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["LIGHT 2: ", DEC1 L1_PIN, 13, 10]
        movlw 76
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 50
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,2
        movlw 1
        f@call OUT@DECC
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000127 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["LIGHT 3: ", DEC1 L1_PIN, 13, 10]
        movlw 76
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 1
        movwf GEN4H
        movlw 0
        btfsc PORTC,2
        movlw 1
        f@call OUT@DECC
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000128 equ $ ; IN [ZERO CROSSING.BAS] HSEROUT["FAN 1: ", DEC2 SPEED, $1A, 13, 10]
        movlw 70
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 2
        movwf GEN4H
        movf speed,W
        f@call OUT@DECC
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000129 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000130 equ $ ; IN [ZERO CROSSING.BAS] CLEAR MSG
        movlw 5
        movwf PP0
        movlw 68
        movwf FSR
PB@LB44
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB44
        btfss STATUS,2
        goto PB@LB44
F1_000131 equ $ ; IN [ZERO CROSSING.BAS] GOTO MAIN
        F@JUMP MAIN
regulate
F1_000134 equ $ ; IN [ZERO CROSSING.BAS] IF FLAG = 1 THEN
        set@page BC@LL45
        btfss _B#VR1,0
        goto BC@LL45
F1_000135 equ $ ; IN [ZERO CROSSING.BAS] F1_PIN = 0
        bcf PORTC,5
F1_000136 equ $ ; IN [ZERO CROSSING.BAS] DELAYMS 100 - SPEED
        movf speed,W
        sublw 100
        movwf PP1
        movlw 0
        btfss STATUS,0
        addlw 255
        movwf PP1H
        f@call DLY@P
F1_000137 equ $ ; IN [ZERO CROSSING.BAS] F1_PIN = 1
        bsf PORTC,5
F1_000138 equ $ ; IN [ZERO CROSSING.BAS] ENDIF
BC@LL45
F1_000139 equ $ ; IN [ZERO CROSSING.BAS] RETURN
        return
F1_EOF equ $ ; ZERO CROSSING.BAS
PB@LB47
        F@JUMP PB@LB47
STR@LB1
        de 87,65,73,84,32,70,79,82,32,71,83,77,46,46,46,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
