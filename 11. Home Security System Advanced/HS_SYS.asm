;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F877A, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PORTD equ 0X0008
PORTE equ 0X0009
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
TRISD equ 0X0088
TRISE equ 0X0089
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
CMCON equ 0X009C
CVRCON equ 0X009D
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
TMR0IE=5
INTE=4
RBIE=3
T0IF=2
TMR0IF=2
INTF=1
RBIF=0
PSPIF=7
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CMIF=6
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
IBF=7
OBF=6
IBOV=5
PSPMODE=4
TRISE2=2
TRISE1=1
TRISE0=0
PSPIE=7
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CMIE=6
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
C2OUT=7
C1OUT=6
C2INV=5
C1INV=4
CIS=3
CM2=2
CM1=1
CM0=0
CVREN=7
CVROE=6
CVRR=5
CVR3=3
CVR2=2
CVR1=1
CVR0=0
ADFM=7
ADCS2=6
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
rd=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X8F-0X90, 0X95-0X97, 0X9A-0X9B
  __BADRAM 0X105, 0X107-0X109
  __BADRAM 0X185, 0X187-0X189, 0X18E-0X18F
CP_ALL equ 0X1FFF
CP_OFF equ 0X3FFF
DEBUG_OFF equ 0X3FFF
DEBUG_ON equ 0X37FF
WRT_1FOURTH equ 0X3BFF
CPD_OFF equ 0X3FFF
CPD_ON equ 0X3EFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
RC_OSC equ 0X3FFF
HS_OSC equ 0X3FFE
XT_OSC equ 0X3FFD
LP_OSC equ 0X3FFC
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
CP_ON equ 0X1FFF
FOSC_EXTRC equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
WRT_1FOURTH equ 0X3BFF
WRT_256 equ 0X3DFF
WRT_HALF equ 0X39FF
WRT_OFF equ 0X3FFF
#define __16F877A 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 368
#define _RAM_END 0X0170
#define _MAXMEM 8192
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 4
#define _BANKS 3
#define RAM_BANKS 4
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 8
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 21
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
PBP#VAR0 = 39
PP0 = 40
PP0H = 41
PP1 = 42
PP1H = 43
PP2 = 44
PP2H = 45
PP3 = 46
PP3H = 47
PP4 = 48
PP5 = 49
PP6 = 50
PP6H = 51
PP7 = 52
_B#VR1 = 53
pos = 54
vib_count = 55
td = 56
rd = 57
password = 58
variable password#0=58,password#1=59,password#2=60,password#3=61
variable password#4=62,password#5=63,password#6=64,password#7=65
RXD = 66
variable RXD#0=66,RXD#1=67,RXD#2=68,RXD#3=69
variable RXD#4=70,RXD#5=71,RXD#6=72,RXD#7=73
variable RXD#8=74,RXD#9=75,RXD#10=76,RXD#11=77
variable RXD#12=78,RXD#13=79,RXD#14=80,RXD#15=81
variable RXD#16=82,RXD#17=83,RXD#18=84,RXD#19=85
get_ID = 86
ID_no = 87
checksum = 88
IDs = 89
key = 90
key_value = 91
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define A1 PORTD,1
#define A2 PORTD,2
#define B1 PORTC,5
#define motor PORTE,2
#define buzz PORTD,3
#define LDR PORTC,3
#define PIR PORTC,0
#define Smoke PORTC,1
#define passMode PORTD,0
#define vibrator PORTD,7
#define check_point _B#VR1,0
#define BT_mode rd,0
#define BT_ok rd,1
#define FP_error _B#VR1,1
#define col_1 PORTA,3
#define col_2 PORTA,2
#define col_3 PORTA,1
#define col_4 PORTA,0
#define row_1 PORTE,1
#define row_2 PORTE,0
#define row_3 PORTA,5
#define row_4 PORTA,4
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
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
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
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 49
        tstf 49
        skpz
        goto $ + 3
        clrw
        goto $ + 2
        movlw 1
        subwf 49,F
        bcf 3,0
        rrf 35,F
        rrf 35,F
        rrf 35,F
        movlw 192
        andwf 35,W
        addlw 64
        addwf 49,F
        movlw 254
        call CH@SND
        movf 49,W
        goto CH@SND
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 49
        movlw 254
        call CH@SND
        movf 49,W
        goto CH@SND
PRINT
        movwf 47
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 47,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 41
        movlw 128
        call DLUS@W
        movlw 51
        movwf 46
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
        movwf 46
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 47,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 46
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
        movf 46,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 46,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 47,W
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
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
CL@RH
        bsf 3,7
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 43
DLY@W
        movwf 42
DLY@P
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        movlw 3
        movwf 41
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 41
DLUS@W
        addlw 252
        movwf 40
        comf 41,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 40,F
        skpnc
        goto $ - 3
        addwf 40,F
        nop
        incfsz 41,F
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
        bsf 3,5
        movlw 21
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; HS_SYS.PRP
F2_EOF equ $ ; HS_SYS.PRP
F1_SOF equ $ ; HS_SYS.BAS
F1_000012 equ $ ; IN [HS_SYS.BAS] ALL_DIGITAL = ON
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf CMCON
        movwf ADCON1
F1_000017 equ $ ; IN [HS_SYS.BAS] INPUT A1 : INPUT A2
        bsf TRISD,1
        bsf TRISD,2
F1_000018 equ $ ; IN [HS_SYS.BAS] OUTPUT B1
        bcf TRISC,5
F1_000027 equ $ ; IN [HS_SYS.BAS] INPUT PIR : INPUT SMOKE
        bsf TRISC,0
        bsf TRISC,1
F1_000028 equ $ ; IN [HS_SYS.BAS] OUTPUT MOTOR : OUTPUT BUZZ
        bcf TRISE,2
        bcf TRISD,3
F1_000029 equ $ ; IN [HS_SYS.BAS] INPUT PASSMODE : INPUT VIBRATOR
        bsf TRISD,0
        bsf TRISD,7
F1_000030 equ $ ; IN [HS_SYS.BAS] INPUT LDR
        bsf TRISC,3
F1_000039 equ $ ; IN [HS_SYS.BAS] CLEAR : CLS
        movlw 32
        movwf FSR
        movlw 96
        bcf STATUS,5
ram_bank = 0
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 80
        f@call CL@R
        movlw 16
        movwf FSR
        movlw 96
        f@call CL@RH
        movlw 144
        movwf FSR
        movlw 96
        f@call CL@RH
        f@call LCD@CLS
F1_000043 equ $ ; IN [HS_SYS.BAS] STR PASSWORD = "@_ABC123"
        movlw 64
        movwf password#0
        movlw 95
        movwf password#1
        movlw 65
        movwf password#2
        movlw 66
        movwf password#3
        movlw 67
        movwf password#4
        movlw 49
        movwf password#5
        movlw 50
        movwf password#6
        movlw 51
        movwf password#7
F3_SOF equ $ ; FP_R305.INC
F3_000002 equ $ ; IN [FP_R305.INC] GOTO HOME
        F@JUMP Home
FP_init
F3_000012 equ $ ; IN [FP_R305.INC] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F3_000013 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Enroll
F3_000016 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bcf _B#VR1,1
F3_000017 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000018 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000019 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ENROLL
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL2
        btfsc STATUS,2
        goto BC@LL2
        F@JUMP FP_Enroll
BC@LL2
F3_000020 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F3_000021 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000022 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL4
        btfsc STATUS,2
        goto BC@LL4
        bsf _B#VR1,1
        return
BC@LL4
Recheck
F3_000024 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000025 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000026 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN RECHECK
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL6
        btfsc STATUS,2
        goto BC@LL6
        F@JUMP Recheck
BC@LL6
F3_000027 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $02 , $00 , $09]
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
F3_000028 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000029 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL8
        btfsc STATUS,2
        goto BC@LL8
        bsf _B#VR1,1
        return
BC@LL8
F3_000030 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $05 , $00 , $09]
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
F3_000031 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000032 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL10
        btfsc STATUS,2
        goto BC@LL10
        bsf _B#VR1,1
        return
BC@LL10
F3_000033 equ $ ; IN [FP_R305.INC] CHECKSUM = 15 + ID_NO
        movlw 15
        addwf ID_no,W
        movwf checksum
F3_000034 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $06 , $06 , $02 , $00, ID_NO, $00, CHECKSUM]
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
        movlw 6
        f@call HRSOUT
        movlw 6
        f@call HRSOUT
        movlw 2
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movf ID_no,W
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movf checksum,W
        f@call HRSOUT
F3_000035 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000036 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL12
        btfsc STATUS,2
        goto BC@LL12
        bsf _B#VR1,1
        return
BC@LL12
F3_000037 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Search
F3_000040 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bcf _B#VR1,1
F3_000041 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000042 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000043 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_SEARCH
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL14
        btfsc STATUS,2
        goto BC@LL14
        F@JUMP FP_Search
BC@LL14
F3_000044 equ $ ; IN [FP_R305.INC] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F3_000045 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000046 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL16
        btfsc STATUS,2
        goto BC@LL16
        bsf _B#VR1,1
        return
BC@LL16
F3_000047 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $08, $1B, $01, $00, $00, $03, $E9, $01, $11]
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
F3_000048 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13],RXD[14],RXD[15]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
        f@call HRSIN
        movf RCREG,W
        movwf RXD#12
        f@call HRSIN
        movf RCREG,W
        movwf RXD#13
        f@call HRSIN
        movf RCREG,W
        movwf RXD#14
        f@call HRSIN
        movf RCREG,W
        movwf RXD#15
F3_000049 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL18
        btfsc STATUS,2
        goto BC@LL18
        bsf _B#VR1,1
        return
BC@LL18
F3_000050 equ $ ; IN [FP_R305.INC] GET_ID = RXD[11]
        movf RXD#11,W
        movwf get_ID
F3_000051 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Delete_ID
F3_000054 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bcf _B#VR1,1
F3_000055 equ $ ; IN [FP_R305.INC] CHECKSUM = 21 + ID_NO
        movlw 21
        addwf ID_no,W
        movwf checksum
F3_000056 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $07, $0C, $00, ID_NO, $00, $01, $00, CHECKSUM]
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
        movlw 7
        f@call HRSOUT
        movlw 12
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movf ID_no,W
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 1
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movf checksum,W
        f@call HRSOUT
F3_000057 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000058 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL20
        btfsc STATUS,2
        goto BC@LL20
        bsf _B#VR1,1
        return
BC@LL20
F3_000059 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_Delete_ALL
F3_000062 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bcf _B#VR1,1
F3_000063 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $0D, $00, $11]
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
        movlw 13
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 17
        f@call HRSOUT
F3_000064 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
F3_000065 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
        bsf _B#VR1,1
        return
BC@LL22
F3_000066 equ $ ; IN [FP_R305.INC] RETURN
        return
FP_total_ID
F3_000069 equ $ ; IN [FP_R305.INC] FP_ERROR = 0
        bcf _B#VR1,1
F3_000070 equ $ ; IN [FP_R305.INC] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $1D, $00, $21]
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
        movlw 29
        f@call HRSOUT
        movlw 0
        f@call HRSOUT
        movlw 33
        f@call HRSOUT
F3_000071 equ $ ; IN [FP_R305.INC] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13]]
        f@call HRSIN
        movf RCREG,W
        movwf RXD#0
        f@call HRSIN
        movf RCREG,W
        movwf RXD#1
        f@call HRSIN
        movf RCREG,W
        movwf RXD#2
        f@call HRSIN
        movf RCREG,W
        movwf RXD#3
        f@call HRSIN
        movf RCREG,W
        movwf RXD#4
        f@call HRSIN
        movf RCREG,W
        movwf RXD#5
        f@call HRSIN
        movf RCREG,W
        movwf RXD#6
        f@call HRSIN
        movf RCREG,W
        movwf RXD#7
        f@call HRSIN
        movf RCREG,W
        movwf RXD#8
        f@call HRSIN
        movf RCREG,W
        movwf RXD#9
        f@call HRSIN
        movf RCREG,W
        movwf RXD#10
        f@call HRSIN
        movf RCREG,W
        movwf RXD#11
        f@call HRSIN
        movf RCREG,W
        movwf RXD#12
        f@call HRSIN
        movf RCREG,W
        movwf RXD#13
F3_000072 equ $ ; IN [FP_R305.INC] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
        bsf _B#VR1,1
        return
BC@LL24
F3_000073 equ $ ; IN [FP_R305.INC] IDS = RXD[11]
        movf RXD#11,W
        movwf IDs
F3_000074 equ $ ; IN [FP_R305.INC] RETURN
        return
F3_EOF equ $ ; FP_R305.INC
F1_000048 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000049 equ $ ; IN [HS_SYS.BAS] PORTA = 0 : PORTB = 0 : PORTC = 0
        clrf PORTA
        clrf PORTB
        clrf PORTC
F1_000050 equ $ ; IN [HS_SYS.BAS] PORTD = 0 : PORTE = 0
        clrf PORTD
        clrf PORTE
F1_000051 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000052 equ $ ; IN [HS_SYS.BAS] CHECK_POINT = 0
        bcf _B#VR1,0
F1_000053 equ $ ; IN [HS_SYS.BAS] GOSUB GATE_LOCK
        f@call gate_lock
F1_000054 equ $ ; IN [HS_SYS.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000055 equ $ ; IN [HS_SYS.BAS] GOSUB FP_INIT
        f@call FP_init
F1_000056 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
F4_SOF equ $ ; KEYPAD4X4.INC
checking
F4_000022 equ $ ; IN [KEYPAD4X4.INC] INPUT ROW_1 : INPUT ROW_2 : INPUT ROW_3 : INPUT ROW_4
        bsf STATUS,5
ram_bank = 1
        bsf TRISE,1
        bsf TRISE,0
        bsf TRISA,5
        bsf TRISA,4
F4_000023 equ $ ; IN [KEYPAD4X4.INC] OUTPUT COL_1 : OUTPUT COL_2 : OUTPUT COL_3 : OUTPUT COL_4
        bcf TRISA,3
        bcf TRISA,2
        bcf TRISA,1
        bcf TRISA,0
F4_000026 equ $ ; IN [KEYPAD4X4.INC] CHECK_POINT = 1
        bcf STATUS,5
ram_bank = 0
        bsf _B#VR1,0
capture_key
F4_000029 equ $ ; IN [KEYPAD4X4.INC] IF CHECK_POINT = 0 THEN GOTO CHECKING
        set@page BC@LL26
        btfsc _B#VR1,0
        goto BC@LL26
        F@JUMP checking
BC@LL26
F4_000030 equ $ ; IN [KEYPAD4X4.INC] KEY_VALUE = 0 : KEY = 0
        clrf key_value
        clrf key
F4_000031 equ $ ; IN [KEYPAD4X4.INC] REPEAT
BC@LL27
F4_000032 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 1 : COL_2 = 0 : COL_3 = 0 : COL_4 = 0
        bsf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F4_000033 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F4_000034 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL31
        btfss PORTE,1
        goto BC@LL31
F4_000035 equ $ ; IN [KEYPAD4X4.INC] KEY = 1 : GOSUB GET_CODE
        movlw 1
        movwf key
        f@call get_code
        F@JUMP BC@LL30
F4_000036 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL31
        set@page BC@LL32
        btfss PORTE,0
        goto BC@LL32
F4_000037 equ $ ; IN [KEYPAD4X4.INC] KEY = 2 : GOSUB GET_CODE
        movlw 2
        movwf key
        f@call get_code
        F@JUMP BC@LL30
F4_000038 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL32
        set@page BC@LL33
        btfss PORTA,5
        goto BC@LL33
F4_000039 equ $ ; IN [KEYPAD4X4.INC] KEY = 3 : GOSUB GET_CODE
        movlw 3
        movwf key
        f@call get_code
        F@JUMP BC@LL30
F4_000040 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL33
        set@page BC@LL34
        btfss PORTA,4
        goto BC@LL34
F4_000041 equ $ ; IN [KEYPAD4X4.INC] KEY = 4 : GOSUB GET_CODE
        movlw 4
        movwf key
        f@call get_code
F4_000042 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL34
BC@LL30
F4_000043 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 1 : COL_3 = 0 : COL_4 = 0
        bcf PORTA,3
        bsf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F4_000044 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F4_000045 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL36
        btfss PORTE,1
        goto BC@LL36
F4_000046 equ $ ; IN [KEYPAD4X4.INC] KEY = 5 : GOSUB GET_CODE
        movlw 5
        movwf key
        f@call get_code
        F@JUMP BC@LL35
F4_000047 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL36
        set@page BC@LL37
        btfss PORTE,0
        goto BC@LL37
F4_000048 equ $ ; IN [KEYPAD4X4.INC] KEY = 6 : GOSUB GET_CODE
        movlw 6
        movwf key
        f@call get_code
        F@JUMP BC@LL35
F4_000049 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL37
        set@page BC@LL38
        btfss PORTA,5
        goto BC@LL38
F4_000050 equ $ ; IN [KEYPAD4X4.INC] KEY = 7 : GOSUB GET_CODE
        movlw 7
        movwf key
        f@call get_code
        F@JUMP BC@LL35
F4_000051 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL38
        set@page BC@LL39
        btfss PORTA,4
        goto BC@LL39
F4_000052 equ $ ; IN [KEYPAD4X4.INC] KEY = 8 : GOSUB GET_CODE
        movlw 8
        movwf key
        f@call get_code
F4_000053 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL39
BC@LL35
F4_000054 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 1 : COL_4 = 0
        bcf PORTA,3
        bcf PORTA,2
        bsf PORTA,1
        bcf PORTA,0
F4_000055 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F4_000056 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL41
        btfss PORTE,1
        goto BC@LL41
F4_000057 equ $ ; IN [KEYPAD4X4.INC] KEY = 9 : GOSUB GET_CODE
        movlw 9
        movwf key
        f@call get_code
        F@JUMP BC@LL40
F4_000058 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL41
        set@page BC@LL42
        btfss PORTE,0
        goto BC@LL42
F4_000059 equ $ ; IN [KEYPAD4X4.INC] KEY = 10 : GOSUB GET_CODE
        movlw 10
        movwf key
        f@call get_code
        F@JUMP BC@LL40
F4_000060 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL42
        set@page BC@LL43
        btfss PORTA,5
        goto BC@LL43
F4_000061 equ $ ; IN [KEYPAD4X4.INC] KEY = 11 : GOSUB GET_CODE
        movlw 11
        movwf key
        f@call get_code
        F@JUMP BC@LL40
F4_000062 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL43
        set@page BC@LL44
        btfss PORTA,4
        goto BC@LL44
F4_000063 equ $ ; IN [KEYPAD4X4.INC] KEY = 12 : GOSUB GET_CODE
        movlw 12
        movwf key
        f@call get_code
F4_000064 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL44
BC@LL40
F4_000065 equ $ ; IN [KEYPAD4X4.INC] COL_1 = 0 : COL_2 = 0 : COL_3 = 0 : COL_4 = 1
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bsf PORTA,0
F4_000066 equ $ ; IN [KEYPAD4X4.INC] DELAYMS 1
        movlw 1
        f@call DL@MS
F4_000067 equ $ ; IN [KEYPAD4X4.INC] IF ROW_1 = 1 THEN
        set@page BC@LL46
        btfss PORTE,1
        goto BC@LL46
F4_000068 equ $ ; IN [KEYPAD4X4.INC] KEY = 13 : GOSUB GET_CODE
        movlw 13
        movwf key
        f@call get_code
        F@JUMP BC@LL45
F4_000069 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_2 = 1 THEN
BC@LL46
        set@page BC@LL47
        btfss PORTE,0
        goto BC@LL47
F4_000070 equ $ ; IN [KEYPAD4X4.INC] KEY = 14 : GOSUB GET_CODE
        movlw 14
        movwf key
        f@call get_code
        F@JUMP BC@LL45
F4_000071 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_3 = 1 THEN
BC@LL47
        set@page BC@LL48
        btfss PORTA,5
        goto BC@LL48
F4_000072 equ $ ; IN [KEYPAD4X4.INC] KEY = 15 : GOSUB GET_CODE
        movlw 15
        movwf key
        f@call get_code
        F@JUMP BC@LL45
F4_000073 equ $ ; IN [KEYPAD4X4.INC] ELSEIF ROW_4 = 1 THEN
BC@LL48
        set@page BC@LL49
        btfss PORTA,4
        goto BC@LL49
F4_000074 equ $ ; IN [KEYPAD4X4.INC] KEY = 16 : GOSUB GET_CODE
        movlw 16
        movwf key
        f@call get_code
F4_000075 equ $ ; IN [KEYPAD4X4.INC] ENDIF
BC@LL49
BC@LL45
BC@LL29
F4_000076 equ $ ; IN [KEYPAD4X4.INC] UNTIL KEY != 0
        movf key,F
        set@page BC@LL27
        btfsc STATUS,2
        goto BC@LL27
BC@LL28
F4_000077 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
get_code
F4_000080 equ $ ; IN [KEYPAD4X4.INC] SELECT KEY
F4_000081 equ $ ; IN [KEYPAD4X4.INC] CASE 0 : KEY_VALUE = 0 : RETURN
        movf key,F
        set@page BC@LL51
        btfss STATUS,2
        goto BC@LL51
ram_bank = 0
        clrf key_value
        return
        F@JUMP BC@LL50
BC@LL51
F4_000082 equ $ ; IN [KEYPAD4X4.INC] CASE 1 : KEY_VALUE = "1" : DELAYMS 500
        movlw 1
        subwf key,W
        set@page BC@LL54
        btfss STATUS,2
        goto BC@LL54
ram_bank = 0
        movlw 49
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL54
F4_000083 equ $ ; IN [KEYPAD4X4.INC] CASE 2 : KEY_VALUE = "4" : DELAYMS 500
        movlw 2
        subwf key,W
        set@page BC@LL56
        btfss STATUS,2
        goto BC@LL56
ram_bank = 0
        movlw 52
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL56
F4_000084 equ $ ; IN [KEYPAD4X4.INC] CASE 3 : KEY_VALUE = "7" : DELAYMS 500
        movlw 3
        subwf key,W
        set@page BC@LL58
        btfss STATUS,2
        goto BC@LL58
ram_bank = 0
        movlw 55
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL58
F4_000085 equ $ ; IN [KEYPAD4X4.INC] CASE 4 : KEY_VALUE = "*" : DELAYMS 500
        movlw 4
        subwf key,W
        set@page BC@LL60
        btfss STATUS,2
        goto BC@LL60
ram_bank = 0
        movlw 42
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL60
F4_000086 equ $ ; IN [KEYPAD4X4.INC] CASE 5 : KEY_VALUE = "2" : DELAYMS 500
        movlw 5
        subwf key,W
        set@page BC@LL62
        btfss STATUS,2
        goto BC@LL62
ram_bank = 0
        movlw 50
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL62
F4_000087 equ $ ; IN [KEYPAD4X4.INC] CASE 6 : KEY_VALUE = "5" : DELAYMS 500
        movlw 6
        subwf key,W
        set@page BC@LL64
        btfss STATUS,2
        goto BC@LL64
ram_bank = 0
        movlw 53
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL64
F4_000088 equ $ ; IN [KEYPAD4X4.INC] CASE 7 : KEY_VALUE = "@" : DELAYMS 500
        movlw 7
        subwf key,W
        set@page BC@LL66
        btfss STATUS,2
        goto BC@LL66
ram_bank = 0
        movlw 64
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL66
F4_000089 equ $ ; IN [KEYPAD4X4.INC] CASE 8 : KEY_VALUE = "0" : DELAYMS 500
        movlw 8
        subwf key,W
        set@page BC@LL68
        btfss STATUS,2
        goto BC@LL68
ram_bank = 0
        movlw 48
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL68
F4_000090 equ $ ; IN [KEYPAD4X4.INC] CASE 9 : KEY_VALUE = "3" : DELAYMS 500
        movlw 9
        subwf key,W
        set@page BC@LL70
        btfss STATUS,2
        goto BC@LL70
ram_bank = 0
        movlw 51
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL70
F4_000091 equ $ ; IN [KEYPAD4X4.INC] CASE 10 : KEY_VALUE = "6" : DELAYMS 500
        movlw 10
        subwf key,W
        set@page BC@LL72
        btfss STATUS,2
        goto BC@LL72
ram_bank = 0
        movlw 54
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL72
F4_000092 equ $ ; IN [KEYPAD4X4.INC] CASE 11 : KEY_VALUE = "_" : DELAYMS 500
        movlw 11
        subwf key,W
        set@page BC@LL74
        btfss STATUS,2
        goto BC@LL74
ram_bank = 0
        movlw 95
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL74
F4_000093 equ $ ; IN [KEYPAD4X4.INC] CASE 12 : KEY_VALUE = "#" : DELAYMS 500
        movlw 12
        subwf key,W
        set@page BC@LL76
        btfss STATUS,2
        goto BC@LL76
ram_bank = 0
        movlw 35
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL76
F4_000094 equ $ ; IN [KEYPAD4X4.INC] CASE 13 : KEY_VALUE = "A" : DELAYMS 500
        movlw 13
        subwf key,W
        set@page BC@LL78
        btfss STATUS,2
        goto BC@LL78
ram_bank = 0
        movlw 65
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL78
F4_000095 equ $ ; IN [KEYPAD4X4.INC] CASE 14 : KEY_VALUE = "B" : DELAYMS 500
        movlw 14
        subwf key,W
        set@page BC@LL80
        btfss STATUS,2
        goto BC@LL80
ram_bank = 0
        movlw 66
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL80
F4_000096 equ $ ; IN [KEYPAD4X4.INC] CASE 15 : KEY_VALUE = "C" : DELAYMS 500
        movlw 15
        subwf key,W
        set@page BC@LL82
        btfss STATUS,2
        goto BC@LL82
ram_bank = 0
        movlw 67
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL50
BC@LL82
F4_000097 equ $ ; IN [KEYPAD4X4.INC] CASE 16 : KEY_VALUE = "D" : DELAYMS 500
        movlw 16
        subwf key,W
        set@page BC@LL84
        btfss STATUS,2
        goto BC@LL84
ram_bank = 0
        movlw 68
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F4_000098 equ $ ; IN [KEYPAD4X4.INC] CASE ELSE : KEY_VALUE = 0 : RETURN
        F@JUMP BC@LL86
BC@LL84
        clrf key_value
        return
F4_000099 equ $ ; IN [KEYPAD4X4.INC] ENDSELECT
BC@LL86
BC@LL50
F4_000100 equ $ ; IN [KEYPAD4X4.INC] RETURN
        return
F4_EOF equ $ ; KEYPAD4X4.INC
main
F1_000061 equ $ ; IN [HS_SYS.BAS] IF LDR = 0 THEN GOSUB ACTION
        set@page BC@LL88
        btfsc PORTC,3
        goto BC@LL88
        f@call action
BC@LL88
F1_000062 equ $ ; IN [HS_SYS.BAS] IF PIR = 0 THEN GOSUB ACTION
        set@page BC@LL90
        btfsc PORTC,0
        goto BC@LL90
        f@call action
BC@LL90
F1_000063 equ $ ; IN [HS_SYS.BAS] IF SMOKE = 1 THEN GOSUB ACTION
        set@page BC@LL92
        btfss PORTC,1
        goto BC@LL92
        f@call action
BC@LL92
F1_000064 equ $ ; IN [HS_SYS.BAS] IF VIBRATOR = 1 THEN INC VIB_COUNT : DELAYMS 200
        set@page BC@LL94
        btfss PORTD,7
        goto BC@LL94
        incf vib_count,F
        movlw 200
        f@call DL@MS
BC@LL94
F1_000065 equ $ ; IN [HS_SYS.BAS] IF VIB_COUNT = 5 THEN VIB_COUNT = 0 : GOSUB ACTION
        movlw 5
        subwf vib_count,W
        set@page BC@LL96
        btfss STATUS,2
        goto BC@LL96
        clrf vib_count
        f@call action
BC@LL96
F1_000066 equ $ ; IN [HS_SYS.BAS] IF PASSMODE = 0 THEN GOSUB PASS_MODE
        set@page BC@LL98
        btfsc PORTD,0
        goto BC@LL98
        f@call pass_mode
BC@LL98
F1_000072 equ $ ; IN [HS_SYS.BAS] GOTO MAIN
        F@JUMP main
Home
F1_000075 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000076 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "HOMESECURITY SYS"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000077 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "DOOR LOCKED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000078 equ $ ; IN [HS_SYS.BAS] GOTO MAIN
        F@JUMP main
action
F1_000081 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000082 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "SENDING SMS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000083 equ $ ; IN [HS_SYS.BAS] BUZZ = 1 : B1 = 1
        bsf PORTD,3
        bsf PORTC,5
F1_000084 equ $ ; IN [HS_SYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000085 equ $ ; IN [HS_SYS.BAS] BUZZ = 0 : B1 = 0
        bcf PORTD,3
        bcf PORTC,5
F1_000086 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
pass_mode
F1_000089 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000090 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "ENTER PASS:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000091 equ $ ; IN [HS_SYS.BAS] FOR POS = 0 TO 7
        clrf pos
FR@LB100
        movlw 8
        subwf pos,W
        set@page NX@LB101
        btfsc STATUS,0
        goto NX@LB101
F1_000092 equ $ ; IN [HS_SYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000093 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = "*" THEN GOSUB FP_MODE
        movlw 42
        subwf key_value,W
        set@page BC@LL103
        btfss STATUS,2
        goto BC@LL103
        f@call FP_mode
BC@LL103
F1_000094 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = PASSWORD[POS] THEN
        movf pos,W
        addlw password
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf key_value,W
        subwf PBP#VAR0,W
        set@page BC@LL105
        btfss STATUS,2
        goto BC@LL105
F1_000095 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,POS+1, "*"
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf pos,W
        f@call CURSOR
        movlw 42
        f@call PRINT
        F@JUMP BC@LL106
BC@LL105
F1_000096 equ $ ; IN [HS_SYS.BAS] ELSE
F1_000097 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "WRONG PASSWORD!"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000098 equ $ ; IN [HS_SYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000099 equ $ ; IN [HS_SYS.BAS] GOSUB ACTION
        f@call action
F1_000100 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
F1_000101 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL106
CT@LB102
F1_000102 equ $ ; IN [HS_SYS.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB100
        btfss STATUS,0
        goto FR@LB100
NX@LB101
F1_000103 equ $ ; IN [HS_SYS.BAS] GOSUB DOOR_ACTIVE
        f@call door_active
F1_000104 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
FP_mode
F1_000107 equ $ ; IN [HS_SYS.BAS] GET_ID = 0
        clrf get_ID
F1_000108 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "FINGERPRINT MODE"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
F1_000109 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "A:NEW C:GO D:DLT"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
F1_000110 equ $ ; IN [HS_SYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000111 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = "A" THEN
        movlw 65
        subwf key_value,W
        set@page BC@LL108
        btfss STATUS,2
        goto BC@LL108
F1_000112 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000113 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "ENTER PASS:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
F1_000114 equ $ ; IN [HS_SYS.BAS] FOR POS = 0 TO 7
        clrf pos
FR@LB110
        movlw 8
        subwf pos,W
        set@page NX@LB111
        btfsc STATUS,0
        goto NX@LB111
F1_000115 equ $ ; IN [HS_SYS.BAS] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000116 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = PASSWORD[POS] THEN
        movf pos,W
        addlw password
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf key_value,W
        subwf PBP#VAR0,W
        set@page BC@LL113
        btfss STATUS,2
        goto BC@LL113
F1_000117 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,POS+1, "*"
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf pos,W
        f@call CURSOR
        movlw 42
        f@call PRINT
        F@JUMP BC@LL114
BC@LL113
F1_000118 equ $ ; IN [HS_SYS.BAS] ELSE
F1_000119 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "WRONG PASSWORD!"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
F1_000120 equ $ ; IN [HS_SYS.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000121 equ $ ; IN [HS_SYS.BAS] GOSUB ACTION
        f@call action
F1_000122 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
F1_000123 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL114
CT@LB112
F1_000124 equ $ ; IN [HS_SYS.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB110
        btfss STATUS,0
        goto FR@LB110
NX@LB111
F1_000125 equ $ ; IN [HS_SYS.BAS] ID_NO = 2
        movlw 2
        movwf ID_no
F1_000126 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000127 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "PUT UR FINGER.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
F1_000128 equ $ ; IN [HS_SYS.BAS] WHILE 1 = 1
BC@LL115
F1_000129 equ $ ; IN [HS_SYS.BAS] GOSUB FP_ENROLL
        f@call FP_Enroll
F1_000130 equ $ ; IN [HS_SYS.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL118
        btfss _B#VR1,1
        goto BC@LL118
F1_000131 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "ERROR."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
F1_000132 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000133 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
        F@JUMP BC@LL119
BC@LL118
F1_000134 equ $ ; IN [HS_SYS.BAS] ELSE
F1_000135 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "ID ADDED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000136 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000137 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
F1_000138 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL119
F1_000139 equ $ ; IN [HS_SYS.BAS] WEND
        F@JUMP BC@LL115
BC@LL116
F1_000140 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL108
F1_000141 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = "C" THEN
        movlw 67
        subwf key_value,W
        set@page BC@LL121
        btfss STATUS,2
        goto BC@LL121
F1_000142 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000143 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "PUT UR FINGER.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000144 equ $ ; IN [HS_SYS.BAS] WHILE 1 = 1
BC@LL122
F1_000145 equ $ ; IN [HS_SYS.BAS] GOSUB FP_SEARCH
        f@call FP_Search
F1_000146 equ $ ; IN [HS_SYS.BAS] IF FP_ERROR = 1 THEN
        set@page BC@LL125
        btfss _B#VR1,1
        goto BC@LL125
F1_000147 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "ERROR."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000148 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000149 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
        F@JUMP BC@LL126
BC@LL125
F1_000150 equ $ ; IN [HS_SYS.BAS] ELSE
F1_000151 equ $ ; IN [HS_SYS.BAS] IF GET_ID = 2 THEN
        movlw 2
        subwf get_ID,W
        set@page BC@LL128
        btfss STATUS,2
        goto BC@LL128
F1_000152 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "ID MATCHED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB16)
        movwf GEN4H
        movlw low (STR@LB16)
        f@call C@STROUT
F1_000153 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000154 equ $ ; IN [HS_SYS.BAS] GOSUB DOOR_ACTIVE
        f@call door_active
        F@JUMP BC@LL129
BC@LL128
F1_000155 equ $ ; IN [HS_SYS.BAS] ELSE
F1_000156 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "ID NOT MATCHED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB17)
        movwf GEN4H
        movlw low (STR@LB17)
        f@call C@STROUT
F1_000157 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000158 equ $ ; IN [HS_SYS.BAS] GOSUB ACTION
        f@call action
F1_000159 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL129
F1_000160 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL126
F1_000161 equ $ ; IN [HS_SYS.BAS] WEND
        F@JUMP BC@LL122
BC@LL123
F1_000162 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL121
F1_000163 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = "D" THEN
        movlw 68
        subwf key_value,W
        set@page BC@LL131
        btfss STATUS,2
        goto BC@LL131
F1_000164 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000165 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "DELETED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB18)
        movwf GEN4H
        movlw low (STR@LB18)
        f@call C@STROUT
F1_000166 equ $ ; IN [HS_SYS.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000167 equ $ ; IN [HS_SYS.BAS] GOSUB FP_DELETE_ALL
        f@call FP_Delete_ALL
F1_000168 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
F1_000169 equ $ ; IN [HS_SYS.BAS] ENDIF
BC@LL131
F1_000170 equ $ ; IN [HS_SYS.BAS] IF KEY_VALUE = "B" THEN GOSUB HOME
        movlw 66
        subwf key_value,W
        set@page BC@LL133
        btfss STATUS,2
        goto BC@LL133
        f@call Home
BC@LL133
F1_000171 equ $ ; IN [HS_SYS.BAS] GOTO FP_MODE
        F@JUMP FP_mode
voice_mode
F1_000174 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000175 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "VOICE MODE..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB19)
        movwf GEN4H
        movlw low (STR@LB19)
        f@call C@STROUT
F1_000176 equ $ ; IN [HS_SYS.BAS] PRINT AT 2,1, "SAY PASSWORD..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB20)
        movwf GEN4H
        movlw low (STR@LB20)
        f@call C@STROUT
F1_000177 equ $ ; IN [HS_SYS.BAS] WHILE A1 = 1
BC@LL134
        set@page BC@LL135
        btfss PORTD,1
        goto BC@LL135
F1_000178 equ $ ; IN [HS_SYS.BAS] IF A2 = 1 THEN GOSUB DOOR_ACTIVE
        set@page BC@LL137
        btfss PORTD,2
        goto BC@LL137
        f@call door_active
BC@LL137
F1_000179 equ $ ; IN [HS_SYS.BAS] WEND
        F@JUMP BC@LL134
BC@LL135
F1_000180 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
door_active
F1_000183 equ $ ; IN [HS_SYS.BAS] CLS
        f@call LCD@CLS
F1_000184 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "DOOR OPENED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB21)
        movwf GEN4H
        movlw low (STR@LB21)
        f@call C@STROUT
F1_000185 equ $ ; IN [HS_SYS.BAS] GOSUB GATE_OPEN
        f@call gate_open
F1_000186 equ $ ; IN [HS_SYS.BAS] PRINT AT 1,1, "LOCK IN 10SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB22)
        movwf GEN4H
        movlw low (STR@LB22)
        f@call C@STROUT
F1_000187 equ $ ; IN [HS_SYS.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000188 equ $ ; IN [HS_SYS.BAS] GOSUB GATE_LOCK
        f@call gate_lock
F1_000189 equ $ ; IN [HS_SYS.BAS] GOTO HOME
        F@JUMP Home
gate_lock
F1_000192 equ $ ; IN [HS_SYS.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB139
        movlw 51
        subwf pos,W
        set@page NX@LB140
        btfsc STATUS,0
        goto NX@LB140
F1_000193 equ $ ; IN [HS_SYS.BAS] MOTOR = 1
        bsf PORTE,2
F1_000194 equ $ ; IN [HS_SYS.BAS] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        f@call DLUS@W
F1_000195 equ $ ; IN [HS_SYS.BAS] MOTOR = 0
        bcf PORTE,2
F1_000196 equ $ ; IN [HS_SYS.BAS] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        f@call DLUS@W
CT@LB141
F1_000197 equ $ ; IN [HS_SYS.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB139
        btfss STATUS,0
        goto FR@LB139
NX@LB140
F1_000198 equ $ ; IN [HS_SYS.BAS] RETURN
        return
gate_open
F1_000201 equ $ ; IN [HS_SYS.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB142
        movlw 51
        subwf pos,W
        set@page NX@LB143
        btfsc STATUS,0
        goto NX@LB143
F1_000202 equ $ ; IN [HS_SYS.BAS] MOTOR = 1
        bsf PORTE,2
F1_000203 equ $ ; IN [HS_SYS.BAS] DELAYUS 2000
        movlw 7
        movwf PP0H
        movlw 208
        f@call DLUS@W
F1_000204 equ $ ; IN [HS_SYS.BAS] MOTOR = 0
        bcf PORTE,2
F1_000205 equ $ ; IN [HS_SYS.BAS] DELAYUS 18000
        movlw 70
        movwf PP0H
        movlw 80
        f@call DLUS@W
CT@LB144
F1_000206 equ $ ; IN [HS_SYS.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB142
        btfss STATUS,0
        goto FR@LB142
NX@LB143
F1_000207 equ $ ; IN [HS_SYS.BAS] RETURN
        return
F1_EOF equ $ ; HS_SYS.BAS
PB@LB145
        F@JUMP PB@LB145
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,0
STR@LB2
        de 72,111,109,101,83,101,99,117,114,105,116,121,32,83,89,83,0
STR@LB3
        de 68,111,111,114,32,76,111,99,107,101,100,46,0
STR@LB4
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,0
STR@LB5
STR@LB9
        de 69,110,116,101,114,32,112,97,115,115,58,0
STR@LB6
STR@LB10
        de 87,114,111,110,103,32,80,97,115,115,119,111,114,100,33,0
STR@LB7
        de 70,105,110,103,101,114,112,114,105,110,116,32,109,111,100,101,0
STR@LB8
        de 65,58,78,101,119,32,67,58,71,79,32,68,58,68,76,84,0
STR@LB11
STR@LB14
        de 80,117,116,32,117,114,32,102,105,110,103,101,114,46,46,0
STR@LB12
STR@LB15
        de 69,114,114,111,114,46,0
STR@LB13
        de 73,68,32,65,100,100,101,100,46,0
STR@LB16
        de 73,68,32,77,97,116,99,104,101,100,46,0
STR@LB17
        de 73,68,32,110,111,116,32,77,97,116,99,104,101,100,46,0
STR@LB18
        de 68,101,108,101,116,101,100,46,0
STR@LB19
        de 86,111,105,99,101,32,77,111,100,101,46,46,46,0
STR@LB20
        de 83,97,121,32,112,97,115,115,119,111,114,100,46,46,46,0
STR@LB21
        de 68,111,111,114,32,79,112,101,110,101,100,46,0
STR@LB22
        de 76,111,99,107,32,105,110,32,49,48,83,101,99,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_OFF&LVP_OFF&CPD_ON&WRT_OFF&DEBUG_OFF&CP_ON
        end
