;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
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
#define _SYSTEM_VARIABLE_COUNT 39
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#DTPORT PORTB
#define LCD#DTPIN 4
#define LCD#RSPORT PORTB
#define LCD#RSPIN 2
#define LCD#ENPORT PORTB
#define LCD#ENPIN 3
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
BPF = 32
BPFH = 33
CSTR#CT = 34
GEN = 35
GEN3H = 36
GEN4 = 37
GEN4H = 38
PP0 = 39
PP0H = 40
PP1 = 41
PP1H = 42
PP2 = 43
PP2H = 44
PP3 = 45
PP3H = 46
PP4 = 47
PP5 = 48
PP6 = 49
PP6H = 50
PP7 = 51
PP7H = 52
PP7HH = 53
PP7HHH = 54
PPZ = 55
PPZH = 56
PPZHH = 57
PP_AARG = 58
PP_AARGH = 59
PP_AARGHH = 60
PP_AARGHHH = 61
PP_BARG = 62
PP_BARGH = 63
PP_BARGHH = 64
PP_BARGHHH = 65
_AEXP = 66
_BEXP = 67
_FP_FLAGS = 68
_FP_TEMP = 69
_SIGN = 70
_B#VR1 = 71
Cnt = 72
nCnt = 73
To_cnt = 74
nTo_cnt = 75
adc = 76
adcH = 77
tempe = 78
ctrl = 79
variable ctrl#0=79,ctrl#1=80
#define __LCD_DTPORT PORTB
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define PIR PORTC,0
#define line1 PORTC,2
#define line2 PORTC,3
#define SimTX PORTC,4
#define SimRX PORTC,5
#define GIE INTCON,7
#define PEIE INTCON,6
#define INTE INTCON,4
#define INTF INTCON,1
#define INTEDG OPTION_REG,6
#define flag _B#VR1,0
#define fan_f _B#VR1,1
#define __XTAL 20
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
HSERIAL_SPBRG = 32
HSERIAL_TXSTA = 32
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
        return
FIND@ADDRESS
        bcf 3,7
        movwf 49
        clrf 50
        rlf 50,F
        movlw 0
        subwf 50,W
        movlw 128
        skpnz
        subwf 49,W
        skpc
        goto $ + 7
        btfsc 46,7
        goto $ + 5
        movlw 32
        addwf 49,F
        skpnc
        incf 50,F
        movlw 0
        subwf 50,W
        movlw 240
        skpnz
        subwf 49,W
        skpc
        goto $ + 6
        bsf 3,7
        movlw 32
        addwf 49,F
        skpnc
        incf 50,F
        movlw 1
        subwf 50,W
        movlw 112
        skpnz
        subwf 49,W
        skpc
        goto FA@EXT
        movlw 32
        addwf 49,F
FA@EXT
        movf 49,W
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
        movwf 40
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 48
        movlw 254
        call CH@SND
        movf 48,W
        goto CH@SND
OUT@DECB
        clrf 38
OUT@DECC
        movwf 43
        clrf 44
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 42
        movlw 16
        call D@DIG
        movlw 3
        movwf 42
        movlw 232
        call D@DIG
        clrf 42
        movlw 100
        call D@DIG
        clrf 42
        movlw 10
        call D@DIG
        movf 43,W
        goto SEND@IT
D@DIG
        movwf 41
        movf 44,W
        movwf 40
        movf 43,W
        movwf 39
        call D@VD
        movf 39,W
SEND@IT
        movwf 39
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 39,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
SB@STROUT
        movwf 43
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        btfsc 44,0
        bsf     3,7
        movf 43,W
        movwf 4
        movf 0,W
        bcf     3,7
        skpnz
        goto I@NT
        call CH@SND
        incf 43,F
        decf 37,F
        goto SB@STROUTLP
PRINT
        movwf 46
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 46,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 40
        movlw 128
        call DLUS@W
        movlw 51
        movwf 45
        call PR@LP
        movlw 19
        movwf 40
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 45
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 46,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 45
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 40
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
        movf 45,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 45,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 46,W
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
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 10
RD@AD
        movwf 45
        rlf 45,F
        rlf 45,F
        rlf 45,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        movf 30,W
        movwf 52
        bsf 3,5
        movf 158,W
        bcf 3,5
        movwf 51
        goto I@NT
DL@MS
        clrf 42
DLY@W
        movwf 41
DLY@P
        movlw 255
        addwf 41,F
        skpc
        addwf 42,F
        skpc
        goto I@NT
        movlw 3
        movwf 40
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 40
DLUS@W
        addlw 252
        movwf 39
        comf 40,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 39,F
        skpnc
        goto $ - 3
        addwf 39,F
        nop
        incfsz 40,F
        goto $ - 8
        return
D@VD
        clrf 44
        clrf 43
D@VD2
        movlw 16
        movwf 45
        rlf 40,W
        rlf 43,F
        rlf 44,F
        movf 41,W
        subwf 43,F
        movf 42,W
        skpc
        incfsz 42,W
        subwf 44,F
        skpnc
        goto $ + 8
        movf 41,W
        addwf 43,F
        movf 42,W
        skpnc
        incfsz 42,W
        addwf 44,F
        bcf 3,0
        rlf 39,F
        rlf 40,F
        decfsz 45,F
        goto $ - 21
        movf 39,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
FPS@32
        movlw 128
        xorwf 63,F
FPA@32
        movf 62,W
        subwf 58,W
        movwf 66
        btfsc 3,0
        goto FPA@L3
        comf 66,F
        incf 66,F
        movf 58,W
        movwf 69
        movf 62,W
        movwf 58
        movf 69,W
        movwf 62
        movf 59,W
        movwf 69
        movf 63,W
        movwf 59
        movf 69,W
        movwf 63
        movf 60,W
        movwf 69
        movf 64,W
        movwf 60
        movf 69,W
        movwf 64
        movf 61,W
        movwf 69
        movf 65,W
        movwf 61
        movf 69,W
        movwf 65
FPA@L3
        movlw 26
        subwf 66,W
        btfsc 3,0
        goto I@NT
        movf 62,F
        btfsc 3,2
        goto I@NT
        clrf 55
        movf 59,W
        movwf 69
        xorwf 63,W
        movwf 70
        bsf 59,7
        bsf 63,7
FPA@L8
        movlw 8
        subwf 66,F
        btfss 3,0
        goto FPA@L9
        movf 65,W
        movwf 55
        movf 64,W
        movwf 65
        movf 63,W
        movwf 64
        clrf 63
        goto FPA@L8
FPA@L9
        addwf 66,F
        btfsc 3,2
        goto FPA@L15
FPA@L14
        bcf 3,0
        rrf 63,F
        rrf 64,F
        rrf 65,F
        rrf 55,F
        decf 66,F
        movf 66,F
        btfss 3,2
        goto FPA@L14
FPA@L15
        btfss 70,7
        goto FPA@L17
        movf 65,W
        subwf 61,F
        movf 64,W
        btfss 3,0
        incfsz 64,W
        subwf 60,F
        movf 63,W
        btfss 3,0
        incfsz 63,W
        subwf 59,F
        btfsc 3,0
        goto FPA@L19
        comf 59,F
        comf 60,F
        comf 61,F
        incfsz 61,F
        goto $ + 4
        incf 60,F
        btfsc 3,2
        incf 59,F
        movlw 128
        xorwf 69,F
FPA@L19
        comf 55,F
        incf 55,F
        btfsc 3,2
        goto FPA@L21
        decf 61,F
        incfsz 61,W
        goto $ + 5
        decf 60,F
        incf 60,W
        btfsc 3,2
        decf 59,F
FPA@L21
        movlw 4
        movwf 66
FPA@L22
        movf 59,F
        btfss 3,2
        goto FPA@L23
        movf 60,W
        movwf 59
        movf 61,W
        movwf 60
        movf 55,W
        movwf 61
        clrf 55
        movlw 8
        subwf 58,F
        btfss 3,0
        goto FPA@RES0
        decf 66,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L22
FPA@L23
        btfsc 59,7
        goto FPA@L29
        bcf 3,0
        rlf 55,F
        rlf 61,F
        rlf 60,F
        rlf 59,F
        decf 58,F
        btfsc 3,2
        goto FPA@RES0
        goto FPA@L23
FPA@L29
        btfss 68,6
        goto FPA@L35
        btfss 55,7
        goto FPA@L35
        clrf 55
        goto FPA@INCREMENT_IT
FPA@L35
        goto FPA@L50
FPA@L17
        movf 65,W
        addwf 61,F
        movf 64,W
        btfsc 3,0
        incfsz 64,W
        addwf 60,F
        movf 63,W
        btfsc 3,0
        incfsz 63,W
        addwf 59,F
        btfss 3,0
        goto FPA@L40
FPA@ADJUST_RIGHT
        rrf 59,F
        rrf 60,F
        rrf 61,F
        rrf 55,F
        incf 58,F
        btfsc 3,2
        goto FPA@OVERFLOW
FPA@L40
        btfss 68,6
        goto FPA@L50
        btfss 55,7
        goto FPA@L50
FPA@INCREMENT_IT
        incfsz 61,F
        goto FPA@L50
        incfsz 60,F
        goto FPA@L50
        incfsz 59,F
        goto FPA@L50
        bsf 3,0
        bcf 58,0
        goto FPA@ADJUST_RIGHT
FPA@L50
        goto FPA@SET_SIGN
FPA@RES0
        clrf 58
        goto FPA@MANTISSA
FPA@OVERFLOW
        bsf 68,5
        movlw 255
        movwf 58
FPA@MANTISSA
        clrf 61
        clrf 60
        movlw 128
        movwf 59
FPA@SET_SIGN
        btfsc 69,7
        goto FPA@L52
        bcf 59,7
FPA@L52
        goto I@NT
FPD@32
        movf 59,W
        movwf 57
        xorwf 63,W
        movwf 70
        movf 62,F
        btfsc 3,2
        goto FPD@DIV0
        movf 58,F
        btfsc 3,2
        goto FPD@RES0
        movf 62,W
        subwf 58,F
        movlw 127
        btfsc 3,0
        goto FPD@L7
        addwf 58,F
        btfss 3,0
        goto FPD@UNDERFLOW
        goto FPD@L12
FPD@L7
        addwf 58,F
        btfsc 3,0
        goto FPD@OVERFLOW
FPD@L12
        movf 61,W
        movwf 55
        movf 60,W
        movwf 56
        bsf 57,7
        bsf 63,7
        movlw 24
        movwf 69
        clrf 61
        clrf 60
        clrf 59
        goto FPD@START
FPD@LOOP
        btfsc 3,0
        goto FPD@SUBTRACT
FPD@START
        movf 65,W
        subwf 55,W
        movf 64,W
        btfss 3,0
        incfsz 64,W
        subwf 56,W
        movf 63,W
        btfss 3,0
        incfsz 63,W
        subwf 57,W
        btfss 3,0
        goto FPD@SKIP_SUB
FPD@SUBTRACT
        movf 65,W
        subwf 55,F
        movf 64,W
        btfss 3,0
        incfsz 64,W
        subwf 56,F
        movf 63,W
        btfss 3,0
        incfsz 63,W
        subwf 57,F
        bsf 3,0
FPD@SKIP_SUB
        rlf 61,F
        rlf 60,F
        rlf 59,F
        rlf 55,F
        rlf 56,F
        rlf 57,F
        decfsz 69,F
        goto FPD@LOOP
        btfsc 59,7
        goto FPD@L20
        movf 58,F
        btfsc 3,2
        goto FPD@UNDERFLOW
        rrf 70,F
        decf 58,F
        incf 69,F
        rlf 70,F
        goto FPD@LOOP
FPD@L20
        btfss 68,6
        goto FPD@L36
        btfsc 3,0
        goto FPD@ADD_1
        movf 65,W
        subwf 55,F
        movf 64,W
        btfss 3,0
        incfsz 64,W
        subwf 56,F
        movf 63,W
        btfss 3,0
        incfsz 63,W
        subwf 57,F
        btfss 3,0
        goto FPD@L36
FPD@ADD_1
        incfsz 61,F
        goto FPD@L36
        incfsz 60,F
        goto FPD@L36
        incfsz 59,F
        goto FPD@L36
        rrf 59,F
        rrf 60,F
        rrf 61,F
        incf 58,F
        btfsc 3,2
        goto FPD@OVERFLOW
FPD@L36
        goto FPD@SET_SIGN
FPD@DIV0
        bsf 68,3
        goto FPD@SATURATE
FPD@UNDERFLOW
        bsf 68,2
FPD@RES0
        clrf 58
        goto FPD@MANTISSA
FPD@OVERFLOW
        bsf 68,1
FPD@SATURATE
        movlw 255
        movwf 58
FPD@MANTISSA
        clrf 61
        clrf 60
        movlw 128
        movwf 59
FPD@SET_SIGN
        btfsc 70,7
        goto FPD@L38
        bcf 59,7
FPD@L38
        goto I@NT
FPM@32
        movf 59,W
        movwf 57
        xorwf 63,W
        movwf 70
        movf 58,W
        xorlw 0
        btfss 3,2
        movf 62,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf 58,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf 58,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf 58,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf 61,W
        movwf 55
        movf 60,W
        movwf 56
        bsf 57,7
        bsf 63,7
        clrf 61
        clrf 60
        clrf 59
        movlw 24
        movwf 69
FPM@L9
        rrf 57,F
        rrf 56,F
        rrf 55,F
        btfss 3,0
        goto FPM@L12
        movf 65,W
        addwf 61,F
        movf 64,W
        btfsc 3,0
        incfsz 64,W
        addwf 60,F
        movf 63,W
        btfsc 3,0
        incfsz 63,W
        addwf 59,F
FPM@L12
        rrf 59,F
        rrf 60,F
        rrf 61,F
        decfsz 69,F
        goto FPM@L9
        btfsc 59,7
        goto FPM@L14
        rlf 61,F
        rlf 60,F
        rlf 59,F
        movf 58,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf 58,F
        rlf 57,W
FPM@L14
        btfss 68,6
        goto FPM@L28
        btfss 3,0
        goto FPM@L28
        incfsz 61,F
        goto FPM@L28
        incfsz 60,F
        goto FPM@L28
        incfsz 59,F
        goto FPM@L28
        bsf 3,0
        rrf 59,F
        rrf 60,F
        rrf 61,F
        incf 58,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf 68,2
FPM@RES0
        clrf 58
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf 68,1
        movlw 255
        movwf 58
FPM@MANTISSA
        clrf 61
        clrf 60
        movlw 128
        movwf 59
FPM@SET_SIGN
        btfsc 70,7
        goto FPM@L30
        bcf 59,7
FPM@L30
        goto I@NT
FL32@TOINT32
        movf 59,W
        movwf 70
        movlw 127
        subwf 58,W
        movwf 69
        btfsc 3,0
        goto FI@L3
        movlw 0
        goto FI@ASSIGNW
FI@L3
        bsf 59,7
        clrf 58
        clrf 55
        movf 69,W
        sublw 23
        movwf 69
        btfsc 3,0
        goto FI@L5
        movlw 8
        addwf 69,F
        btfss 3,0
        goto FI@OVERFLOW
FI@L7
        movf 59,W
        movwf 58
        movf 60,W
        movwf 59
        movf 61,W
        movwf 60
        clrf 61
        goto FI@L8
FI@L5
        movlw 8
        subwf 69,F
        btfss 3,0
        goto FI@L10
        movf 61,W
        movwf 55
        movf 60,W
        movwf 61
        movf 59,W
        movwf 60
        clrf 59
        goto FI@L5
FI@L10
        addwf 69,F
FI@L8
        movf 69,F
        btfsc 3,2
        goto FI@L16
FI@L15
        bcf 3,0
        rrf 58,F
        rrf 59,F
        rrf 60,F
        rrf 61,F
        rrf 55,F
        decfsz 69,F
        goto FI@L15
FI@L16
        btfsc 58,0
        goto FI@OVERFLOW
        btfss 68,6
        goto FI@L30
        btfss 55,7
        goto FI@L30
        incfsz 61,F
        goto FI@L30
        incfsz 60,F
        goto FI@L30
        incf 59,F
FI@L30
        movf 58,W
        movwf 55
        movf 61,W
        movwf 58
        movf 55,W
        movwf 61
        movf 59,W
        movwf 55
        movf 60,W
        movwf 59
        movf 55,W
        movwf 60
        btfss 70,7
        goto FI@L32
        comf 61,F
        comf 60,F
        comf 59,F
        comf 58,F
        incfsz 58,F
        goto FI@L32
        incfsz 59,F
        goto FI@L32
        incf 60,F
        btfsc 3,2
        incf 61,F
FI@L32
        movf 58,W
        goto I@NT
FI@OVERFLOW
        bsf 68,5
        movlw 255
FI@ASSIGNW
        movwf 61
        movwf 60
        movwf 59
        movwf 58
        goto I@NT
INT08@TOFL32
        movwf 58
        clrf 59
INT16@TOFL32
        clrf 60
        clrf 61
INT32@TOFL32
        movlw 150
        movwf 69
        bcf 70,7
        btfss 61,7
        goto IF@L5
        comf 61,F
        comf 60,F
        comf 59,F
        comf 58,F
        incfsz 58,F
        goto IF@L4
        incfsz 59,F
        goto IF@L4
        incf 60,F
        btfsc 3,2
        incf 61,F
IF@L4
        bsf 70,7
IF@L5
        movf 61,F
        btfsc 3,2
        goto IF@L7
        btfss 68,6
        goto IF@L17
        btfss 61,7
        goto IF@L17
        incfsz 59,F
        goto IF@L17
        incfsz 60,F
        goto IF@L17
        incfsz 61,F
        goto IF@L17
        bsf 3,0
        rrf 61,F
        rrf 60,F
        rrf 59,F
        incf 69,F
IF@L17
        movlw 8
        addwf 69,F
        movf 59,W
        movwf 58
        movf 60,W
        movwf 59
        movf 61,W
        movwf 60
        goto IF@L18
IF@L7
        movf 60,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 69,F
        movf 59,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 69,F
        movf 58,W
        btfss 3,2
        goto IF@L22
        movf 61,W
        movwf 69
        goto IF@EXIT
IF@L22
        clrf 58
IF@L20
        movwf 60
        movf 58,W
        movwf 59
        clrf 58
IF@L18
        btfsc 60,7
        goto IF@L24
        bcf 3,0
        rlf 58,F
        rlf 59,F
        rlf 60,F
        decf 69,F
        goto IF@L18
IF@L24
        btfss 70,7
        bcf 60,7
IF@EXIT
        movf 58,W
        movwf 61
        movf 69,W
        movwf 58
        movf 60,W
        movwf 69
        movf 59,W
        movwf 60
        movf 69,W
        movwf 59
        goto I@NT
GET@ARRAY
        movwf 45
GET@ARRAYW
        movf 36,W
        movwf 46
        movf 45,W
        addwf 36,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 32
        movwf 153
        movlw 32
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        movlw 64
        movwf 68
        clrf 32
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000003 equ $ ; IN [ABRAR] ADCON1 = %10000000
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
        bsf INTCON,7
        bcf STATUS,5
ram_bank = 0
        F@JUMP INT@LBL2
INT@LBL1
        btfsc INTCON,7
        return
        F@JUMP ZeroCross
INT@LBL2
        f@call INT@LBL1
F1_000007 equ $ ; IN [ABRAR] TRISB = $01 : PORTB = $00
        f@call INT@LBL1
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf TRISB
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        f@call INT@LBL1
        clrf PORTB
        f@call INT@LBL1
F1_000008 equ $ ; IN [ABRAR] TRISC = $01 : PORTC = $00
        f@call INT@LBL1
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        f@call INT@LBL1
        clrf PORTC
        f@call INT@LBL1
F1_000009 equ $ ; IN [ABRAR] PRINT 254,64,6,9,9,6,0,0,0,0
        movlw 254
        f@call PRINT
        movlw 64
        f@call PRINT
        movlw 6
        f@call PRINT
        movlw 9
        f@call PRINT
        movlw 9
        f@call PRINT
        movlw 6
        f@call PRINT
        movlw 0
        f@call PRINT
        movlw 0
        f@call PRINT
        movlw 0
        f@call PRINT
        movlw 0
        f@call PRINT
        f@call INT@LBL1
F1_000031 equ $ ; IN [ABRAR] GIE = 1 : PEIE = 1 : INTE = 1 : INTF = 0 : INTEDG = 0
        f@call INT@LBL1
        bsf INTCON,7
        f@call INT@LBL1
        f@call INT@LBL1
        bsf INTCON,6
        f@call INT@LBL1
        f@call INT@LBL1
        bsf INTCON,4
        f@call INT@LBL1
        f@call INT@LBL1
        bcf INTCON,1
        f@call INT@LBL1
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf OPTION_REG,6
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000042 equ $ ; IN [ABRAR] CTRL[0] = 26
        f@call INT@LBL1
        movlw 26
        movwf ctrl#0
        f@call INT@LBL1
F1_000043 equ $ ; IN [ABRAR] CTRL[1] = 13
        f@call INT@LBL1
        movlw 13
        movwf ctrl#1
        f@call INT@LBL1
F1_000045 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
        f@call INT@LBL1
F1_000046 equ $ ; IN [ABRAR] LINE1 = 1 : LINE2 = 1
        f@call INT@LBL1
        bsf PORTC,2
        f@call INT@LBL1
        f@call INT@LBL1
        bsf PORTC,3
        f@call INT@LBL1
F1_000047 equ $ ; IN [ABRAR] PRINT AT 1,1, " INSTALLIZING.. "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
        f@call INT@LBL1
F1_000048 equ $ ; IN [ABRAR] DELAYMS 6000
        movlw 23
        movwf PP1H
        movlw 112
        f@call DLY@W
sys_Active
        f@call INT@LBL1
F1_000051 equ $ ; IN [ABRAR] LINE1 = 1 : LINE2 = 1 : FAN_F = 0
        f@call INT@LBL1
        bsf PORTC,2
        f@call INT@LBL1
        f@call INT@LBL1
        bsf PORTC,3
        f@call INT@LBL1
        f@call INT@LBL1
        bcf _B#VR1,1
        f@call INT@LBL1
F1_000052 equ $ ; IN [ABRAR] PRINT AT 1,1, "SYSTEM ACTIVATED"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
        f@call INT@LBL1
F1_000053 equ $ ; IN [ABRAR] GOSUB TEMP_SHOW
        f@call Temp_Show
        f@call INT@LBL1
F1_000054 equ $ ; IN [ABRAR] IF PIR = 0 THEN GOSUB DETECTED
        set@page BC@LL2
        btfsc PORTC,0
        goto BC@LL2
        f@call INT@LBL1
        f@call detected
BC@LL2
        f@call INT@LBL1
F1_000055 equ $ ; IN [ABRAR] GOTO SYS_ACTIVE
        F@JUMP sys_Active
Temp_Show
        f@call INT@LBL1
F1_000058 equ $ ; IN [ABRAR] ADC = ADIN 0
        f@call INT@LBL1
        movlw 0
        f@call RD@AD
        movwf adc
        movf PP7H,W
        movwf adcH
        f@call INT@LBL1
F1_000059 equ $ ; IN [ABRAR] TEMPE = (ADC * 0.4887) - 3
        f@call INT@LBL1
        movf adc,W
        movwf PP_AARG
        movf adcH,W
        movwf PP_AARGH
        f@call INT16@TOFL32
        movlw 227
        movwf PP_BARGHHH
        movlw 54
        movwf PP_BARGHH
        movlw 122
        movwf PP_BARGH
        movlw 125
        movwf PP_BARG
        f@call FPM@32
        movf PP_AARGHHH,W
        movwf PP7HHH
        movf PP_AARGHH,W
        movwf PP7HH
        movf PP_AARGH,W
        movwf PP7H
        movf PP_AARG,W
        movwf PP7
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 64
        movwf PP_BARGH
        movlw 128
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
        f@call FL32@TOINT32
        movwf tempe
        f@call INT@LBL1
F1_000060 equ $ ; IN [ABRAR] PRINT AT 2,1, "   TEMP: ",DEC TEMPE
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
        movf tempe,W
        f@call OUT@DECB
        f@call INT@LBL1
F1_000061 equ $ ; IN [ABRAR] PRINT AT 2,12,0,"C   "
        movlw 128
        movwf BPFH
        movlw 203
        f@call LCD@CRS
        movlw 0
        f@call PRINT
        movlw 67
        f@call PRINT
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
        f@call INT@LBL1
F1_000062 equ $ ; IN [ABRAR] CNT = TEMPE / 3.5 : TO_CNT = 10
        f@call INT@LBL1
        movf tempe,W
        f@call INT08@TOFL32
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 96
        movwf PP_BARGH
        movlw 128
        movwf PP_BARG
        f@call FPD@32
        f@call FL32@TOINT32
        movwf Cnt
        f@call INT@LBL1
        f@call INT@LBL1
        movlw 10
        movwf To_cnt
        f@call INT@LBL1
F1_000063 equ $ ; IN [ABRAR] RETURN
        return
detected
        f@call INT@LBL1
F1_000066 equ $ ; IN [ABRAR] LINE1 = 0 : FAN_F = 1
        f@call INT@LBL1
        bcf PORTC,2
        f@call INT@LBL1
        f@call INT@LBL1
        bsf _B#VR1,1
        f@call INT@LBL1
F1_000067 equ $ ; IN [ABRAR] GOSUB SMS
        f@call SMS
        f@call INT@LBL1
F1_000068 equ $ ; IN [ABRAR] PRINT AT 1,1, "HUMAN DETECTED!!"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000069 equ $ ; IN [ABRAR] REPEAT
BC@LL3
        f@call INT@LBL1
F1_000070 equ $ ; IN [ABRAR] GOSUB TEMP_SHOW
        f@call Temp_Show
        f@call INT@LBL1
F1_000071 equ $ ; IN [ABRAR] IF FAN_F = 1 THEN GOSUB FAN_REGULATION
        set@page BC@LL7
        btfss _B#VR1,1
        goto BC@LL7
        f@call INT@LBL1
        f@call FAN_regulation
BC@LL7
        f@call INT@LBL1
BC@LL5
F1_000072 equ $ ; IN [ABRAR] UNTIL PIR = 1
        set@page BC@LL3
        btfss PORTC,0
        goto BC@LL3
BC@LL4
        f@call INT@LBL1
F1_000073 equ $ ; IN [ABRAR] RETURN
        return
SMS
        f@call INT@LBL1
F1_000076 equ $ ; IN [ABRAR] PRINT AT 1,1, "SMS SENDING....."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
        f@call INT@LBL1
F1_000077 equ $ ; IN [ABRAR] PRINT AT 2,1, "  TO:", CSTR SMSNUMBER
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 84
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw ((SMSnumber >> 8) & 255)
        movwf GEN4H
        movlw (SMSnumber & 255)
        f@call C@STROUT
        f@call INT@LBL1
F1_000078 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1",13]
        movlw 4
        movwf BPFH
        movlw (STR@LB6 >> 8) & 255
        movwf GEN4H
        movlw STR@LB6 & 255
        f@call C@STROUT
        movlw 13
        f@call HRSOUT
        f@call INT@LBL1
F1_000079 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
        f@call INT@LBL1
F1_000080 equ $ ; IN [ABRAR] HSEROUT["AT + CMGS = ",34,"+88",CSTR SMSNUMBER,34,13]
        movlw 4
        movwf BPFH
        movlw (STR@LB7 >> 8) & 255
        movwf GEN4H
        movlw STR@LB7 & 255
        f@call C@STROUT
        movlw 34
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        f@call HRSOUT
        movlw ((SMSnumber >> 8) & 255)
        movwf GEN4H
        movlw (SMSnumber & 255)
        f@call C@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        f@call INT@LBL1
F1_000081 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
        f@call INT@LBL1
F1_000082 equ $ ; IN [ABRAR] HSEROUT["SOMEONE ENTERED INTO YOUR HOME. TEMPERATURE: ",_
        movlw 4
        movwf BPFH
        movlw (STR@LB8 >> 8) & 255
        movwf GEN4H
        movlw STR@LB8 & 255
        f@call C@STROUT
        movf tempe,W
        f@call OUT@DECB
        movlw (STR@LB9 >> 8) & 255
        movwf GEN4H
        movlw STR@LB9 & 255
        f@call C@STROUT
        movlw 13
        f@call HRSOUT
        f@call INT@LBL1
F1_000084 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
        f@call INT@LBL1
F1_000085 equ $ ; IN [ABRAR] HSEROUT[STR CTRL]
        movlw 4
        movwf BPFH
        movlw 2
        movwf GEN4
        clrf PP2H
        movlw 79
        f@call SB@STROUT
        f@call INT@LBL1
F1_000086 equ $ ; IN [ABRAR] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
        f@call INT@LBL1
F1_000087 equ $ ; IN [ABRAR] RETURN
        return
FAN_regulation
        f@call INT@LBL1
F1_000090 equ $ ; IN [ABRAR] IF FLAG = 1 THEN
        set@page BC@LL11
        btfss _B#VR1,0
        goto BC@LL11
        f@call INT@LBL1
F1_000091 equ $ ; IN [ABRAR] IF NCNT > 0 THEN
        movf nCnt,F
        set@page BC@LL13
        btfsc STATUS,2
        goto BC@LL13
        f@call INT@LBL1
F1_000092 equ $ ; IN [ABRAR] LINE2 = 1
        f@call INT@LBL1
        bsf PORTC,3
        f@call INT@LBL1
F1_000093 equ $ ; IN [ABRAR] DELAYUS 250
        movlw 250
        f@call DL@US
        f@call INT@LBL1
F1_000094 equ $ ; IN [ABRAR] LINE2 = 0
        f@call INT@LBL1
        bcf PORTC,3
        f@call INT@LBL1
F1_000095 equ $ ; IN [ABRAR] DEC NCNT
        decf nCnt,F
        F@JUMP BC@LL14
BC@LL13
F1_000096 equ $ ; IN [ABRAR] ELSE
        f@call INT@LBL1
F1_000097 equ $ ; IN [ABRAR] LINE2 = 1
        f@call INT@LBL1
        bsf PORTC,3
F1_000098 equ $ ; IN [ABRAR] ENDIF
BC@LL14
        f@call INT@LBL1
F1_000099 equ $ ; IN [ABRAR] DEC NTO_CNT
        decf nTo_cnt,F
        f@call INT@LBL1
F1_000100 equ $ ; IN [ABRAR] IF NTO_CNT == 0 THEN
        movf nTo_cnt,F
        set@page BC@LL16
        btfss STATUS,2
        goto BC@LL16
        f@call INT@LBL1
F1_000101 equ $ ; IN [ABRAR] NTO_CNT = TO_CNT
        f@call INT@LBL1
        movf To_cnt,W
        movwf nTo_cnt
        f@call INT@LBL1
F1_000102 equ $ ; IN [ABRAR] NCNT = CNT
        f@call INT@LBL1
        movf Cnt,W
        movwf nCnt
F1_000103 equ $ ; IN [ABRAR] ENDIF
BC@LL16
        f@call INT@LBL1
F1_000104 equ $ ; IN [ABRAR] FLAG = 0
        f@call INT@LBL1
        bcf _B#VR1,0
F1_000105 equ $ ; IN [ABRAR] ENDIF
BC@LL11
        f@call INT@LBL1
F1_000106 equ $ ; IN [ABRAR] RETURN
        return
SMSnumber
        de 48,49,56,55,54,54
        de 56,51,50,53,53
        DATA 0
F1_000111 equ $ ; IN [ABRAR] DISABLE
ZeroCross
F1_000113 equ $ ; IN [ABRAR] IF INTF == 1 THEN
        set@page BC@LL18
        btfss INTCON,1
        goto BC@LL18
F1_000114 equ $ ; IN [ABRAR] FLAG = 1
        bsf _B#VR1,0
F1_000115 equ $ ; IN [ABRAR] INTF = 0
        bcf INTCON,1
F1_000116 equ $ ; IN [ABRAR] ENDIF
BC@LL18
F1_000117 equ $ ; IN [ABRAR] RESUME
        retfie
F1_000118 equ $ ; IN [ABRAR] ENABLE
F1_EOF equ $ ; ABRAR
PB@LB20
        f@call INT@LBL1
        F@JUMP PB@LB20
STR@LB1
        de 32,73,110,115,116,97,108,108,105,122,105,110,103,46,46,32,0
STR@LB2
        de 83,121,115,116,101,109,32,65,99,116,105,118,97,116,101,100,0
STR@LB3
        de 32,32,32,84,101,109,112,58,32,0
STR@LB4
        de 72,117,109,97,110,32,68,101,116,101,99,116,101,100,33,33,0
STR@LB5
        de 83,77,83,32,83,101,110,100,105,110,103,46,46,46,46,46,0
STR@LB6
        de 65,84,43,67,77,71,70,61,49,0
STR@LB7
        de 65,84,32,43,32,67,77,71,83,32,61,32,0
STR@LB8
        de 83,111,109,101,111,110,101,32,69,110,116,101,114,101,100,32,105,110,116,111,32,121,111,117
        de 114,32,72,111,109,101,46,32,84,101,109,112,101,114,97,116,117,114,101,58,32,0
STR@LB9
        de 32,68,101,103,114,101,101,32,67,101,108,115,105,117,115,0
__EOF
__config HS_OSC&WDT_OFF&PWRTE_OFF&BODEN_OFF&LVP_OFF&CP_ALL&CPD_ON&DEBUG_OFF
        end
