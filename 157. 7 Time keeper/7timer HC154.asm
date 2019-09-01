;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
 LIST  P = 16F876, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADRESL equ 0X009E
ADCON1 equ 0X009F
EEDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
EECON1 equ 0X018C
EECON2 equ 0X018D
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
EEIF=4
BCLIF=3
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
T1SYNC=2
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
ADDEN=3
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
EEIE=4
BCLIE=3
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
GCEN=7
ACKSTAT=6
PP_ACKSTAT=6
ACKDT=5
PP_ACKDT=5
ACKEN=4
PP_ACKEN=4
RCEN=3
PP_RCEN=3
PEN=2
PP_PEN=2
RSEN=1
PP_RSEN=1
SEN=0
PP_SEN=0
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
ADFM=7
PCFG3=3
PCFG2=2
PCFG1=1
PCFG0=0
EEPGD=7
PP_EEPGD=7
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X90, 0X95-0X97, 0X9A-0X9D
  __BADRAM 0X105, 0X107-0X109
  __BADRAM 0X185, 0X187-0X189, 0X18E-0X18F
CP_ALL equ 0X0FCF
CP_HALF equ 0X1FDF
CP_UPPER_256 equ 0X2FEF
CP_OFF equ 0X3FFF
DEBUG_ON equ 0X37FF
DEBUG_OFF equ 0X3FFF
WRTE_ON equ 0X3FFF
WRT_ENABLE_ON equ 0X3FFF
WRTE_OFF equ 0X3DFF
WRT_ENABLE_OFF equ 0X3DFF
CPD_ON equ 0X3EFF
CPD_OFF equ 0X3FFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
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
FOSC_EXTRC equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
WRT_OFF equ 0X3DFF
WRT_ON equ 0X3FFF
#define __16F876 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 368
#define _RAM_END 0X0170
#define _MAXMEM 8192
#define _ADC 5
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 4
#define _BANKS 3
#define RAM_BANKS 4
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 1
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 11
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
GEN4 = 32
GEN4H = 33
PBP#VAR0 = 34
PP0 = 35
PP0H = 36
PP1 = 37
PP1H = 38
PP3 = 39
PP3H = 40
PP6 = 41
PP6H = 42
digit_s = 43
seg = 44
adrs = 45
wrt = 46
variable wrt#0=46,wrt#1=47,wrt#2=48,wrt#3=49
variable wrt#4=50,wrt#5=51,wrt#6=52,wrt#7=53
variable wrt#8=54,wrt#9=55,wrt#10=56,wrt#11=57
variable wrt#12=58,wrt#13=59,wrt#14=60,wrt#15=61
variable wrt#16=62,wrt#17=63,wrt#18=64,wrt#19=65
variable wrt#20=66,wrt#21=67,wrt#22=68,wrt#23=69
variable wrt#24=70,wrt#25=71,wrt#26=72,wrt#27=73
variable wrt#28=74
delay = 75
_I = 76
hh11 = 77
hh12 = 78
hh21 = 79
hh22 = 80
hh31 = 81
hh32 = 82
hh41 = 83
hh42 = 84
hh51 = 85
hh52 = 86
hh61 = 87
hh62 = 88
hh71 = 89
hh72 = 90
mm11 = 91
mm12 = 92
mm21 = 93
mm22 = 94
mm31 = 95
mm32 = 96
mm41 = 97
mm42 = 98
mm51 = 99
mm52 = 100
mm61 = 101
mm62 = 102
mm71 = 103
mm72 = 104
#define dta PORTB
#define digit1 PORTC
#define digit2 PORTA
#define setup PORTC,4
#define nxt PORTC,5
#define up PORTC,6
#define down PORTC,7
#define __XTAL 20
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
EE@RD
        bsf 3,6
        movwf 269
EE@RD@W
        bsf 3,6
        bsf 3,5
        bcf 396,PP_EEPGD
        bsf 396,PP_RD
        bcf 3,5
        movf 268,W
        incf 269,F
        goto I@NT
EE@WR
EE@WR@W
        bsf 3,6
        movwf 268
        bsf 3,5
        clrf 396
        bsf 396,PP_WREN
        movlw 85
        movwf 397
        movlw 170
        movwf 397
        bsf 396,PP_WR
        btfsc 396,PP_WR
        goto $ - 1
        bcf 396,PP_WREN
        bcf 3,5
        incf 269,F
        goto I@NT
DL@MS
        clrf 38
DLY@W
        movwf 37
DLY@P
        movlw 255
        addwf 37,F
        skpc
        addwf 38,F
        skpc
        goto I@NT
        movlw 3
        movwf 36
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 36
DLUS@W
        addlw 252
        movwf 35
        comf 36,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 35,F
        skpnc
        goto $ - 3
        addwf 35,F
        nop
        incfsz 36,F
        goto $ - 8
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
F2_SOF equ $ ; 7TIMER HC154.PRP
F2_EOF equ $ ; 7TIMER HC154.PRP
F1_SOF equ $ ; 7TIMER HC154.BAS
F1_000014 equ $ ; IN [7TIMER HC154.BAS] TRISA = 0 : TRISB = 0 : TRISC = 0
        bsf STATUS,5
ram_bank = 1
        clrf TRISA
        clrf TRISB
        clrf TRISC
F1_000015 equ $ ; IN [7TIMER HC154.BAS] PORTA = 0 : PORTB = 0 : PORTC = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTA
        clrf PORTB
        clrf PORTC
F1_000045 equ $ ; IN [7TIMER HC154.BAS] HH11 = EREAD 0 : HH12 = EREAD 1
        movlw 0
        f@call EE@RD
        movwf hh11
        movlw 1
        f@call EE@RD
        movwf hh12
F1_000046 equ $ ; IN [7TIMER HC154.BAS] HH21 = EREAD 2 : HH22 = EREAD 3
        movlw 2
        f@call EE@RD
        movwf hh21
        movlw 3
        f@call EE@RD
        movwf hh22
F1_000047 equ $ ; IN [7TIMER HC154.BAS] HH31 = EREAD 4 : HH32 = EREAD 5
        movlw 4
        f@call EE@RD
        movwf hh31
        movlw 5
        f@call EE@RD
        movwf hh32
F1_000048 equ $ ; IN [7TIMER HC154.BAS] HH41 = EREAD 6 : HH42 = EREAD 7
        movlw 6
        f@call EE@RD
        movwf hh41
        movlw 7
        f@call EE@RD
        movwf hh42
F1_000049 equ $ ; IN [7TIMER HC154.BAS] HH51 = EREAD 8 : HH52 = EREAD 9
        movlw 8
        f@call EE@RD
        movwf hh51
        movlw 9
        f@call EE@RD
        movwf hh52
F1_000050 equ $ ; IN [7TIMER HC154.BAS] HH61 = EREAD 10 : HH62 = EREAD 11
        movlw 10
        f@call EE@RD
        movwf hh61
        movlw 11
        f@call EE@RD
        movwf hh62
F1_000051 equ $ ; IN [7TIMER HC154.BAS] HH71 = EREAD 12 : HH72 = EREAD 13
        movlw 12
        f@call EE@RD
        movwf hh71
        movlw 13
        f@call EE@RD
        movwf hh72
F1_000052 equ $ ; IN [7TIMER HC154.BAS] MM11 = EREAD 14 : MM12 = EREAD 15
        movlw 14
        f@call EE@RD
        movwf mm11
        movlw 15
        f@call EE@RD
        movwf mm12
F1_000053 equ $ ; IN [7TIMER HC154.BAS] MM21 = EREAD 16 : MM22 = EREAD 17
        movlw 16
        f@call EE@RD
        movwf mm21
        movlw 17
        f@call EE@RD
        movwf mm22
F1_000054 equ $ ; IN [7TIMER HC154.BAS] MM31 = EREAD 18 : MM32 = EREAD 19
        movlw 18
        f@call EE@RD
        movwf mm31
        movlw 19
        f@call EE@RD
        movwf mm32
F1_000055 equ $ ; IN [7TIMER HC154.BAS] MM41 = EREAD 20 : MM42 = EREAD 21
        movlw 20
        f@call EE@RD
        movwf mm41
        movlw 21
        f@call EE@RD
        movwf mm42
F1_000056 equ $ ; IN [7TIMER HC154.BAS] MM51 = EREAD 22 : MM52 = EREAD 23
        movlw 22
        f@call EE@RD
        movwf mm51
        movlw 23
        f@call EE@RD
        movwf mm52
F1_000057 equ $ ; IN [7TIMER HC154.BAS] MM61 = EREAD 24 : MM62 = EREAD 25
        movlw 24
        f@call EE@RD
        movwf mm61
        movlw 25
        f@call EE@RD
        movwf mm62
F1_000058 equ $ ; IN [7TIMER HC154.BAS] MM71 = EREAD 26 : MM72 = EREAD 27
        movlw 26
        f@call EE@RD
        movwf mm71
        movlw 27
        f@call EE@RD
        movwf mm72
F1_000059 equ $ ; IN [7TIMER HC154.BAS] SELECT CASE HH11
F1_000060 equ $ ; IN [7TIMER HC154.BAS] CASE 63,6,91,79,102,109,125,7,127,111
        movlw 63
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 6
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 91
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 79
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 102
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 109
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 125
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 7
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 127
        subwf hh11,W
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
        movlw 111
        subwf hh11,W
        set@page BC@LL2
        btfss STATUS,2
        goto BC@LL2
BC@LL3
F1_000061 equ $ ; IN [7TIMER HC154.BAS] GOTO MAIN
        F@JUMP main
F1_000062 equ $ ; IN [7TIMER HC154.BAS] CASE ELSE
        F@JUMP BC@LL5
BC@LL2
F1_000063 equ $ ; IN [7TIMER HC154.BAS] HH11 = 0 : HH12 = 0 : MM11 = 0 : MM12 = 0
        clrf hh11
        clrf hh12
        clrf mm11
        clrf mm12
F1_000064 equ $ ; IN [7TIMER HC154.BAS] HH21 = 0 : HH22 = 0 : MM21 = 0 : MM22 = 0
        clrf hh21
        clrf hh22
        clrf mm21
        clrf mm22
F1_000065 equ $ ; IN [7TIMER HC154.BAS] HH31 = 0 : HH32 = 0 : MM31 = 0 : MM32 = 0
        clrf hh31
        clrf hh32
        clrf mm31
        clrf mm32
F1_000066 equ $ ; IN [7TIMER HC154.BAS] HH41 = 0 : HH42 = 0 : MM41 = 0 : MM42 = 0
        clrf hh41
        clrf hh42
        clrf mm41
        clrf mm42
F1_000067 equ $ ; IN [7TIMER HC154.BAS] HH51 = 0 : HH52 = 0 : MM51 = 0 : MM52 = 0
        clrf hh51
        clrf hh52
        clrf mm51
        clrf mm52
F1_000068 equ $ ; IN [7TIMER HC154.BAS] HH61 = 0 : HH62 = 0 : MM61 = 0 : MM62 = 0
        clrf hh61
        clrf hh62
        clrf mm61
        clrf mm62
F1_000069 equ $ ; IN [7TIMER HC154.BAS] HH71 = 0 : HH72 = 0 : MM71 = 0 : MM72 = 0
        clrf hh71
        clrf hh72
        clrf mm71
        clrf mm72
F1_000070 equ $ ; IN [7TIMER HC154.BAS] ENDSELECT
BC@LL5
BC@LL1
main
F1_000073 equ $ ; IN [7TIMER HC154.BAS] FOR I = 0 TO 28
        clrf _I
FR@LB7
        movlw 29
        subwf _I,W
        set@page NX@LB8
        btfsc STATUS,0
        goto NX@LB8
F1_000074 equ $ ; IN [7TIMER HC154.BAS] WRT[I] = 0
        movf _I,W
        addlw wrt
        movwf FSR
        movlw 0
        movwf INDF
CT@LB9
F1_000075 equ $ ; IN [7TIMER HC154.BAS] NEXT I
        movlw 1
        addwf _I,F
        set@page FR@LB7
        btfss STATUS,0
        goto FR@LB7
NX@LB8
start
F1_000077 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 1 THEN GOTO SETTING1
        set@page BC@LL10
        btfss PORTC,4
        goto BC@LL10
        F@JUMP setting1
BC@LL10
F1_000078 equ $ ; IN [7TIMER HC154.BAS] GOSUB SCAN
        f@call scan
F1_000079 equ $ ; IN [7TIMER HC154.BAS] GOTO START
        F@JUMP start
setting1
F1_000082 equ $ ; IN [7TIMER HC154.BAS] WRT[1] = 1
        movlw 1
        movwf wrt#1
F1_000083 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH11 = HH11 + 1
        set@page BC@LL12
        btfss PORTC,6
        goto BC@LL12
        incf hh11,F
BC@LL12
F1_000084 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH11 = HH11 - 1
        set@page BC@LL14
        btfss PORTC,7
        goto BC@LL14
        decf hh11,F
BC@LL14
F1_000085 equ $ ; IN [7TIMER HC154.BAS] IF HH11 < 0 THEN HH11 = 9
        set@page BC@LL16
        btfss hh11,7
        goto BC@LL16
        movlw 9
        movwf hh11
BC@LL16
F1_000086 equ $ ; IN [7TIMER HC154.BAS] IF HH11 = 10 THEN HH11 = 0
        movlw 10
        subwf hh11,W
        set@page BC@LL18
        btfss STATUS,2
        goto BC@LL18
        clrf hh11
BC@LL18
F1_000087 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 300
        clrf delay
FR@LB20
F1_000088 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB22
F1_000089 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB20
        btfss STATUS,0
        goto FR@LB20
NX@LB21
F1_000090 equ $ ; IN [7TIMER HC154.BAS] EWRITE 0,[HH11]
        bsf STATUS,6
ram_bank = 2
        clrf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh11,W
        f@call EE@WR
F1_000091 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING2
        set@page BC@LL23
        btfss PORTC,5
        goto BC@LL23
        F@JUMP setting2
BC@LL23
F1_000092 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL25
        btfsc PORTC,4
        goto BC@LL25
        F@JUMP main
BC@LL25
F1_000093 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING1
        F@JUMP setting1
setting2
F1_000096 equ $ ; IN [7TIMER HC154.BAS] WRT[2] = 1
        movlw 1
        movwf wrt#2
F1_000097 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH12 = HH12 + 1
        set@page BC@LL27
        btfss PORTC,6
        goto BC@LL27
        incf hh12,F
BC@LL27
F1_000098 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH12 = HH12 - 1
        set@page BC@LL29
        btfss PORTC,7
        goto BC@LL29
        decf hh12,F
BC@LL29
F1_000099 equ $ ; IN [7TIMER HC154.BAS] IF HH12 < 0 THEN HH12 = 9
        set@page BC@LL31
        btfss hh12,7
        goto BC@LL31
        movlw 9
        movwf hh12
BC@LL31
F1_000100 equ $ ; IN [7TIMER HC154.BAS] IF HH12 = 10 THEN HH12 = 0
        movlw 10
        subwf hh12,W
        set@page BC@LL33
        btfss STATUS,2
        goto BC@LL33
        clrf hh12
BC@LL33
F1_000101 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 270
        clrf delay
FR@LB35
F1_000102 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB37
F1_000103 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB35
        btfss STATUS,0
        goto FR@LB35
NX@LB36
F1_000104 equ $ ; IN [7TIMER HC154.BAS] EWRITE 1,[HH12]
        movlw 1
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh12,W
        f@call EE@WR
F1_000105 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING3
        set@page BC@LL38
        btfss PORTC,5
        goto BC@LL38
        F@JUMP setting3
BC@LL38
F1_000106 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL40
        btfsc PORTC,4
        goto BC@LL40
        F@JUMP main
BC@LL40
F1_000107 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING2
        F@JUMP setting2
setting3
F1_000110 equ $ ; IN [7TIMER HC154.BAS] WRT[3] = 1
        movlw 1
        movwf wrt#3
F1_000111 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM11 = MM11 + 1
        set@page BC@LL42
        btfss PORTC,6
        goto BC@LL42
        incf mm11,F
BC@LL42
F1_000112 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM11 = MM11 - 1
        set@page BC@LL44
        btfss PORTC,7
        goto BC@LL44
        decf mm11,F
BC@LL44
F1_000113 equ $ ; IN [7TIMER HC154.BAS] IF MM11 < 0 THEN MM11 = 9
        set@page BC@LL46
        btfss mm11,7
        goto BC@LL46
        movlw 9
        movwf mm11
BC@LL46
F1_000114 equ $ ; IN [7TIMER HC154.BAS] IF MM11 = 10 THEN MM11 = 0
        movlw 10
        subwf mm11,W
        set@page BC@LL48
        btfss STATUS,2
        goto BC@LL48
        clrf mm11
BC@LL48
F1_000115 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 250
        clrf delay
FR@LB50
        movlw 251
        subwf delay,W
        set@page NX@LB51
        btfsc STATUS,0
        goto NX@LB51
F1_000116 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB52
F1_000117 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB50
        btfss STATUS,0
        goto FR@LB50
NX@LB51
F1_000118 equ $ ; IN [7TIMER HC154.BAS] EWRITE 2,[MM11]
        movlw 2
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm11,W
        f@call EE@WR
F1_000119 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING4
        set@page BC@LL53
        btfss PORTC,5
        goto BC@LL53
        F@JUMP setting4
BC@LL53
F1_000120 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL55
        btfsc PORTC,4
        goto BC@LL55
        F@JUMP main
BC@LL55
F1_000121 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING3
        F@JUMP setting3
setting4
F1_000124 equ $ ; IN [7TIMER HC154.BAS] WRT[4] = 1
        movlw 1
        movwf wrt#4
F1_000125 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM12 = MM12 + 1
        set@page BC@LL57
        btfss PORTC,6
        goto BC@LL57
        incf mm12,F
BC@LL57
F1_000126 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM12 = MM12 - 1
        set@page BC@LL59
        btfss PORTC,7
        goto BC@LL59
        decf mm12,F
BC@LL59
F1_000127 equ $ ; IN [7TIMER HC154.BAS] IF MM12 < 0 THEN MM12 = 9
        set@page BC@LL61
        btfss mm12,7
        goto BC@LL61
        movlw 9
        movwf mm12
BC@LL61
F1_000128 equ $ ; IN [7TIMER HC154.BAS] IF MM12 = 10 THEN MM12 = 0
        movlw 10
        subwf mm12,W
        set@page BC@LL63
        btfss STATUS,2
        goto BC@LL63
        clrf mm12
BC@LL63
F1_000129 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 200
        clrf delay
FR@LB65
        movlw 201
        subwf delay,W
        set@page NX@LB66
        btfsc STATUS,0
        goto NX@LB66
F1_000130 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB67
F1_000131 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB65
        btfss STATUS,0
        goto FR@LB65
NX@LB66
F1_000132 equ $ ; IN [7TIMER HC154.BAS] EWRITE 3,[MM12]
        movlw 3
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm12,W
        f@call EE@WR
F1_000133 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING5
        set@page BC@LL68
        btfss PORTC,5
        goto BC@LL68
        F@JUMP setting5
BC@LL68
F1_000134 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL70
        btfsc PORTC,4
        goto BC@LL70
        F@JUMP main
BC@LL70
F1_000135 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING4
        F@JUMP setting4
setting5
F1_000138 equ $ ; IN [7TIMER HC154.BAS] WRT[5] = 1
        movlw 1
        movwf wrt#5
F1_000139 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH21 = HH21 + 1
        set@page BC@LL72
        btfss PORTC,6
        goto BC@LL72
        incf hh21,F
BC@LL72
F1_000140 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH21 = HH21 - 1
        set@page BC@LL74
        btfss PORTC,7
        goto BC@LL74
        decf hh21,F
BC@LL74
F1_000141 equ $ ; IN [7TIMER HC154.BAS] IF HH21 < 0 THEN HH21 = 9
        set@page BC@LL76
        btfss hh21,7
        goto BC@LL76
        movlw 9
        movwf hh21
BC@LL76
F1_000142 equ $ ; IN [7TIMER HC154.BAS] IF HH21 = 10 THEN HH21 = 0
        movlw 10
        subwf hh21,W
        set@page BC@LL78
        btfss STATUS,2
        goto BC@LL78
        clrf hh21
BC@LL78
F1_000143 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 150
        clrf delay
FR@LB80
        movlw 151
        subwf delay,W
        set@page NX@LB81
        btfsc STATUS,0
        goto NX@LB81
F1_000144 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB82
F1_000145 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB80
        btfss STATUS,0
        goto FR@LB80
NX@LB81
F1_000146 equ $ ; IN [7TIMER HC154.BAS] EWRITE 4,[HH21]
        movlw 4
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh21,W
        f@call EE@WR
F1_000147 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING6
        set@page BC@LL83
        btfss PORTC,5
        goto BC@LL83
        F@JUMP setting6
BC@LL83
F1_000148 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL85
        btfsc PORTC,4
        goto BC@LL85
        F@JUMP main
BC@LL85
F1_000149 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING5
        F@JUMP setting5
setting6
F1_000152 equ $ ; IN [7TIMER HC154.BAS] WRT[6] = 1
        movlw 1
        movwf wrt#6
F1_000153 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH21 = HH21 + 1
        set@page BC@LL87
        btfss PORTC,6
        goto BC@LL87
        incf hh21,F
BC@LL87
F1_000154 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH21 = HH21 - 1
        set@page BC@LL89
        btfss PORTC,7
        goto BC@LL89
        decf hh21,F
BC@LL89
F1_000155 equ $ ; IN [7TIMER HC154.BAS] IF HH21 < 0 THEN HH21 = 9
        set@page BC@LL91
        btfss hh21,7
        goto BC@LL91
        movlw 9
        movwf hh21
BC@LL91
F1_000156 equ $ ; IN [7TIMER HC154.BAS] IF HH21 = 10 THEN HH21 = 0
        movlw 10
        subwf hh21,W
        set@page BC@LL93
        btfss STATUS,2
        goto BC@LL93
        clrf hh21
BC@LL93
F1_000157 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 100
        clrf delay
FR@LB95
        movlw 101
        subwf delay,W
        set@page NX@LB96
        btfsc STATUS,0
        goto NX@LB96
F1_000158 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB97
F1_000159 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB95
        btfss STATUS,0
        goto FR@LB95
NX@LB96
F1_000160 equ $ ; IN [7TIMER HC154.BAS] EWRITE 5,[HH21]
        movlw 5
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh21,W
        f@call EE@WR
F1_000161 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING7
        set@page BC@LL98
        btfss PORTC,5
        goto BC@LL98
        F@JUMP setting7
BC@LL98
F1_000162 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL100
        btfsc PORTC,4
        goto BC@LL100
        F@JUMP main
BC@LL100
F1_000163 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING6
        F@JUMP setting6
setting7
F1_000166 equ $ ; IN [7TIMER HC154.BAS] WRT[7] = 1
        movlw 1
        movwf wrt#7
F1_000167 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM21 = MM21 + 1
        set@page BC@LL102
        btfss PORTC,6
        goto BC@LL102
        incf mm21,F
BC@LL102
F1_000168 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM21 = MM21 - 1
        set@page BC@LL104
        btfss PORTC,7
        goto BC@LL104
        decf mm21,F
BC@LL104
F1_000169 equ $ ; IN [7TIMER HC154.BAS] IF MM21 < 0 THEN MM21 = 9
        set@page BC@LL106
        btfss mm21,7
        goto BC@LL106
        movlw 9
        movwf mm21
BC@LL106
F1_000170 equ $ ; IN [7TIMER HC154.BAS] IF MM21 = 10 THEN MM21 = 0
        movlw 10
        subwf mm21,W
        set@page BC@LL108
        btfss STATUS,2
        goto BC@LL108
        clrf mm21
BC@LL108
F1_000171 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB110
        movlw 51
        subwf delay,W
        set@page NX@LB111
        btfsc STATUS,0
        goto NX@LB111
F1_000172 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB112
F1_000173 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB110
        btfss STATUS,0
        goto FR@LB110
NX@LB111
F1_000174 equ $ ; IN [7TIMER HC154.BAS] EWRITE 6,[MM21]
        movlw 6
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm21,W
        f@call EE@WR
F1_000175 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING8
        set@page BC@LL113
        btfss PORTC,5
        goto BC@LL113
        F@JUMP setting8
BC@LL113
F1_000176 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL115
        btfsc PORTC,4
        goto BC@LL115
        F@JUMP main
BC@LL115
F1_000177 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING7
        F@JUMP setting7
setting8
F1_000180 equ $ ; IN [7TIMER HC154.BAS] WRT[8] = 1
        movlw 1
        movwf wrt#8
F1_000181 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM22 = MM22 + 1
        set@page BC@LL117
        btfss PORTC,6
        goto BC@LL117
        incf mm22,F
BC@LL117
F1_000182 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM22 = MM22 - 1
        set@page BC@LL119
        btfss PORTC,7
        goto BC@LL119
        decf mm22,F
BC@LL119
F1_000183 equ $ ; IN [7TIMER HC154.BAS] IF MM22 < 0 THEN MM22 = 9
        set@page BC@LL121
        btfss mm22,7
        goto BC@LL121
        movlw 9
        movwf mm22
BC@LL121
F1_000184 equ $ ; IN [7TIMER HC154.BAS] IF MM22 = 10 THEN MM22 = 0
        movlw 10
        subwf mm22,W
        set@page BC@LL123
        btfss STATUS,2
        goto BC@LL123
        clrf mm22
BC@LL123
F1_000185 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB125
        movlw 51
        subwf delay,W
        set@page NX@LB126
        btfsc STATUS,0
        goto NX@LB126
F1_000186 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB127
F1_000187 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB125
        btfss STATUS,0
        goto FR@LB125
NX@LB126
F1_000188 equ $ ; IN [7TIMER HC154.BAS] EWRITE 7,[MM22]
        movlw 7
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm22,W
        f@call EE@WR
F1_000189 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING9
        set@page BC@LL128
        btfss PORTC,5
        goto BC@LL128
        F@JUMP setting9
BC@LL128
F1_000190 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL130
        btfsc PORTC,4
        goto BC@LL130
        F@JUMP main
BC@LL130
F1_000191 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING8
        F@JUMP setting8
setting9
F1_000194 equ $ ; IN [7TIMER HC154.BAS] WRT[9] = 1
        movlw 1
        movwf wrt#9
F1_000195 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH31 = HH31 + 1
        set@page BC@LL132
        btfss PORTC,6
        goto BC@LL132
        incf hh31,F
BC@LL132
F1_000196 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH31 = HH31 - 1
        set@page BC@LL134
        btfss PORTC,7
        goto BC@LL134
        decf hh31,F
BC@LL134
F1_000197 equ $ ; IN [7TIMER HC154.BAS] IF HH31 < 0 THEN HH31 = 9
        set@page BC@LL136
        btfss hh31,7
        goto BC@LL136
        movlw 9
        movwf hh31
BC@LL136
F1_000198 equ $ ; IN [7TIMER HC154.BAS] IF HH31 = 10 THEN HH31 = 0
        movlw 10
        subwf hh31,W
        set@page BC@LL138
        btfss STATUS,2
        goto BC@LL138
        clrf hh31
BC@LL138
F1_000199 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB140
        movlw 51
        subwf delay,W
        set@page NX@LB141
        btfsc STATUS,0
        goto NX@LB141
F1_000200 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB142
F1_000201 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB140
        btfss STATUS,0
        goto FR@LB140
NX@LB141
F1_000202 equ $ ; IN [7TIMER HC154.BAS] EWRITE 8,[HH31]
        movlw 8
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh31,W
        f@call EE@WR
F1_000203 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING10
        set@page BC@LL143
        btfss PORTC,5
        goto BC@LL143
        F@JUMP setting10
BC@LL143
F1_000204 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL145
        btfsc PORTC,4
        goto BC@LL145
        F@JUMP main
BC@LL145
F1_000205 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING9
        F@JUMP setting9
setting10
F1_000208 equ $ ; IN [7TIMER HC154.BAS] WRT[10] = 1
        movlw 1
        movwf wrt#10
F1_000209 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH32 = HH32 + 1
        set@page BC@LL147
        btfss PORTC,6
        goto BC@LL147
        incf hh32,F
BC@LL147
F1_000210 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH32 = HH32 - 1
        set@page BC@LL149
        btfss PORTC,7
        goto BC@LL149
        decf hh32,F
BC@LL149
F1_000211 equ $ ; IN [7TIMER HC154.BAS] IF HH32 < 0 THEN HH32 = 9
        set@page BC@LL151
        btfss hh32,7
        goto BC@LL151
        movlw 9
        movwf hh32
BC@LL151
F1_000212 equ $ ; IN [7TIMER HC154.BAS] IF HH32 = 10 THEN HH32 = 0
        movlw 10
        subwf hh32,W
        set@page BC@LL153
        btfss STATUS,2
        goto BC@LL153
        clrf hh32
BC@LL153
F1_000213 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB155
        movlw 51
        subwf delay,W
        set@page NX@LB156
        btfsc STATUS,0
        goto NX@LB156
F1_000214 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB157
F1_000215 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB155
        btfss STATUS,0
        goto FR@LB155
NX@LB156
F1_000216 equ $ ; IN [7TIMER HC154.BAS] EWRITE 9,[HH32]
        movlw 9
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh32,W
        f@call EE@WR
F1_000217 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING11
        set@page BC@LL158
        btfss PORTC,5
        goto BC@LL158
        F@JUMP setting11
BC@LL158
F1_000218 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL160
        btfsc PORTC,4
        goto BC@LL160
        F@JUMP main
BC@LL160
F1_000219 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING10
        F@JUMP setting10
setting11
F1_000222 equ $ ; IN [7TIMER HC154.BAS] WRT[11] = 1
        movlw 1
        movwf wrt#11
F1_000223 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM31 = MM31 + 1
        set@page BC@LL162
        btfss PORTC,6
        goto BC@LL162
        incf mm31,F
BC@LL162
F1_000224 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM31 = MM31 - 1
        set@page BC@LL164
        btfss PORTC,7
        goto BC@LL164
        decf mm31,F
BC@LL164
F1_000225 equ $ ; IN [7TIMER HC154.BAS] IF MM31 < 0 THEN MM31 = 9
        set@page BC@LL166
        btfss mm31,7
        goto BC@LL166
        movlw 9
        movwf mm31
BC@LL166
F1_000226 equ $ ; IN [7TIMER HC154.BAS] IF MM31 = 10 THEN MM31 = 0
        movlw 10
        subwf mm31,W
        set@page BC@LL168
        btfss STATUS,2
        goto BC@LL168
        clrf mm31
BC@LL168
F1_000227 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB170
        movlw 51
        subwf delay,W
        set@page NX@LB171
        btfsc STATUS,0
        goto NX@LB171
F1_000228 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB172
F1_000229 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB170
        btfss STATUS,0
        goto FR@LB170
NX@LB171
F1_000230 equ $ ; IN [7TIMER HC154.BAS] EWRITE 10,[MM31]
        movlw 10
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm31,W
        f@call EE@WR
F1_000231 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING12
        set@page BC@LL173
        btfss PORTC,5
        goto BC@LL173
        F@JUMP setting12
BC@LL173
F1_000232 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL175
        btfsc PORTC,4
        goto BC@LL175
        F@JUMP main
BC@LL175
F1_000233 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING11
        F@JUMP setting11
setting12
F1_000236 equ $ ; IN [7TIMER HC154.BAS] WRT[12] = 1
        movlw 1
        movwf wrt#12
F1_000237 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM32 = MM32 + 1
        set@page BC@LL177
        btfss PORTC,6
        goto BC@LL177
        incf mm32,F
BC@LL177
F1_000238 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM32 = MM32 - 1
        set@page BC@LL179
        btfss PORTC,7
        goto BC@LL179
        decf mm32,F
BC@LL179
F1_000239 equ $ ; IN [7TIMER HC154.BAS] IF MM32 < 0 THEN MM32 = 9
        set@page BC@LL181
        btfss mm32,7
        goto BC@LL181
        movlw 9
        movwf mm32
BC@LL181
F1_000240 equ $ ; IN [7TIMER HC154.BAS] IF MM32 = 10 THEN MM32 = 0
        movlw 10
        subwf mm32,W
        set@page BC@LL183
        btfss STATUS,2
        goto BC@LL183
        clrf mm32
BC@LL183
F1_000241 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB185
        movlw 51
        subwf delay,W
        set@page NX@LB186
        btfsc STATUS,0
        goto NX@LB186
F1_000242 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB187
F1_000243 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB185
        btfss STATUS,0
        goto FR@LB185
NX@LB186
F1_000244 equ $ ; IN [7TIMER HC154.BAS] EWRITE 11,[MM32]
        movlw 11
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm32,W
        f@call EE@WR
F1_000245 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING13
        set@page BC@LL188
        btfss PORTC,5
        goto BC@LL188
        F@JUMP setting13
BC@LL188
F1_000246 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL190
        btfsc PORTC,4
        goto BC@LL190
        F@JUMP main
BC@LL190
F1_000247 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING12
        F@JUMP setting12
setting13
F1_000250 equ $ ; IN [7TIMER HC154.BAS] WRT[13] = 1
        movlw 1
        movwf wrt#13
F1_000251 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH41 = HH41 + 1
        set@page BC@LL192
        btfss PORTC,6
        goto BC@LL192
        incf hh41,F
BC@LL192
F1_000252 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH41 = HH41 - 1
        set@page BC@LL194
        btfss PORTC,7
        goto BC@LL194
        decf hh41,F
BC@LL194
F1_000253 equ $ ; IN [7TIMER HC154.BAS] IF HH41 < 0 THEN HH41 = 9
        set@page BC@LL196
        btfss hh41,7
        goto BC@LL196
        movlw 9
        movwf hh41
BC@LL196
F1_000254 equ $ ; IN [7TIMER HC154.BAS] IF HH41 = 10 THEN HH41 = 0
        movlw 10
        subwf hh41,W
        set@page BC@LL198
        btfss STATUS,2
        goto BC@LL198
        clrf hh41
BC@LL198
F1_000255 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB200
        movlw 51
        subwf delay,W
        set@page NX@LB201
        btfsc STATUS,0
        goto NX@LB201
F1_000256 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB202
F1_000257 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB200
        btfss STATUS,0
        goto FR@LB200
NX@LB201
F1_000258 equ $ ; IN [7TIMER HC154.BAS] EWRITE 12,[HH41]
        movlw 12
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh41,W
        f@call EE@WR
F1_000259 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING14
        set@page BC@LL203
        btfss PORTC,5
        goto BC@LL203
        F@JUMP setting14
BC@LL203
F1_000260 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL205
        btfsc PORTC,4
        goto BC@LL205
        F@JUMP main
BC@LL205
F1_000261 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING13
        F@JUMP setting13
setting14
F1_000264 equ $ ; IN [7TIMER HC154.BAS] WRT[14] = 1
        movlw 1
        movwf wrt#14
F1_000265 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH42 = HH42 + 1
        set@page BC@LL207
        btfss PORTC,6
        goto BC@LL207
        incf hh42,F
BC@LL207
F1_000266 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH42 = HH42 - 1
        set@page BC@LL209
        btfss PORTC,7
        goto BC@LL209
        decf hh42,F
BC@LL209
F1_000267 equ $ ; IN [7TIMER HC154.BAS] IF HH42 < 0 THEN HH42 = 9
        set@page BC@LL211
        btfss hh42,7
        goto BC@LL211
        movlw 9
        movwf hh42
BC@LL211
F1_000268 equ $ ; IN [7TIMER HC154.BAS] IF HH42 = 10 THEN HH42 = 0
        movlw 10
        subwf hh42,W
        set@page BC@LL213
        btfss STATUS,2
        goto BC@LL213
        clrf hh42
BC@LL213
F1_000269 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 50
        clrf delay
FR@LB215
        movlw 51
        subwf delay,W
        set@page NX@LB216
        btfsc STATUS,0
        goto NX@LB216
F1_000270 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB217
F1_000271 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB215
        btfss STATUS,0
        goto FR@LB215
NX@LB216
F1_000272 equ $ ; IN [7TIMER HC154.BAS] EWRITE 13,[HH42]
        movlw 13
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh42,W
        f@call EE@WR
F1_000273 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING15
        set@page BC@LL218
        btfss PORTC,5
        goto BC@LL218
        F@JUMP setting15
BC@LL218
F1_000274 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL220
        btfsc PORTC,4
        goto BC@LL220
        F@JUMP main
BC@LL220
F1_000275 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING14
        F@JUMP setting14
setting15
F1_000278 equ $ ; IN [7TIMER HC154.BAS] WRT[15] = 1
        movlw 1
        movwf wrt#15
F1_000279 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM41 = MM41 + 1
        set@page BC@LL222
        btfss PORTC,6
        goto BC@LL222
        incf mm41,F
BC@LL222
F1_000280 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM41 = MM41 - 1
        set@page BC@LL224
        btfss PORTC,7
        goto BC@LL224
        decf mm41,F
BC@LL224
F1_000281 equ $ ; IN [7TIMER HC154.BAS] IF MM41 < 0 THEN MM41 = 9
        set@page BC@LL226
        btfss mm41,7
        goto BC@LL226
        movlw 9
        movwf mm41
BC@LL226
F1_000282 equ $ ; IN [7TIMER HC154.BAS] IF MM41 = 10 THEN MM41 = 0
        movlw 10
        subwf mm41,W
        set@page BC@LL228
        btfss STATUS,2
        goto BC@LL228
        clrf mm41
BC@LL228
F1_000283 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB230
        movlw 41
        subwf delay,W
        set@page NX@LB231
        btfsc STATUS,0
        goto NX@LB231
F1_000284 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB232
F1_000285 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB230
        btfss STATUS,0
        goto FR@LB230
NX@LB231
F1_000286 equ $ ; IN [7TIMER HC154.BAS] EWRITE 14,[MM41]
        movlw 14
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm41,W
        f@call EE@WR
F1_000287 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING16
        set@page BC@LL233
        btfss PORTC,5
        goto BC@LL233
        F@JUMP setting16
BC@LL233
F1_000288 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL235
        btfsc PORTC,4
        goto BC@LL235
        F@JUMP main
BC@LL235
F1_000289 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING15
        F@JUMP setting15
setting16
F1_000292 equ $ ; IN [7TIMER HC154.BAS] WRT[16] = 1
        movlw 1
        movwf wrt#16
F1_000293 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM42 = MM42 + 1
        set@page BC@LL237
        btfss PORTC,6
        goto BC@LL237
        incf mm42,F
BC@LL237
F1_000294 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM42 = MM42 - 1
        set@page BC@LL239
        btfss PORTC,7
        goto BC@LL239
        decf mm42,F
BC@LL239
F1_000295 equ $ ; IN [7TIMER HC154.BAS] IF MM42 < 0 THEN MM42 = 9
        set@page BC@LL241
        btfss mm42,7
        goto BC@LL241
        movlw 9
        movwf mm42
BC@LL241
F1_000296 equ $ ; IN [7TIMER HC154.BAS] IF MM42 = 10 THEN MM42 = 0
        movlw 10
        subwf mm42,W
        set@page BC@LL243
        btfss STATUS,2
        goto BC@LL243
        clrf mm42
BC@LL243
F1_000297 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB245
        movlw 41
        subwf delay,W
        set@page NX@LB246
        btfsc STATUS,0
        goto NX@LB246
F1_000298 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB247
F1_000299 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB245
        btfss STATUS,0
        goto FR@LB245
NX@LB246
F1_000300 equ $ ; IN [7TIMER HC154.BAS] EWRITE 15,[MM42]
        movlw 15
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm42,W
        f@call EE@WR
F1_000301 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING17
        set@page BC@LL248
        btfss PORTC,5
        goto BC@LL248
        F@JUMP setting17
BC@LL248
F1_000302 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL250
        btfsc PORTC,4
        goto BC@LL250
        F@JUMP main
BC@LL250
F1_000303 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING16
        F@JUMP setting16
setting17
F1_000306 equ $ ; IN [7TIMER HC154.BAS] WRT[17] = 1
        movlw 1
        movwf wrt#17
F1_000307 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH51 = HH51 + 1
        set@page BC@LL252
        btfss PORTC,6
        goto BC@LL252
        incf hh51,F
BC@LL252
F1_000308 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH51 = HH51 - 1
        set@page BC@LL254
        btfss PORTC,7
        goto BC@LL254
        decf hh51,F
BC@LL254
F1_000309 equ $ ; IN [7TIMER HC154.BAS] IF HH51 < 0 THEN HH51 = 9
        set@page BC@LL256
        btfss hh51,7
        goto BC@LL256
        movlw 9
        movwf hh51
BC@LL256
F1_000310 equ $ ; IN [7TIMER HC154.BAS] IF HH51 = 10 THEN HH51 = 0
        movlw 10
        subwf hh51,W
        set@page BC@LL258
        btfss STATUS,2
        goto BC@LL258
        clrf hh51
BC@LL258
F1_000311 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB260
        movlw 41
        subwf delay,W
        set@page NX@LB261
        btfsc STATUS,0
        goto NX@LB261
F1_000312 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB262
F1_000313 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB260
        btfss STATUS,0
        goto FR@LB260
NX@LB261
F1_000314 equ $ ; IN [7TIMER HC154.BAS] EWRITE 16,[HH51]
        movlw 16
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh51,W
        f@call EE@WR
F1_000315 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING18
        set@page BC@LL263
        btfss PORTC,5
        goto BC@LL263
        F@JUMP setting18
BC@LL263
F1_000316 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL265
        btfsc PORTC,4
        goto BC@LL265
        F@JUMP main
BC@LL265
F1_000317 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING17
        F@JUMP setting17
setting18
F1_000320 equ $ ; IN [7TIMER HC154.BAS] WRT[18] = 1
        movlw 1
        movwf wrt#18
F1_000321 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH52 = HH52 + 1
        set@page BC@LL267
        btfss PORTC,6
        goto BC@LL267
        incf hh52,F
BC@LL267
F1_000322 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH52 = HH52 - 1
        set@page BC@LL269
        btfss PORTC,7
        goto BC@LL269
        decf hh52,F
BC@LL269
F1_000323 equ $ ; IN [7TIMER HC154.BAS] IF HH52 < 0 THEN HH52 = 9
        set@page BC@LL271
        btfss hh52,7
        goto BC@LL271
        movlw 9
        movwf hh52
BC@LL271
F1_000324 equ $ ; IN [7TIMER HC154.BAS] IF HH52 = 10 THEN HH52 = 0
        movlw 10
        subwf hh52,W
        set@page BC@LL273
        btfss STATUS,2
        goto BC@LL273
        clrf hh52
BC@LL273
F1_000325 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB275
        movlw 41
        subwf delay,W
        set@page NX@LB276
        btfsc STATUS,0
        goto NX@LB276
F1_000326 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB277
F1_000327 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB275
        btfss STATUS,0
        goto FR@LB275
NX@LB276
F1_000328 equ $ ; IN [7TIMER HC154.BAS] EWRITE 17,[HH52]
        movlw 17
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh52,W
        f@call EE@WR
F1_000329 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING19
        set@page BC@LL278
        btfss PORTC,5
        goto BC@LL278
        F@JUMP setting19
BC@LL278
F1_000330 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL280
        btfsc PORTC,4
        goto BC@LL280
        F@JUMP main
BC@LL280
F1_000331 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING18
        F@JUMP setting18
setting19
F1_000334 equ $ ; IN [7TIMER HC154.BAS] WRT[19] = 1
        movlw 1
        movwf wrt#19
F1_000335 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM51 = MM51 + 1
        set@page BC@LL282
        btfss PORTC,6
        goto BC@LL282
        incf mm51,F
BC@LL282
F1_000336 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM51 = MM51 - 1
        set@page BC@LL284
        btfss PORTC,7
        goto BC@LL284
        decf mm51,F
BC@LL284
F1_000337 equ $ ; IN [7TIMER HC154.BAS] IF MM51 < 0 THEN MM51 = 9
        set@page BC@LL286
        btfss mm51,7
        goto BC@LL286
        movlw 9
        movwf mm51
BC@LL286
F1_000338 equ $ ; IN [7TIMER HC154.BAS] IF MM51 = 10 THEN MM51 = 0
        movlw 10
        subwf mm51,W
        set@page BC@LL288
        btfss STATUS,2
        goto BC@LL288
        clrf mm51
BC@LL288
F1_000339 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB290
        movlw 41
        subwf delay,W
        set@page NX@LB291
        btfsc STATUS,0
        goto NX@LB291
F1_000340 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB292
F1_000341 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB290
        btfss STATUS,0
        goto FR@LB290
NX@LB291
F1_000342 equ $ ; IN [7TIMER HC154.BAS] EWRITE 18,[MM51]
        movlw 18
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm51,W
        f@call EE@WR
F1_000343 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING20
        set@page BC@LL293
        btfss PORTC,5
        goto BC@LL293
        F@JUMP setting20
BC@LL293
F1_000344 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL295
        btfsc PORTC,4
        goto BC@LL295
        F@JUMP main
BC@LL295
F1_000345 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING19
        F@JUMP setting19
setting20
F1_000348 equ $ ; IN [7TIMER HC154.BAS] WRT[20] = 1
        movlw 1
        movwf wrt#20
F1_000349 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM52 = MM52 + 1
        set@page BC@LL297
        btfss PORTC,6
        goto BC@LL297
        incf mm52,F
BC@LL297
F1_000350 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM52 = MM52 - 1
        set@page BC@LL299
        btfss PORTC,7
        goto BC@LL299
        decf mm52,F
BC@LL299
F1_000351 equ $ ; IN [7TIMER HC154.BAS] IF MM52 < 0 THEN MM52 = 9
        set@page BC@LL301
        btfss mm52,7
        goto BC@LL301
        movlw 9
        movwf mm52
BC@LL301
F1_000352 equ $ ; IN [7TIMER HC154.BAS] IF MM52 = 10 THEN MM52 = 0
        movlw 10
        subwf mm52,W
        set@page BC@LL303
        btfss STATUS,2
        goto BC@LL303
        clrf mm52
BC@LL303
F1_000353 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 40
        clrf delay
FR@LB305
        movlw 41
        subwf delay,W
        set@page NX@LB306
        btfsc STATUS,0
        goto NX@LB306
F1_000354 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB307
F1_000355 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB305
        btfss STATUS,0
        goto FR@LB305
NX@LB306
F1_000356 equ $ ; IN [7TIMER HC154.BAS] EWRITE 19,[MM52]
        movlw 19
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm52,W
        f@call EE@WR
F1_000357 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING21
        set@page BC@LL308
        btfss PORTC,5
        goto BC@LL308
        F@JUMP setting21
BC@LL308
F1_000358 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL310
        btfsc PORTC,4
        goto BC@LL310
        F@JUMP main
BC@LL310
F1_000359 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING20
        F@JUMP setting20
setting21
F1_000362 equ $ ; IN [7TIMER HC154.BAS] WRT[21] = 1
        movlw 1
        movwf wrt#21
F1_000363 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH61 = HH61 + 1
        set@page BC@LL312
        btfss PORTC,6
        goto BC@LL312
        incf hh61,F
BC@LL312
F1_000364 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH61 = HH61 - 1
        set@page BC@LL314
        btfss PORTC,7
        goto BC@LL314
        decf hh61,F
BC@LL314
F1_000365 equ $ ; IN [7TIMER HC154.BAS] IF HH61 < 0 THEN HH61 = 9
        set@page BC@LL316
        btfss hh61,7
        goto BC@LL316
        movlw 9
        movwf hh61
BC@LL316
F1_000366 equ $ ; IN [7TIMER HC154.BAS] IF HH61 = 10 THEN HH61 = 0
        movlw 10
        subwf hh61,W
        set@page BC@LL318
        btfss STATUS,2
        goto BC@LL318
        clrf hh61
BC@LL318
F1_000367 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 30
        clrf delay
FR@LB320
        movlw 31
        subwf delay,W
        set@page NX@LB321
        btfsc STATUS,0
        goto NX@LB321
F1_000368 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB322
F1_000369 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB320
        btfss STATUS,0
        goto FR@LB320
NX@LB321
F1_000370 equ $ ; IN [7TIMER HC154.BAS] EWRITE 20,[HH61]
        movlw 20
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh61,W
        f@call EE@WR
F1_000371 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING22
        set@page BC@LL323
        btfss PORTC,5
        goto BC@LL323
        F@JUMP setting22
BC@LL323
F1_000372 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL325
        btfsc PORTC,4
        goto BC@LL325
        F@JUMP main
BC@LL325
F1_000373 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING21
        F@JUMP setting21
setting22
F1_000376 equ $ ; IN [7TIMER HC154.BAS] WRT[22] = 1
        movlw 1
        movwf wrt#22
F1_000377 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH62 = HH62 + 1
        set@page BC@LL327
        btfss PORTC,6
        goto BC@LL327
        incf hh62,F
BC@LL327
F1_000378 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH62 = HH62 - 1
        set@page BC@LL329
        btfss PORTC,7
        goto BC@LL329
        decf hh62,F
BC@LL329
F1_000379 equ $ ; IN [7TIMER HC154.BAS] IF HH62 < 0 THEN HH62 = 9
        set@page BC@LL331
        btfss hh62,7
        goto BC@LL331
        movlw 9
        movwf hh62
BC@LL331
F1_000380 equ $ ; IN [7TIMER HC154.BAS] IF HH62 = 10 THEN HH62 = 0
        movlw 10
        subwf hh62,W
        set@page BC@LL333
        btfss STATUS,2
        goto BC@LL333
        clrf hh62
BC@LL333
F1_000381 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 30
        clrf delay
FR@LB335
        movlw 31
        subwf delay,W
        set@page NX@LB336
        btfsc STATUS,0
        goto NX@LB336
F1_000382 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB337
F1_000383 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB335
        btfss STATUS,0
        goto FR@LB335
NX@LB336
F1_000384 equ $ ; IN [7TIMER HC154.BAS] EWRITE 21,[HH62]
        movlw 21
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh62,W
        f@call EE@WR
F1_000385 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING23
        set@page BC@LL338
        btfss PORTC,5
        goto BC@LL338
        F@JUMP setting23
BC@LL338
F1_000386 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL340
        btfsc PORTC,4
        goto BC@LL340
        F@JUMP main
BC@LL340
F1_000387 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING22
        F@JUMP setting22
setting23
F1_000390 equ $ ; IN [7TIMER HC154.BAS] WRT[23] = 1
        movlw 1
        movwf wrt#23
F1_000391 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM61 = MM61 + 1
        set@page BC@LL342
        btfss PORTC,6
        goto BC@LL342
        incf mm61,F
BC@LL342
F1_000392 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM61 = MM61 - 1
        set@page BC@LL344
        btfss PORTC,7
        goto BC@LL344
        decf mm61,F
BC@LL344
F1_000393 equ $ ; IN [7TIMER HC154.BAS] IF MM61 < 0 THEN MM61 = 9
        set@page BC@LL346
        btfss mm61,7
        goto BC@LL346
        movlw 9
        movwf mm61
BC@LL346
F1_000394 equ $ ; IN [7TIMER HC154.BAS] IF MM61 = 10 THEN MM61 = 0
        movlw 10
        subwf mm61,W
        set@page BC@LL348
        btfss STATUS,2
        goto BC@LL348
        clrf mm61
BC@LL348
F1_000395 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 30
        clrf delay
FR@LB350
        movlw 31
        subwf delay,W
        set@page NX@LB351
        btfsc STATUS,0
        goto NX@LB351
F1_000396 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB352
F1_000397 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB350
        btfss STATUS,0
        goto FR@LB350
NX@LB351
F1_000398 equ $ ; IN [7TIMER HC154.BAS] EWRITE 22,[MM61]
        movlw 22
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm61,W
        f@call EE@WR
F1_000399 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING24
        set@page BC@LL353
        btfss PORTC,5
        goto BC@LL353
        F@JUMP setting24
BC@LL353
F1_000400 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL355
        btfsc PORTC,4
        goto BC@LL355
        F@JUMP main
BC@LL355
F1_000401 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING23
        F@JUMP setting23
setting24
F1_000404 equ $ ; IN [7TIMER HC154.BAS] WRT[24] = 1
        movlw 1
        movwf wrt#24
F1_000405 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM62 = MM62 + 1
        set@page BC@LL357
        btfss PORTC,6
        goto BC@LL357
        incf mm62,F
BC@LL357
F1_000406 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM62 = MM62 - 1
        set@page BC@LL359
        btfss PORTC,7
        goto BC@LL359
        decf mm62,F
BC@LL359
F1_000407 equ $ ; IN [7TIMER HC154.BAS] IF MM62 < 0 THEN MM62 = 9
        set@page BC@LL361
        btfss mm62,7
        goto BC@LL361
        movlw 9
        movwf mm62
BC@LL361
F1_000408 equ $ ; IN [7TIMER HC154.BAS] IF MM62 = 10 THEN MM62 = 0
        movlw 10
        subwf mm62,W
        set@page BC@LL363
        btfss STATUS,2
        goto BC@LL363
        clrf mm62
BC@LL363
F1_000409 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 30
        clrf delay
FR@LB365
        movlw 31
        subwf delay,W
        set@page NX@LB366
        btfsc STATUS,0
        goto NX@LB366
F1_000410 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB367
F1_000411 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB365
        btfss STATUS,0
        goto FR@LB365
NX@LB366
F1_000412 equ $ ; IN [7TIMER HC154.BAS] EWRITE 23,[MM62]
        movlw 23
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm62,W
        f@call EE@WR
F1_000413 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING25
        set@page BC@LL368
        btfss PORTC,5
        goto BC@LL368
        F@JUMP setting25
BC@LL368
F1_000414 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL370
        btfsc PORTC,4
        goto BC@LL370
        F@JUMP main
BC@LL370
F1_000415 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING24
        F@JUMP setting24
setting25
F1_000418 equ $ ; IN [7TIMER HC154.BAS] WRT[25] = 1
        movlw 1
        movwf wrt#25
F1_000419 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH71 = HH71 + 1
        set@page BC@LL372
        btfss PORTC,6
        goto BC@LL372
        incf hh71,F
BC@LL372
F1_000420 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH71 = HH71 - 1
        set@page BC@LL374
        btfss PORTC,7
        goto BC@LL374
        decf hh71,F
BC@LL374
F1_000421 equ $ ; IN [7TIMER HC154.BAS] IF HH71 < 0 THEN HH71 = 9
        set@page BC@LL376
        btfss hh71,7
        goto BC@LL376
        movlw 9
        movwf hh71
BC@LL376
F1_000422 equ $ ; IN [7TIMER HC154.BAS] IF HH71 = 10 THEN HH71 = 0
        movlw 10
        subwf hh71,W
        set@page BC@LL378
        btfss STATUS,2
        goto BC@LL378
        clrf hh71
BC@LL378
F1_000423 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 30
        clrf delay
FR@LB380
        movlw 31
        subwf delay,W
        set@page NX@LB381
        btfsc STATUS,0
        goto NX@LB381
F1_000424 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB382
F1_000425 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB380
        btfss STATUS,0
        goto FR@LB380
NX@LB381
F1_000426 equ $ ; IN [7TIMER HC154.BAS] EWRITE 24,[HH71]
        movlw 24
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh71,W
        f@call EE@WR
F1_000427 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING26
        set@page BC@LL383
        btfss PORTC,5
        goto BC@LL383
        F@JUMP setting26
BC@LL383
F1_000428 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL385
        btfsc PORTC,4
        goto BC@LL385
        F@JUMP main
BC@LL385
F1_000429 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING25
        F@JUMP setting25
setting26
F1_000432 equ $ ; IN [7TIMER HC154.BAS] WRT[26] = 1
        movlw 1
        movwf wrt#26
F1_000433 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN HH72 = HH72 + 1
        set@page BC@LL387
        btfss PORTC,6
        goto BC@LL387
        incf hh72,F
BC@LL387
F1_000434 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN HH72 = HH72 - 1
        set@page BC@LL389
        btfss PORTC,7
        goto BC@LL389
        decf hh72,F
BC@LL389
F1_000435 equ $ ; IN [7TIMER HC154.BAS] IF HH72 < 0 THEN HH72 = 9
        set@page BC@LL391
        btfss hh72,7
        goto BC@LL391
        movlw 9
        movwf hh72
BC@LL391
F1_000436 equ $ ; IN [7TIMER HC154.BAS] IF HH72 = 10 THEN HH72 = 0
        movlw 10
        subwf hh72,W
        set@page BC@LL393
        btfss STATUS,2
        goto BC@LL393
        clrf hh72
BC@LL393
F1_000437 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 20
        clrf delay
FR@LB395
        movlw 21
        subwf delay,W
        set@page NX@LB396
        btfsc STATUS,0
        goto NX@LB396
F1_000438 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB397
F1_000439 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB395
        btfss STATUS,0
        goto FR@LB395
NX@LB396
F1_000440 equ $ ; IN [7TIMER HC154.BAS] EWRITE 25,[HH72]
        movlw 25
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hh72,W
        f@call EE@WR
F1_000441 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING27
        set@page BC@LL398
        btfss PORTC,5
        goto BC@LL398
        F@JUMP setting27
BC@LL398
F1_000442 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL400
        btfsc PORTC,4
        goto BC@LL400
        F@JUMP main
BC@LL400
F1_000443 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING26
        F@JUMP setting26
setting27
F1_000446 equ $ ; IN [7TIMER HC154.BAS] WRT[27] = 1
        movlw 1
        movwf wrt#27
F1_000447 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM71 = MM71 + 1
        set@page BC@LL402
        btfss PORTC,6
        goto BC@LL402
        incf mm71,F
BC@LL402
F1_000448 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM71 = MM71 - 1
        set@page BC@LL404
        btfss PORTC,7
        goto BC@LL404
        decf mm71,F
BC@LL404
F1_000449 equ $ ; IN [7TIMER HC154.BAS] IF MM71 < 0 THEN MM71 = 9
        set@page BC@LL406
        btfss mm71,7
        goto BC@LL406
        movlw 9
        movwf mm71
BC@LL406
F1_000450 equ $ ; IN [7TIMER HC154.BAS] IF MM71 = 10 THEN MM71 = 0
        movlw 10
        subwf mm71,W
        set@page BC@LL408
        btfss STATUS,2
        goto BC@LL408
        clrf mm71
BC@LL408
F1_000451 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 20
        clrf delay
FR@LB410
        movlw 21
        subwf delay,W
        set@page NX@LB411
        btfsc STATUS,0
        goto NX@LB411
F1_000452 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB412
F1_000453 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB410
        btfss STATUS,0
        goto FR@LB410
NX@LB411
F1_000454 equ $ ; IN [7TIMER HC154.BAS] EWRITE 26,[MM71]
        movlw 26
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm71,W
        f@call EE@WR
F1_000455 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO SETTING28
        set@page BC@LL413
        btfss PORTC,5
        goto BC@LL413
        F@JUMP setting28
BC@LL413
F1_000456 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL415
        btfsc PORTC,4
        goto BC@LL415
        F@JUMP main
BC@LL415
F1_000457 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING27
        F@JUMP setting27
setting28
F1_000460 equ $ ; IN [7TIMER HC154.BAS] WRT[28] = 1
        movlw 1
        movwf wrt#28
F1_000461 equ $ ; IN [7TIMER HC154.BAS] IF UP = 1 THEN MM72 = MM72 + 1
        set@page BC@LL417
        btfss PORTC,6
        goto BC@LL417
        incf mm72,F
BC@LL417
F1_000462 equ $ ; IN [7TIMER HC154.BAS] IF DOWN = 1 THEN MM72 = MM72 - 1
        set@page BC@LL419
        btfss PORTC,7
        goto BC@LL419
        decf mm72,F
BC@LL419
F1_000463 equ $ ; IN [7TIMER HC154.BAS] IF MM72 < 0 THEN MM72 = 9
        set@page BC@LL421
        btfss mm72,7
        goto BC@LL421
        movlw 9
        movwf mm72
BC@LL421
F1_000464 equ $ ; IN [7TIMER HC154.BAS] IF MM72 = 10 THEN MM72 = 0
        movlw 10
        subwf mm72,W
        set@page BC@LL423
        btfss STATUS,2
        goto BC@LL423
        clrf mm72
BC@LL423
F1_000465 equ $ ; IN [7TIMER HC154.BAS] FOR DELAY = 0 TO 20
        clrf delay
FR@LB425
        movlw 21
        subwf delay,W
        set@page NX@LB426
        btfsc STATUS,0
        goto NX@LB426
F1_000466 equ $ ; IN [7TIMER HC154.BAS] GOSUB RESCAN
        f@call rescan
CT@LB427
F1_000467 equ $ ; IN [7TIMER HC154.BAS] NEXT DELAY
        movlw 1
        addwf delay,F
        set@page FR@LB425
        btfss STATUS,0
        goto FR@LB425
NX@LB426
F1_000468 equ $ ; IN [7TIMER HC154.BAS] EWRITE 27,[MM72]
        movlw 27
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm72,W
        f@call EE@WR
F1_000469 equ $ ; IN [7TIMER HC154.BAS] IF NXT = 1 THEN GOTO MAIN
        set@page BC@LL428
        btfss PORTC,5
        goto BC@LL428
        F@JUMP main
BC@LL428
F1_000470 equ $ ; IN [7TIMER HC154.BAS] IF SETUP = 0 THEN GOTO MAIN
        set@page BC@LL430
        btfsc PORTC,4
        goto BC@LL430
        F@JUMP main
BC@LL430
F1_000471 equ $ ; IN [7TIMER HC154.BAS] GOTO SETTING28
        F@JUMP setting28
rescan
F1_000474 equ $ ; IN [7TIMER HC154.BAS] IF WRT[1] = 1 THEN
        movf wrt#1,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL432
        btfss STATUS,2
        goto BC@LL432
F1_000475 equ $ ; IN [7TIMER HC154.BAS] SEG = HH11
        movf hh11,W
        movwf seg
F1_000476 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000477 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 1 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 1
        movwf PORTC
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000478 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL432
F1_000479 equ $ ; IN [7TIMER HC154.BAS] IF WRT[2] = 1 THEN
        movf wrt#2,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL434
        btfss STATUS,2
        goto BC@LL434
F1_000480 equ $ ; IN [7TIMER HC154.BAS] SEG = HH12
        movf hh12,W
        movwf seg
F1_000481 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000482 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 2 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 2
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000483 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL434
F1_000484 equ $ ; IN [7TIMER HC154.BAS] IF WRT[3] = 1 THEN
        movf wrt#3,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL436
        btfss STATUS,2
        goto BC@LL436
F1_000485 equ $ ; IN [7TIMER HC154.BAS] SEG = MM11
        movf mm11,W
        movwf seg
F1_000486 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000487 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 3 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 3
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000488 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL436
F1_000489 equ $ ; IN [7TIMER HC154.BAS] IF WRT[4] = 1 THEN
        movf wrt#4,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL438
        btfss STATUS,2
        goto BC@LL438
F1_000490 equ $ ; IN [7TIMER HC154.BAS] SEG = MM12
        movf mm12,W
        movwf seg
F1_000491 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000492 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 4 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 4
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000493 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL438
F1_000494 equ $ ; IN [7TIMER HC154.BAS] IF WRT[5] = 1 THEN
        movf wrt#5,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL440
        btfss STATUS,2
        goto BC@LL440
F1_000495 equ $ ; IN [7TIMER HC154.BAS] SEG = HH21
        movf hh21,W
        movwf seg
F1_000496 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000497 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 5 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 5
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000498 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL440
F1_000499 equ $ ; IN [7TIMER HC154.BAS] IF WRT[6] = 1 THEN
        movf wrt#6,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL442
        btfss STATUS,2
        goto BC@LL442
F1_000500 equ $ ; IN [7TIMER HC154.BAS] SEG = HH22
        movf hh22,W
        movwf seg
F1_000501 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000502 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 6 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 6
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000503 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL442
F1_000504 equ $ ; IN [7TIMER HC154.BAS] IF WRT[7] = 1 THEN
        movf wrt#7,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL444
        btfss STATUS,2
        goto BC@LL444
F1_000505 equ $ ; IN [7TIMER HC154.BAS] SEG = MM21
        movf mm21,W
        movwf seg
F1_000506 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000507 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 7 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 7
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000508 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL444
F1_000509 equ $ ; IN [7TIMER HC154.BAS] IF WRT[8] = 1 THEN
        movf wrt#8,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL446
        btfss STATUS,2
        goto BC@LL446
F1_000510 equ $ ; IN [7TIMER HC154.BAS] SEG = MM22
        movf mm22,W
        movwf seg
F1_000511 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000512 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 8 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 8
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000513 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL446
F1_000514 equ $ ; IN [7TIMER HC154.BAS] IF WRT[9] = 1 THEN
        movf wrt#9,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL448
        btfss STATUS,2
        goto BC@LL448
F1_000515 equ $ ; IN [7TIMER HC154.BAS] SEG = HH31
        movf hh31,W
        movwf seg
F1_000516 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000517 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 9 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 9
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000518 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL448
F1_000519 equ $ ; IN [7TIMER HC154.BAS] IF WRT[10] = 1 THEN
        movf wrt#10,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL450
        btfss STATUS,2
        goto BC@LL450
F1_000520 equ $ ; IN [7TIMER HC154.BAS] SEG = HH32
        movf hh32,W
        movwf seg
F1_000521 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000522 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 10 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 10
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000523 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL450
F1_000524 equ $ ; IN [7TIMER HC154.BAS] IF WRT[11] = 1 THEN
        movf wrt#11,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL452
        btfss STATUS,2
        goto BC@LL452
F1_000525 equ $ ; IN [7TIMER HC154.BAS] SEG = MM31
        movf mm31,W
        movwf seg
F1_000526 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000527 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 11 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 11
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000528 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL452
F1_000529 equ $ ; IN [7TIMER HC154.BAS] IF WRT[12] = 1 THEN
        movf wrt#12,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL454
        btfss STATUS,2
        goto BC@LL454
F1_000530 equ $ ; IN [7TIMER HC154.BAS] SEG = MM32
        movf mm32,W
        movwf seg
F1_000531 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000532 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 12 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 12
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000533 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL454
F1_000534 equ $ ; IN [7TIMER HC154.BAS] IF WRT[13] = 1 THEN
        movf wrt#13,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL456
        btfss STATUS,2
        goto BC@LL456
F1_000535 equ $ ; IN [7TIMER HC154.BAS] SEG = HH41
        movf hh41,W
        movwf seg
F1_000536 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000537 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 13 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 13
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000538 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL456
F1_000539 equ $ ; IN [7TIMER HC154.BAS] IF WRT[14] = 1 THEN
        movf wrt#14,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL458
        btfss STATUS,2
        goto BC@LL458
F1_000540 equ $ ; IN [7TIMER HC154.BAS] SEG = HH42
        movf hh42,W
        movwf seg
F1_000541 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000542 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 14 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 14
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000543 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL458
F1_000544 equ $ ; IN [7TIMER HC154.BAS] IF WRT[15] = 1 THEN
        movf wrt#15,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL460
        btfss STATUS,2
        goto BC@LL460
F1_000545 equ $ ; IN [7TIMER HC154.BAS] SEG = MM41
        movf mm41,W
        movwf seg
F1_000546 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000547 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 15 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 15
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000548 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL460
F1_000549 equ $ ; IN [7TIMER HC154.BAS] IF WRT[16] = 1 THEN
        movf wrt#16,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL462
        btfss STATUS,2
        goto BC@LL462
F1_000550 equ $ ; IN [7TIMER HC154.BAS] SEG = MM42
        movf mm42,W
        movwf seg
F1_000551 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000552 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 1 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 1
        movwf PORTA
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000553 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL462
F1_000554 equ $ ; IN [7TIMER HC154.BAS] IF WRT[17] = 1 THEN
        movf wrt#17,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL464
        btfss STATUS,2
        goto BC@LL464
F1_000555 equ $ ; IN [7TIMER HC154.BAS] SEG = HH51
        movf hh51,W
        movwf seg
F1_000556 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000557 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 2 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 2
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000558 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL464
F1_000559 equ $ ; IN [7TIMER HC154.BAS] IF WRT[18] = 1 THEN
        movf wrt#18,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL466
        btfss STATUS,2
        goto BC@LL466
F1_000560 equ $ ; IN [7TIMER HC154.BAS] SEG = HH52
        movf hh52,W
        movwf seg
F1_000561 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000562 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 3 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 3
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000563 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL466
F1_000564 equ $ ; IN [7TIMER HC154.BAS] IF WRT[19] = 1 THEN
        movf wrt#19,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL468
        btfss STATUS,2
        goto BC@LL468
F1_000565 equ $ ; IN [7TIMER HC154.BAS] SEG = MM51
        movf mm51,W
        movwf seg
F1_000566 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000567 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 4 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 4
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000568 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL468
F1_000569 equ $ ; IN [7TIMER HC154.BAS] IF WRT[20] = 1 THEN
        movf wrt#20,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL470
        btfss STATUS,2
        goto BC@LL470
F1_000570 equ $ ; IN [7TIMER HC154.BAS] SEG = MM52
        movf mm52,W
        movwf seg
F1_000571 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000572 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 5 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 5
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000573 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL470
F1_000574 equ $ ; IN [7TIMER HC154.BAS] IF WRT[21] = 1 THEN
        movf wrt#21,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL472
        btfss STATUS,2
        goto BC@LL472
F1_000575 equ $ ; IN [7TIMER HC154.BAS] SEG = HH61
        movf hh61,W
        movwf seg
F1_000576 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000577 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 6 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 6
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000578 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL472
F1_000579 equ $ ; IN [7TIMER HC154.BAS] IF WRT[22] = 1 THEN
        movf wrt#22,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL474
        btfss STATUS,2
        goto BC@LL474
F1_000580 equ $ ; IN [7TIMER HC154.BAS] SEG = HH62
        movf hh62,W
        movwf seg
F1_000581 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000582 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 7 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 7
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000583 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL474
F1_000584 equ $ ; IN [7TIMER HC154.BAS] IF WRT[23] = 1 THEN
        movf wrt#23,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL476
        btfss STATUS,2
        goto BC@LL476
F1_000585 equ $ ; IN [7TIMER HC154.BAS] SEG = MM61
        movf mm61,W
        movwf seg
F1_000586 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000587 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 8 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 8
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000588 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL476
F1_000589 equ $ ; IN [7TIMER HC154.BAS] IF WRT[24] = 1 THEN
        movf wrt#24,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL478
        btfss STATUS,2
        goto BC@LL478
F1_000590 equ $ ; IN [7TIMER HC154.BAS] SEG = MM62
        movf mm62,W
        movwf seg
F1_000591 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000592 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 9 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 9
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000593 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL478
F1_000594 equ $ ; IN [7TIMER HC154.BAS] IF WRT[25] = 1 THEN
        movf wrt#25,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL480
        btfss STATUS,2
        goto BC@LL480
F1_000595 equ $ ; IN [7TIMER HC154.BAS] SEG = HH71
        movf hh71,W
        movwf seg
F1_000596 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000597 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 10 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 10
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000598 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL480
F1_000599 equ $ ; IN [7TIMER HC154.BAS] IF WRT[26] = 1 THEN
        movf wrt#26,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL482
        btfss STATUS,2
        goto BC@LL482
F1_000600 equ $ ; IN [7TIMER HC154.BAS] SEG = HH72
        movf hh72,W
        movwf seg
F1_000601 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000602 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 11 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 11
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000603 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL482
F1_000604 equ $ ; IN [7TIMER HC154.BAS] IF WRT[27] = 1 THEN
        movf wrt#27,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL484
        btfss STATUS,2
        goto BC@LL484
F1_000605 equ $ ; IN [7TIMER HC154.BAS] SEG = MM71
        movf mm71,W
        movwf seg
F1_000606 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000607 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 12 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 12
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000608 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL484
F1_000609 equ $ ; IN [7TIMER HC154.BAS] IF WRT[28] = 1 THEN
        movf wrt#28,W
        movwf PBP#VAR0
        movlw 1
        subwf PBP#VAR0,W
        set@page BC@LL486
        btfss STATUS,2
        goto BC@LL486
F1_000610 equ $ ; IN [7TIMER HC154.BAS] SEG = MM72
        movf mm72,W
        movwf seg
F1_000611 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000612 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 13 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 13
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000613 equ $ ; IN [7TIMER HC154.BAS] ENDIF
BC@LL486
F1_000614 equ $ ; IN [7TIMER HC154.BAS] RETURN
        return
scan
F1_000617 equ $ ; IN [7TIMER HC154.BAS] SEG = HH11
        movf hh11,W
        movwf seg
F1_000618 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000619 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 1 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 1
        movwf PORTC
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000620 equ $ ; IN [7TIMER HC154.BAS] SEG = HH12
        movf hh12,W
        movwf seg
F1_000621 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000622 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 2 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 2
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000623 equ $ ; IN [7TIMER HC154.BAS] SEG = MM11
        movf mm11,W
        movwf seg
F1_000624 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000625 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 3 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 3
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000626 equ $ ; IN [7TIMER HC154.BAS] SEG = MM12
        movf mm12,W
        movwf seg
F1_000627 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000628 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 4 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 4
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000629 equ $ ; IN [7TIMER HC154.BAS] SEG = HH21
        movf hh21,W
        movwf seg
F1_000630 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000631 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 5 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 5
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000632 equ $ ; IN [7TIMER HC154.BAS] SEG = HH22
        movf hh22,W
        movwf seg
F1_000633 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000634 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 6 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 6
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000635 equ $ ; IN [7TIMER HC154.BAS] SEG = MM21
        movf mm21,W
        movwf seg
F1_000636 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000637 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 7 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 7
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000638 equ $ ; IN [7TIMER HC154.BAS] SEG = MM22
        movf mm22,W
        movwf seg
F1_000639 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000640 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 8 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 8
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000641 equ $ ; IN [7TIMER HC154.BAS] SEG = HH31
        movf hh31,W
        movwf seg
F1_000642 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000643 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 9 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 9
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000644 equ $ ; IN [7TIMER HC154.BAS] SEG = HH32
        movf hh32,W
        movwf seg
F1_000645 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000646 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 10 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 10
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000647 equ $ ; IN [7TIMER HC154.BAS] SEG = MM31
        movf mm31,W
        movwf seg
F1_000648 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000649 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 11 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 11
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000650 equ $ ; IN [7TIMER HC154.BAS] SEG = MM32
        movf mm32,W
        movwf seg
F1_000651 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000652 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 12 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 12
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000653 equ $ ; IN [7TIMER HC154.BAS] SEG = HH41
        movf hh41,W
        movwf seg
F1_000654 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000655 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 13 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 13
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000656 equ $ ; IN [7TIMER HC154.BAS] SEG = HH42
        movf hh42,W
        movwf seg
F1_000657 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000658 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 14 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 14
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000659 equ $ ; IN [7TIMER HC154.BAS] SEG = MM41
        movf mm41,W
        movwf seg
F1_000660 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000661 equ $ ; IN [7TIMER HC154.BAS] DIGIT1 = 15 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 15
        movwf PORTC
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000662 equ $ ; IN [7TIMER HC154.BAS] SEG = MM42
        movf mm42,W
        movwf seg
F1_000663 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000664 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 1 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 1
        movwf PORTA
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000665 equ $ ; IN [7TIMER HC154.BAS] SEG = HH51
        movf hh51,W
        movwf seg
F1_000666 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000667 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 2 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 2
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000668 equ $ ; IN [7TIMER HC154.BAS] SEG = HH52
        movf hh52,W
        movwf seg
F1_000669 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000670 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 3 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 3
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000671 equ $ ; IN [7TIMER HC154.BAS] SEG = MM51
        movf mm51,W
        movwf seg
F1_000672 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000673 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 4 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 4
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000674 equ $ ; IN [7TIMER HC154.BAS] SEG = MM52
        movf mm52,W
        movwf seg
F1_000675 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000676 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 5 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 5
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000677 equ $ ; IN [7TIMER HC154.BAS] SEG = HH61
        movf hh61,W
        movwf seg
F1_000678 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000679 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 6 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 6
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000680 equ $ ; IN [7TIMER HC154.BAS] SEG = HH62
        movf hh62,W
        movwf seg
F1_000681 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000682 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 7 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 7
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000683 equ $ ; IN [7TIMER HC154.BAS] SEG = MM61
        movf mm61,W
        movwf seg
F1_000684 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000685 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 8 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 8
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000686 equ $ ; IN [7TIMER HC154.BAS] SEG = MM62
        movf mm62,W
        movwf seg
F1_000687 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000688 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 9 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 9
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000689 equ $ ; IN [7TIMER HC154.BAS] SEG = HH71
        movf hh71,W
        movwf seg
F1_000690 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000691 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 10 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 10
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000692 equ $ ; IN [7TIMER HC154.BAS] SEG = HH72
        movf hh72,W
        movwf seg
F1_000693 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000694 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 11 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 11
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000695 equ $ ; IN [7TIMER HC154.BAS] SEG = MM71
        movf mm71,W
        movwf seg
F1_000696 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000697 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 12 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 12
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000698 equ $ ; IN [7TIMER HC154.BAS] SEG = MM72
        movf mm72,W
        movwf seg
F1_000699 equ $ ; IN [7TIMER HC154.BAS] GOSUB DISPLAY : DTA = SEG
        f@call DISPLAY
        movf seg,W
        movwf PORTB
F1_000700 equ $ ; IN [7TIMER HC154.BAS] DIGIT2 = 13 : DELAYMS 1 : DIGIT1 = 0 : DIGIT2 = 0
        movlw 13
        movwf PORTA
        movlw 1
        f@call DL@MS
        clrf PORTC
        clrf PORTA
F1_000701 equ $ ; IN [7TIMER HC154.BAS] RETURN
        return
DISPLAY
F1_000704 equ $ ; IN [7TIMER HC154.BAS] SEG = LOOKUP SEG,[63,6,91,79,102,109,125,7,127,111]
        movf seg,W
        sublw 9
        set@page LE@LB1
        btfss STATUS,0
        goto LE@LB1
        f@call L@LB3
        movwf seg
        F@JUMP LE@LB1
L@LB3
        movlw ((LK@LB2 >> 8) & 255)
        movwf PCLATH
        movf seg,W
        if($ >> 8) !=(($ + 10) >> 8)
        goto SO@LB487
        org(($ + 255) & 65280)
SO@LB487
        endif
        addwf PCL,F
LK@LB2
        dt 63,6,91,79,102,109,125,7,127,111
LE@LB1
F1_000705 equ $ ; IN [7TIMER HC154.BAS] RETURN
        return
F1_EOF equ $ ; 7TIMER HC154.BAS
PB@LB489
        F@JUMP PB@LB489
__EOF
__config HS_OSC & WDT_OFF & PWRTE_ON & BODEN_OFF & LVP_OFF & WRTE_ON & CP_OFF & DEBUG_OFF
        end
