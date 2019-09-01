;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F876A, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
RD=0
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
#define __16F876A 1
#define XTAL 8
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
#define _CWRITE_BLOCK 8
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 50
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
PBP#VAR1 = 40
PBP#VAR2 = 41
PBP#VAR3 = 42
PBP#VAR4 = 43
PBP#VAR5 = 44
PBP#VAR6 = 45
PBP#VAR7 = 46
PP0 = 47
PP0H = 48
PP1 = 49
PP1H = 50
PP2 = 51
PP2H = 52
PP3 = 53
PP3H = 54
PP4 = 55
PP5 = 56
PP6 = 57
PP6H = 58
PP7 = 59
PP7H = 60
PP7HH = 61
PP7HHH = 62
PP8 = 63
PP8H = 64
PPZ = 65
PPZH = 66
PPZHH = 67
PP_AARG = 68
PP_AARGH = 69
PP_AARGHH = 70
PP_AARGHHH = 71
PP_BARG = 72
PP_BARGH = 73
PP_BARGHH = 74
PP_BARGHHH = 75
SP#P9 = 76
_AEXP = 77
_BEXP = 78
_FP_FLAGS = 79
_FP_TEMP = 80
_SIGN = 81
tmp1 = 82
tmp1H = 83
tmp2 = 84
tmp2H = 85
tmp1_alart_l = 86
tmp2_alart_l = 87
hum1_alart_l = 88
hum2_alart_l = 89
mm = 90
mmH = 91
ss = 92
cnt = 93
t_flag = 94
_B#VR1 = 95
dht = 96
variable dht#0=96,dht#1=97,dht#2=98,dht#3=99
variable dht#4=100,dht#5=101,dht#6=102,dht#7=103
variable dht#8=104,dht#9=105,dht#10=106,dht#11=107
variable dht#12=108,dht#13=109,dht#14=110,dht#15=111
variable dht#16=112,dht#17=113,dht#18=114,dht#19=115
variable dht#20=116,dht#21=117,dht#22=118,dht#23=119
variable dht#24=120,dht#25=121,dht#26=122,dht#27=123
variable dht#28=124,dht#29=125,dht#30=126,dht#31=127
haut = 160
bas = 161
temp1 = 162
humidity1 = 163
temp2 = 164
humidity2 = 165
_X = 166
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define TMR2IE PIE1,1
#define TMR2IF PIR1,1
#define buzzer PORTC,6
#define up_key PORTB,1
#define set_key PORTB,0
#define down_key PORTC,7
#define tmp1_rly PORTC,0
#define tmp2_rly PORTC,1
#define hum1_rly PORTC,2
#define hum2_rly PORTC,3
#define tmr_rly1 PORTC,4
#define tmr_rly2 PORTC,5
#define sec_f _B#VR1,0
#define alarm_f _B#VR1,1
#define DHT11_pin1 PORTA,2
#define DHT11_dir1 TRISA,2
#define DHT11_pin2 PORTA,5
#define DHT11_dir2 TRISA,5
#define __XTAL 8
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
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
        movwf 48
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 56
        movlw 254
        call CH@SND
        movf 56,W
        goto CH@SND
OUT@DECB
        clrf 38
OUT@DECC
        movwf 51
        clrf 52
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 50
        movlw 16
        call D@DIG
        movlw 3
        movwf 50
        movlw 232
        call D@DIG
        clrf 50
        movlw 100
        call D@DIG
        clrf 50
        movlw 10
        call D@DIG
        movf 51,W
        goto SEND@IT
D@DIG
        movwf 49
        movf 52,W
        movwf 48
        movf 51,W
        movwf 47
        call D@VD
        movf 47,W
SEND@IT
        movwf 47
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 47,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 54
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 54,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 48
        movlw 128
        call DLUS@W
        movlw 51
        movwf 53
        call PR@LP
        movlw 19
        movwf 48
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 53
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 54,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 53
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 48
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
        movf 53,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 53,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 54,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
P@IN
        movwf 35
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 49
        btfss 47,0
        movwf 49
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 35,W
        xorwf 49,F
        movlw 1
        movwf 47
        clrf 48
        movf 0,W
        andwf 35,W
        xorwf 49,W
        skpz
        return
        incf 47,F
        skpnz
        incfsz 48,F
        goto $ - 8
        return
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
        movwf 53
        rlf 53,F
        rlf 53,F
        rlf 53,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        movf 30,W
        movwf 60
        bsf 3,5
        movf 158,W
        bcf 3,5
        movwf 59
        goto I@NT
DL@MS
        clrf 50
DLY@W
        movwf 49
DLY@P
        movlw 255
        addwf 49,F
        skpc
        addwf 50,F
        skpc
        goto I@NT
        movlw 3
        movwf 48
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 48
DLUS@W
        addlw 244
        movwf 47
        comf 48,F
        movlw 254
        skpc
        goto $ + 4
        addwf 47,F
        skpnc
        goto $ - 2
        addwf 47,F
        nop
        incfsz 48,F
        goto $ - 6
        nop
        btfsc 47,0
        goto $ + 1
        btfsc 47,0
        goto $ + 1
        return
D@VD
        clrf 52
        clrf 51
D@VD2
        movlw 16
        movwf 53
        rlf 48,W
        rlf 51,F
        rlf 52,F
        movf 49,W
        subwf 51,F
        movf 50,W
        skpc
        incfsz 50,W
        subwf 52,F
        skpnc
        goto $ + 8
        movf 49,W
        addwf 51,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 52,F
        bcf 3,0
        rlf 47,F
        rlf 48,F
        decfsz 53,F
        goto $ - 21
        movf 47,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
FPM@32
        movf 69,W
        movwf 67
        xorwf 73,W
        movwf 81
        movf 68,W
        xorlw 0
        btfss 3,2
        movf 72,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf 68,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf 68,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf 68,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf 71,W
        movwf 65
        movf 70,W
        movwf 66
        bsf 67,7
        bsf 73,7
        clrf 71
        clrf 70
        clrf 69
        movlw 24
        movwf 80
FPM@L9
        rrf 67,F
        rrf 66,F
        rrf 65,F
        btfss 3,0
        goto FPM@L12
        movf 75,W
        addwf 71,F
        movf 74,W
        btfsc 3,0
        incfsz 74,W
        addwf 70,F
        movf 73,W
        btfsc 3,0
        incfsz 73,W
        addwf 69,F
FPM@L12
        rrf 69,F
        rrf 70,F
        rrf 71,F
        decfsz 80,F
        goto FPM@L9
        btfsc 69,7
        goto FPM@L14
        rlf 71,F
        rlf 70,F
        rlf 69,F
        movf 68,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf 68,F
        rlf 67,W
FPM@L14
        btfss 79,6
        goto FPM@L28
        btfss 3,0
        goto FPM@L28
        incfsz 71,F
        goto FPM@L28
        incfsz 70,F
        goto FPM@L28
        incfsz 69,F
        goto FPM@L28
        bsf 3,0
        rrf 69,F
        rrf 70,F
        rrf 71,F
        incf 68,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf 79,2
FPM@RES0
        clrf 68
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf 79,1
        movlw 255
        movwf 68
FPM@MANTISSA
        clrf 71
        clrf 70
        movlw 128
        movwf 69
FPM@SET_SIGN
        btfsc 81,7
        goto FPM@L30
        bcf 69,7
FPM@L30
        goto I@NT
FL32@TOINT32
        movf 69,W
        movwf 81
        movlw 127
        subwf 68,W
        movwf 80
        btfsc 3,0
        goto FI@L3
        movlw 0
        goto FI@ASSIGNW
FI@L3
        bsf 69,7
        clrf 68
        clrf 65
        movf 80,W
        sublw 23
        movwf 80
        btfsc 3,0
        goto FI@L5
        movlw 8
        addwf 80,F
        btfss 3,0
        goto FI@OVERFLOW
FI@L7
        movf 69,W
        movwf 68
        movf 70,W
        movwf 69
        movf 71,W
        movwf 70
        clrf 71
        goto FI@L8
FI@L5
        movlw 8
        subwf 80,F
        btfss 3,0
        goto FI@L10
        movf 71,W
        movwf 65
        movf 70,W
        movwf 71
        movf 69,W
        movwf 70
        clrf 69
        goto FI@L5
FI@L10
        addwf 80,F
FI@L8
        movf 80,F
        btfsc 3,2
        goto FI@L16
FI@L15
        bcf 3,0
        rrf 68,F
        rrf 69,F
        rrf 70,F
        rrf 71,F
        rrf 65,F
        decfsz 80,F
        goto FI@L15
FI@L16
        btfsc 68,0
        goto FI@OVERFLOW
        btfss 79,6
        goto FI@L30
        btfss 65,7
        goto FI@L30
        incfsz 71,F
        goto FI@L30
        incfsz 70,F
        goto FI@L30
        incf 69,F
FI@L30
        movf 68,W
        movwf 65
        movf 71,W
        movwf 68
        movf 65,W
        movwf 71
        movf 69,W
        movwf 65
        movf 70,W
        movwf 69
        movf 65,W
        movwf 70
        btfss 81,7
        goto FI@L32
        comf 71,F
        comf 70,F
        comf 69,F
        comf 68,F
        incfsz 68,F
        goto FI@L32
        incfsz 69,F
        goto FI@L32
        incf 70,F
        btfsc 3,2
        incf 71,F
FI@L32
        movf 68,W
        goto I@NT
FI@OVERFLOW
        bsf 79,5
        movlw 255
FI@ASSIGNW
        movwf 71
        movwf 70
        movwf 69
        movwf 68
        goto I@NT
INT16@TOFL32
        clrf 70
        clrf 71
INT32@TOFL32
        movlw 150
        movwf 80
        bcf 81,7
        btfss 71,7
        goto IF@L5
        comf 71,F
        comf 70,F
        comf 69,F
        comf 68,F
        incfsz 68,F
        goto IF@L4
        incfsz 69,F
        goto IF@L4
        incf 70,F
        btfsc 3,2
        incf 71,F
IF@L4
        bsf 81,7
IF@L5
        movf 71,F
        btfsc 3,2
        goto IF@L7
        btfss 79,6
        goto IF@L17
        btfss 71,7
        goto IF@L17
        incfsz 69,F
        goto IF@L17
        incfsz 70,F
        goto IF@L17
        incfsz 71,F
        goto IF@L17
        bsf 3,0
        rrf 71,F
        rrf 70,F
        rrf 69,F
        incf 80,F
IF@L17
        movlw 8
        addwf 80,F
        movf 69,W
        movwf 68
        movf 70,W
        movwf 69
        movf 71,W
        movwf 70
        goto IF@L18
IF@L7
        movf 70,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 80,F
        movf 69,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 80,F
        movf 68,W
        btfss 3,2
        goto IF@L22
        movf 71,W
        movwf 80
        goto IF@EXIT
IF@L22
        clrf 68
IF@L20
        movwf 70
        movf 68,W
        movwf 69
        clrf 68
IF@L18
        btfsc 70,7
        goto IF@L24
        bcf 3,0
        rlf 68,F
        rlf 69,F
        rlf 70,F
        decf 80,F
        goto IF@L18
IF@L24
        btfss 81,7
        bcf 70,7
IF@EXIT
        movf 68,W
        movwf 71
        movf 80,W
        movwf 68
        movf 70,W
        movwf 80
        movf 69,W
        movwf 70
        movf 80,W
        movwf 69
        goto I@NT
proton#main#start
        clrf 3
        movlw 64
        movwf 79
        clrf 32
F2_SOF equ $ ; 2HUM2TMP.PRP
F2_EOF equ $ ; 2HUM2TMP.PRP
F1_SOF equ $ ; 2HUM2TMP.BAS
F1_000008 equ $ ; IN [2HUM2TMP.BAS] CLS
        f@call LCD@CLS
        bsf INTCON,7
        F@JUMP INT@LBL2
INT@LBL1
        btfsc INTCON,7
        return
        F@JUMP update
INT@LBL2
        f@call INT@LBL1
F1_000014 equ $ ; IN [2HUM2TMP.BAS] ADCON1 = $84
        f@call INT@LBL1
        movlw 132
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000015 equ $ ; IN [2HUM2TMP.BAS] T2CON = $26
        f@call INT@LBL1
        movlw 38
        movwf T2CON
        f@call INT@LBL1
F1_000016 equ $ ; IN [2HUM2TMP.BAS] PR2 = 250
        f@call INT@LBL1
        movlw 250
        bsf STATUS,5
ram_bank = 1
        movwf PR2
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000017 equ $ ; IN [2HUM2TMP.BAS] TMR2IE = 1
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bsf PIE1,1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000018 equ $ ; IN [2HUM2TMP.BAS] INTCON = $C0
        f@call INT@LBL1
        movlw 192
        movwf INTCON
        f@call INT@LBL1
F1_000030 equ $ ; IN [2HUM2TMP.BAS] OUTPUT BUZZER : INPUT UP_KEY
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,6
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bsf TRISB,1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000031 equ $ ; IN [2HUM2TMP.BAS] INPUT SET_KEY : INPUT DOWN_KEY
        bsf STATUS,5
ram_bank = 1
        bsf TRISB,0
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,7
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000032 equ $ ; IN [2HUM2TMP.BAS] OUTPUT TMP1_RLY : OUTPUT TMP2_RLY
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,0
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000033 equ $ ; IN [2HUM2TMP.BAS] OUTPUT HUM1_RLY : OUTPUT HUM2_RLY
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,2
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000034 equ $ ; IN [2HUM2TMP.BAS] OUTPUT TMR_RLY1 : OUTPUT TMR_RLY2
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,5
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F1_000051 equ $ ; IN [2HUM2TMP.BAS] TMP1_ALART_L = EREAD 0
        f@call INT@LBL1
        movlw 0
        f@call EE@RD
        movwf tmp1_alart_l
        f@call INT@LBL1
F1_000052 equ $ ; IN [2HUM2TMP.BAS] TMP2_ALART_L = EREAD 1
        f@call INT@LBL1
        movlw 1
        f@call EE@RD
        movwf tmp2_alart_l
        f@call INT@LBL1
F1_000053 equ $ ; IN [2HUM2TMP.BAS] HUM1_ALART_L = EREAD 2
        f@call INT@LBL1
        movlw 2
        f@call EE@RD
        movwf hum1_alart_l
        f@call INT@LBL1
F1_000054 equ $ ; IN [2HUM2TMP.BAS] HUM2_ALART_L = EREAD 3
        f@call INT@LBL1
        movlw 3
        f@call EE@RD
        movwf hum2_alart_l
        f@call INT@LBL1
F1_000055 equ $ ; IN [2HUM2TMP.BAS] MM = EREAD 4
        f@call INT@LBL1
        movlw 4
        f@call EE@RD
        movwf mm
        f@call EE@RD@W
        movwf mmH
        f@call INT@LBL1
F1_000056 equ $ ; IN [2HUM2TMP.BAS] SS = EREAD 6
        f@call INT@LBL1
        movlw 6
        f@call EE@RD
        movwf ss
        f@call INT@LBL1
F1_000057 equ $ ; IN [2HUM2TMP.BAS] T_FLAG = EREAD 7
        f@call INT@LBL1
        movlw 7
        f@call EE@RD
        movwf t_flag
        f@call INT@LBL1
F1_000059 equ $ ; IN [2HUM2TMP.BAS] TMR_RLY1 = 1
        f@call INT@LBL1
        bsf PORTC,4
        f@call INT@LBL1
F1_000060 equ $ ; IN [2HUM2TMP.BAS] TMR_RLY2 = 0
        f@call INT@LBL1
        bcf PORTC,5
        f@call INT@LBL1
F1_000062 equ $ ; IN [2HUM2TMP.BAS] CLEAR PORTC
        clrf PORTC
        f@call INT@LBL1
F1_000063 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F3_SOF equ $ ; DHT11.INC
        f@call INT@LBL1
F3_000016 equ $ ; IN [DHT11.INC] GOTO MAIN
        F@JUMP main
read_DHT11_1
        f@call INT@LBL1
F3_000019 equ $ ; IN [DHT11.INC] DHT11_DIR1 = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,2
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000020 equ $ ; IN [DHT11.INC] DHT11_PIN1 = 0 : DELAYMS 25
        f@call INT@LBL1
        bcf PORTA,2
        f@call INT@LBL1
        movlw 25
        f@call DL@MS
        f@call INT@LBL1
F3_000021 equ $ ; IN [DHT11.INC] DHT11_PIN1 = 1 : DELAYUS 40
        f@call INT@LBL1
        bsf PORTA,2
        f@call INT@LBL1
        movlw 40
        f@call DL@US
        f@call INT@LBL1
F3_000023 equ $ ; IN [DHT11.INC] HAUT = PULSIN DHT11_PIN1, 1
        f@call INT@LBL1
        movlw 1
        movwf PP0
        movlw 5
        movwf FSR
        movlw 4
        f@call P@IN
        movf PP0,W
        bsf STATUS,5
ram_bank = 1
        movwf haut
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000024 equ $ ; IN [DHT11.INC] IF HAUT < 15 THEN GOTO READ_DHT11_1
        movlw 15
        bsf STATUS,5
ram_bank = 1
        subwf haut,W
        set@page BC@LL2
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto BC@LL2
        f@call INT@LBL1
        F@JUMP read_DHT11_1
BC@LL2
        f@call INT@LBL1
F3_000026 equ $ ; IN [DHT11.INC] FOR X = 31 TO 0 STEP -1
        movlw 31
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB4
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000027 equ $ ; IN [DHT11.INC] DHT[X] = PULSIN DHT11_PIN1, 1
        f@call INT@LBL1
        movlw 1
        movwf PP0
        movlw 5
        movwf FSR
        movlw 4
        f@call P@IN
        movf PP0,W
        movwf PBP#VAR0
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        bcf STATUS,5
ram_bank = 0
        movf PBP#VAR0,W
        movwf INDF
        f@call INT@LBL1
CT@LB6
F3_000028 equ $ ; IN [DHT11.INC] NEXT X
        movlw 1
        bsf STATUS,5
ram_bank = 1
        subwf _X,F
        set@page FR@LB4
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto FR@LB4
NX@LB5
        f@call INT@LBL1
F3_000030 equ $ ; IN [DHT11.INC] FOR X = 31 TO 0 STEP -1
        movlw 31
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB7
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000031 equ $ ; IN [DHT11.INC] IF DHT[X] > 9 THEN
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movlw 10
        subwf PBP#VAR0,W
        set@page BC@LL10
        btfss STATUS,0
        goto BC@LL10
        f@call INT@LBL1
F3_000032 equ $ ; IN [DHT11.INC] DHT[X] = 1
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movlw 1
        movwf INDF
        bcf STATUS,5
ram_bank = 0
        F@JUMP BC@LL11
BC@LL10
F3_000033 equ $ ; IN [DHT11.INC] ELSE
        f@call INT@LBL1
F3_000034 equ $ ; IN [DHT11.INC] DHT[X] = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movlw 0
        movwf INDF
F3_000035 equ $ ; IN [DHT11.INC] ENDIF
BC@LL11
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
CT@LB9
F3_000036 equ $ ; IN [DHT11.INC] NEXT X
        movlw 1
        bsf STATUS,5
ram_bank = 1
        subwf _X,F
        set@page FR@LB7
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto FR@LB7
NX@LB8
        f@call INT@LBL1
F3_000038 equ $ ; IN [DHT11.INC] HUMIDITY1 = DHT[31] * 128 + DHT[30] * 64 + DHT[29] * 32 + DHT[28] * 16 + DHT[27] * 8 + DHT[26] * 4 + DHT[25] * 2 + DHT[24] * 1
        f@call INT@LBL1
        movf dht#31,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        rrf PP7H,W
        rrf PP7,W
        movwf PP7H
        clrf PP7
        rrf PP7,F
        movf dht#30,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 6
        movwf PP0
M@LB1
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB1
        btfss STATUS,2
        goto M@LB1
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#29,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 5
        movwf PP0
M@LB2
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB2
        btfss STATUS,2
        goto M@LB2
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#28,W
        movwf PBP#VAR3
        clrf PP8H
        movf PBP#VAR3,W
        movwf PP8
        movlw 4
        movwf PP0
M@LB3
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB3
        btfss STATUS,2
        goto M@LB3
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#27,W
        movwf PBP#VAR4
        clrf PP8H
        movf PBP#VAR4,W
        movwf PP8
        movlw 3
        movwf PP0
M@LB4
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB4
        btfss STATUS,2
        goto M@LB4
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#26,W
        movwf PBP#VAR5
        clrf PP8H
        movf PBP#VAR5,W
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#25,W
        movwf PBP#VAR6
        clrf PP8H
        movf PBP#VAR6,W
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#24,W
        movwf PBP#VAR7
        clrf PP8H
        movf PBP#VAR7,W
        movwf PP8
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf humidity1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000039 equ $ ; IN [DHT11.INC] TEMP1 = DHT[15] * 128 + DHT[14] * 64 + DHT[13] * 32 + DHT[12] * 16 + DHT[11] * 8 + DHT[10] * 4 + DHT[9] * 2 + DHT[8] * 1
        f@call INT@LBL1
        movf dht#15,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        rrf PP7H,W
        rrf PP7,W
        movwf PP7H
        clrf PP7
        rrf PP7,F
        movf dht#14,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 6
        movwf PP0
M@LB5
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB5
        btfss STATUS,2
        goto M@LB5
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#13,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 5
        movwf PP0
M@LB6
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB6
        btfss STATUS,2
        goto M@LB6
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#12,W
        movwf PBP#VAR3
        clrf PP8H
        movf PBP#VAR3,W
        movwf PP8
        movlw 4
        movwf PP0
M@LB7
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB7
        btfss STATUS,2
        goto M@LB7
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#11,W
        movwf PBP#VAR4
        clrf PP8H
        movf PBP#VAR4,W
        movwf PP8
        movlw 3
        movwf PP0
M@LB8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB8
        btfss STATUS,2
        goto M@LB8
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#10,W
        movwf PBP#VAR5
        clrf PP8H
        movf PBP#VAR5,W
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#9,W
        movwf PBP#VAR6
        clrf PP8H
        movf PBP#VAR6,W
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#8,W
        movwf PBP#VAR7
        clrf PP8H
        movf PBP#VAR7,W
        movwf PP8
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf temp1
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000040 equ $ ; IN [DHT11.INC] RETURN
        return
read_DHT11_2
        f@call INT@LBL1
F3_000043 equ $ ; IN [DHT11.INC] DHT11_DIR2 = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,5
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000044 equ $ ; IN [DHT11.INC] DHT11_PIN2 = 0 : DELAYMS 25
        f@call INT@LBL1
        bcf PORTA,5
        f@call INT@LBL1
        movlw 25
        f@call DL@MS
        f@call INT@LBL1
F3_000045 equ $ ; IN [DHT11.INC] DHT11_PIN2 = 1 : DELAYUS 40
        f@call INT@LBL1
        bsf PORTA,5
        f@call INT@LBL1
        movlw 40
        f@call DL@US
        f@call INT@LBL1
F3_000047 equ $ ; IN [DHT11.INC] HAUT = PULSIN DHT11_PIN2, 1
        f@call INT@LBL1
        movlw 1
        movwf PP0
        movlw 5
        movwf FSR
        movlw 32
        f@call P@IN
        movf PP0,W
        bsf STATUS,5
ram_bank = 1
        movwf haut
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000048 equ $ ; IN [DHT11.INC] IF HAUT < 15 THEN GOTO READ_DHT11_2
        movlw 15
        bsf STATUS,5
ram_bank = 1
        subwf haut,W
        set@page BC@LL13
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto BC@LL13
        f@call INT@LBL1
        F@JUMP read_DHT11_2
BC@LL13
        f@call INT@LBL1
F3_000050 equ $ ; IN [DHT11.INC] FOR X = 31 TO 0 STEP -1
        movlw 31
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB15
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000051 equ $ ; IN [DHT11.INC] DHT[X] = PULSIN DHT11_PIN2, 1
        f@call INT@LBL1
        movlw 1
        movwf PP0
        movlw 5
        movwf FSR
        movlw 32
        f@call P@IN
        movf PP0,W
        movwf PBP#VAR0
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        bcf STATUS,5
ram_bank = 0
        movf PBP#VAR0,W
        movwf INDF
        f@call INT@LBL1
CT@LB17
F3_000052 equ $ ; IN [DHT11.INC] NEXT X
        movlw 1
        bsf STATUS,5
ram_bank = 1
        subwf _X,F
        set@page FR@LB15
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto FR@LB15
NX@LB16
        f@call INT@LBL1
F3_000054 equ $ ; IN [DHT11.INC] FOR X = 31 TO 0 STEP -1
        movlw 31
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB18
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000055 equ $ ; IN [DHT11.INC] IF DHT[X] > 9 THEN
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movlw 10
        subwf PBP#VAR0,W
        set@page BC@LL21
        btfss STATUS,0
        goto BC@LL21
        f@call INT@LBL1
F3_000056 equ $ ; IN [DHT11.INC] DHT[X] = 1
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movlw 1
        movwf INDF
        bcf STATUS,5
ram_bank = 0
        F@JUMP BC@LL22
BC@LL21
F3_000057 equ $ ; IN [DHT11.INC] ELSE
        f@call INT@LBL1
F3_000058 equ $ ; IN [DHT11.INC] DHT[X] = 0
        f@call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw dht
        movwf FSR
        movlw 0
        movwf INDF
F3_000059 equ $ ; IN [DHT11.INC] ENDIF
BC@LL22
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
CT@LB20
F3_000060 equ $ ; IN [DHT11.INC] NEXT X
        movlw 1
        bsf STATUS,5
ram_bank = 1
        subwf _X,F
        set@page FR@LB18
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto FR@LB18
NX@LB19
        f@call INT@LBL1
F3_000062 equ $ ; IN [DHT11.INC] HUMIDITY2 = DHT[31] * 128 + DHT[30] * 64 + DHT[29] * 32 + DHT[28] * 16 + DHT[27] * 8 + DHT[26] * 4 + DHT[25] * 2 + DHT[24] * 1
        f@call INT@LBL1
        movf dht#31,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        rrf PP7H,W
        rrf PP7,W
        movwf PP7H
        clrf PP7
        rrf PP7,F
        movf dht#30,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 6
        movwf PP0
M@LB9
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB9
        btfss STATUS,2
        goto M@LB9
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#29,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 5
        movwf PP0
M@LB10
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB10
        btfss STATUS,2
        goto M@LB10
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#28,W
        movwf PBP#VAR3
        clrf PP8H
        movf PBP#VAR3,W
        movwf PP8
        movlw 4
        movwf PP0
M@LB11
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB11
        btfss STATUS,2
        goto M@LB11
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#27,W
        movwf PBP#VAR4
        clrf PP8H
        movf PBP#VAR4,W
        movwf PP8
        movlw 3
        movwf PP0
M@LB12
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB12
        btfss STATUS,2
        goto M@LB12
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#26,W
        movwf PBP#VAR5
        clrf PP8H
        movf PBP#VAR5,W
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#25,W
        movwf PBP#VAR6
        clrf PP8H
        movf PBP#VAR6,W
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#24,W
        movwf PBP#VAR7
        clrf PP8H
        movf PBP#VAR7,W
        movwf PP8
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf humidity2
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000063 equ $ ; IN [DHT11.INC] TEMP2 = DHT[15] * 128 + DHT[14] * 64 + DHT[13] * 32 + DHT[12] * 16 + DHT[11] * 8 + DHT[10] * 4 + DHT[9] * 2 + DHT[8] * 1
        f@call INT@LBL1
        movf dht#15,W
        movwf PBP#VAR0
        clrf PP7H
        movf PBP#VAR0,W
        movwf PP7
        rrf PP7H,W
        rrf PP7,W
        movwf PP7H
        clrf PP7
        rrf PP7,F
        movf dht#14,W
        movwf PBP#VAR1
        clrf PP8H
        movf PBP#VAR1,W
        movwf PP8
        movlw 6
        movwf PP0
M@LB13
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB13
        btfss STATUS,2
        goto M@LB13
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#13,W
        movwf PBP#VAR2
        clrf PP8H
        movf PBP#VAR2,W
        movwf PP8
        movlw 5
        movwf PP0
M@LB14
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB14
        btfss STATUS,2
        goto M@LB14
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#12,W
        movwf PBP#VAR3
        clrf PP8H
        movf PBP#VAR3,W
        movwf PP8
        movlw 4
        movwf PP0
M@LB15
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB15
        btfss STATUS,2
        goto M@LB15
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#11,W
        movwf PBP#VAR4
        clrf PP8H
        movf PBP#VAR4,W
        movwf PP8
        movlw 3
        movwf PP0
M@LB16
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        decf PP0,F
        set@page M@LB16
        btfss STATUS,2
        goto M@LB16
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#10,W
        movwf PBP#VAR5
        clrf PP8H
        movf PBP#VAR5,W
        movwf PP8
        rlf PP8,F
        rlf PP8H,F
        rlf PP8,F
        rlf PP8H,F
        movlw 252
        andwf PP8,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#9,W
        movwf PBP#VAR6
        clrf PP8H
        movf PBP#VAR6,W
        movwf PP8
        bcf STATUS,0
        rlf PP8,F
        rlf PP8H,F
        movf PP8,W
        addwf PP7,F
        movf PP8H,W
        btfsc STATUS,0
        addlw 1
        addwf PP7H,F
        movf dht#8,W
        movwf PBP#VAR7
        clrf PP8H
        movf PBP#VAR7,W
        movwf PP8
        movf PP7,W
        addwf PP8,W
        bsf STATUS,5
ram_bank = 1
        movwf temp2
        bcf STATUS,5
ram_bank = 0
        f@call INT@LBL1
F3_000064 equ $ ; IN [DHT11.INC] RETURN
        return
F3_EOF equ $ ; DHT11.INC
main
        f@call INT@LBL1
F1_000068 equ $ ; IN [2HUM2TMP.BAS] TMP1 = ADIN 0
        f@call INT@LBL1
        movlw 0
        f@call RD@AD
        movwf tmp1
        movf PP7H,W
        movwf tmp1H
        f@call INT@LBL1
F1_000069 equ $ ; IN [2HUM2TMP.BAS] TMP1 = (TMP1 * 0.004887) * 100
        f@call INT@LBL1
        movf tmp1,W
        movwf PP_AARG
        movf tmp1H,W
        movwf PP_AARGH
        f@call INT16@TOFL32
        movlw 33
        movwf PP_BARGHHH
        movlw 35
        movwf PP_BARGHH
        movlw 32
        movwf PP_BARGH
        movlw 119
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
        clrf PP_AARGHHH
        clrf PP_AARGHH
        movlw 72
        movwf PP_AARGH
        movlw 133
        movwf PP_AARG
        movf PP7HHH,W
        movwf PP_BARGHHH
        movf PP7HH,W
        movwf PP_BARGHH
        movf PP7H,W
        movwf PP_BARGH
        movf PP7,W
        movwf PP_BARG
        f@call FPM@32
        f@call FL32@TOINT32
        movwf tmp1
        movf PP_AARGH,W
        movwf tmp1H
        f@call INT@LBL1
F1_000071 equ $ ; IN [2HUM2TMP.BAS] TMP2 = ADIN 1
        f@call INT@LBL1
        movlw 1
        f@call RD@AD
        movwf tmp2
        movf PP7H,W
        movwf tmp2H
        f@call INT@LBL1
F1_000072 equ $ ; IN [2HUM2TMP.BAS] TMP2 = (TMP2 * 0.004887) * 100
        f@call INT@LBL1
        movf tmp2,W
        movwf PP_AARG
        movf tmp2H,W
        movwf PP_AARGH
        f@call INT16@TOFL32
        movlw 33
        movwf PP_BARGHHH
        movlw 35
        movwf PP_BARGHH
        movlw 32
        movwf PP_BARGH
        movlw 119
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
        clrf PP_AARGHHH
        clrf PP_AARGHH
        movlw 72
        movwf PP_AARGH
        movlw 133
        movwf PP_AARG
        movf PP7HHH,W
        movwf PP_BARGHHH
        movf PP7HH,W
        movwf PP_BARGHH
        movf PP7H,W
        movwf PP_BARGH
        movf PP7,W
        movwf PP_BARG
        f@call FPM@32
        f@call FL32@TOINT32
        movwf tmp2
        movf PP_AARGH,W
        movwf tmp2H
        f@call INT@LBL1
F1_000074 equ $ ; IN [2HUM2TMP.BAS] GOSUB READ_DHT11_1
        f@call read_DHT11_1
        f@call INT@LBL1
F1_000075 equ $ ; IN [2HUM2TMP.BAS] GOSUB READ_DHT11_2
        f@call read_DHT11_2
        f@call INT@LBL1
F1_000077 equ $ ; IN [2HUM2TMP.BAS] IF TMP1 != TMP1_ALART_L THEN
        movf tmp1H,F
        set@page CP@LB2
        btfss STATUS,2
        goto CP@LB2
        movf tmp1,W
        subwf tmp1_alart_l,W
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
CP@LB2
        f@call INT@LBL1
F1_000078 equ $ ; IN [2HUM2TMP.BAS] TMP1_RLY = 1
        f@call INT@LBL1
        bsf PORTC,0
        f@call INT@LBL1
F1_000079 equ $ ; IN [2HUM2TMP.BAS] ALARM_F = 1
        f@call INT@LBL1
        bsf _B#VR1,1
        F@JUMP BC@LL25
BC@LL24
F1_000080 equ $ ; IN [2HUM2TMP.BAS] ELSE
        f@call INT@LBL1
F1_000081 equ $ ; IN [2HUM2TMP.BAS] TMP1_RLY = 0
        f@call INT@LBL1
        bcf PORTC,0
        f@call INT@LBL1
F1_000082 equ $ ; IN [2HUM2TMP.BAS] ALARM_F = 0
        f@call INT@LBL1
        bcf _B#VR1,1
F1_000083 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL25
        f@call INT@LBL1
F1_000085 equ $ ; IN [2HUM2TMP.BAS] IF ALARM_F = 1 THEN
        set@page BC@LL27
        btfss _B#VR1,1
        goto BC@LL27
        f@call INT@LBL1
F1_000086 equ $ ; IN [2HUM2TMP.BAS] BUZZER = 1
        f@call INT@LBL1
        bsf PORTC,6
        F@JUMP BC@LL28
BC@LL27
F1_000087 equ $ ; IN [2HUM2TMP.BAS] ELSE
        f@call INT@LBL1
F1_000088 equ $ ; IN [2HUM2TMP.BAS] BUZZER = 0
        f@call INT@LBL1
        bcf PORTC,6
F1_000089 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL28
        f@call INT@LBL1
F1_000091 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, DEC3 TMP1, 223, "C"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf tmp1H,W
        movwf PP2H
        movf tmp1,W
        movwf PP2
        f@call OUT@DEC
        movlw 223
        f@call PRINT
        movlw 67
        f@call PRINT
        f@call INT@LBL1
F1_000092 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 TMP2, 223, "C"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf tmp2H,W
        movwf PP2H
        movf tmp2,W
        movwf PP2
        f@call OUT@DEC
        movlw 223
        f@call PRINT
        movlw 67
        f@call PRINT
        f@call INT@LBL1
F1_000094 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,7, DEC3 HUMIDITY1, "%"
        movlw 128
        movwf BPFH
        movlw 134
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        bsf STATUS,5
ram_bank = 1
        movf humidity1,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECC
        movlw 37
        f@call PRINT
        f@call INT@LBL1
F1_000095 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,13, DEC3 HUMIDITY2, "%"
        movlw 128
        movwf BPFH
        movlw 140
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        bsf STATUS,5
ram_bank = 1
        movf humidity2,W
        bcf STATUS,5
ram_bank = 0
        f@call OUT@DECC
        movlw 37
        f@call PRINT
        f@call INT@LBL1
F1_000097 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,11, DEC3 MM, ":", DEC2 SS
        movlw 128
        movwf BPFH
        movlw 202
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf mmH,W
        movwf PP2H
        movf mm,W
        movwf PP2
        f@call OUT@DEC
        movlw 58
        f@call PRINT
        movlw 2
        movwf GEN4H
        movf ss,W
        f@call OUT@DECC
        f@call INT@LBL1
F1_000099 equ $ ; IN [2HUM2TMP.BAS] IF SET_KEY = 1 THEN GOSUB SETUP
        set@page BC@LL30
        btfss PORTB,0
        goto BC@LL30
        f@call INT@LBL1
        f@call setup
BC@LL30
        f@call INT@LBL1
F1_000101 equ $ ; IN [2HUM2TMP.BAS] IF T_FLAG = 1 AND SEC_F = 1 THEN
        movlw 1
        subwf t_flag,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
        f@call INT@LBL1
F1_000102 equ $ ; IN [2HUM2TMP.BAS] IF SS = 0 THEN SS = 60 : DEC MM
        movf ss,F
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
        f@call INT@LBL1
        f@call INT@LBL1
        movlw 60
        movwf ss
        f@call INT@LBL1
        decf mm,F
        incf mm,W
        btfsc STATUS,2
        decf mmH,F
BC@LL34
        f@call INT@LBL1
F1_000103 equ $ ; IN [2HUM2TMP.BAS] DEC SS
        decf ss,F
        f@call INT@LBL1
F1_000104 equ $ ; IN [2HUM2TMP.BAS] SEC_F = 0
        f@call INT@LBL1
        bcf _B#VR1,0
        f@call INT@LBL1
F1_000105 equ $ ; IN [2HUM2TMP.BAS] IF MM = 0 AND SS = 0 THEN
        movf mmH,W
        iorwf mm,W
        set@page CP@LB3
        btfsc STATUS,2
        goto CP@LB3
        clrw
        btfss STATUS,2
CP@LB3
        movlw 1
        movwf SP#P9
        movlw 1
        movf ss,F
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL36
        btfsc STATUS,2
        goto BC@LL36
        f@call INT@LBL1
F1_000106 equ $ ; IN [2HUM2TMP.BAS] MM = EREAD 4
        f@call INT@LBL1
        movlw 4
        f@call EE@RD
        movwf mm
        f@call EE@RD@W
        movwf mmH
        f@call INT@LBL1
F1_000107 equ $ ; IN [2HUM2TMP.BAS] SS = EREAD 6
        f@call INT@LBL1
        movlw 6
        f@call EE@RD
        movwf ss
        f@call INT@LBL1
F1_000108 equ $ ; IN [2HUM2TMP.BAS] TMR_RLY1 = ~TMR_RLY1
        f@call INT@LBL1
        movlw 16
        xorwf PORTC,F
        f@call INT@LBL1
F1_000109 equ $ ; IN [2HUM2TMP.BAS] TMR_RLY2 = ~TMR_RLY2
        f@call INT@LBL1
        movlw 32
        xorwf PORTC,F
F1_000110 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL36
F1_000111 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL32
        f@call INT@LBL1
F1_000112 equ $ ; IN [2HUM2TMP.BAS] GOTO MAIN
        F@JUMP main
setup
        f@call INT@LBL1
F1_000115 equ $ ; IN [2HUM2TMP.BAS] MM = EREAD 4
        f@call INT@LBL1
        movlw 4
        f@call EE@RD
        movwf mm
        f@call EE@RD@W
        movwf mmH
        f@call INT@LBL1
F1_000116 equ $ ; IN [2HUM2TMP.BAS] SS = EREAD 6
        f@call INT@LBL1
        movlw 6
        f@call EE@RD
        movwf ss
        f@call INT@LBL1
F1_000117 equ $ ; IN [2HUM2TMP.BAS] CLS
        f@call LCD@CLS
        f@call INT@LBL1
F1_000118 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
        f@call INT@LBL1
F1_000120 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, "TIMER SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
        f@call INT@LBL1
F1_000121 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL37
        set@page BC@LL38
        btfsc PORTB,0
        goto BC@LL38
        f@call INT@LBL1
F1_000122 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 MM, ":", DEC2 SS, "  MM"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf mmH,W
        movwf PP2H
        movf mm,W
        movwf PP2
        f@call OUT@DEC
        movlw 58
        f@call PRINT
        movlw 2
        movwf GEN4H
        movf ss,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 77
        f@call PRINT
        f@call PRINT
        f@call INT@LBL1
F1_000124 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC MM
        set@page BC@LL40
        btfss PORTB,1
        goto BC@LL40
        f@call INT@LBL1
        incf mm,F
        btfsc STATUS,2
        incf mmH,F
BC@LL40
        f@call INT@LBL1
F1_000125 equ $ ; IN [2HUM2TMP.BAS] IF MM > 900 THEN MM = 0
        movlw 3
        subwf mmH,W
        set@page BC@LL42
        btfss STATUS,0
        goto BC@LL42
        set@page CP@LB5
        btfss STATUS,2
        goto CP@LB5
        movlw 133
        subwf mm,W
        set@page BC@LL42
        btfss STATUS,0
        goto BC@LL42
CP@LB5
        f@call INT@LBL1
        f@call INT@LBL1
        clrf mmH
        clrf mm
BC@LL42
        f@call INT@LBL1
F1_000126 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC MM
        set@page BC@LL44
        btfss PORTC,7
        goto BC@LL44
        f@call INT@LBL1
        decf mm,F
        incf mm,W
        btfsc STATUS,2
        decf mmH,F
BC@LL44
        f@call INT@LBL1
F1_000128 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000129 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL37
BC@LL38
        f@call INT@LBL1
F1_000130 equ $ ; IN [2HUM2TMP.BAS] EWRITE 4,[MM]
        movlw 4
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf mm,W
        f@call EE@WR
        movf mmH,W
        f@call EE@WR
        f@call INT@LBL1
F1_000131 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000133 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL45
        set@page BC@LL46
        btfsc PORTB,0
        goto BC@LL46
        f@call INT@LBL1
F1_000134 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 MM, ":", DEC2 SS, "  SS"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf mmH,W
        movwf PP2H
        movf mm,W
        movwf PP2
        f@call OUT@DEC
        movlw 58
        f@call PRINT
        movlw 2
        movwf GEN4H
        movf ss,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 83
        f@call PRINT
        f@call PRINT
        f@call INT@LBL1
F1_000136 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC SS
        set@page BC@LL48
        btfss PORTB,1
        goto BC@LL48
        f@call INT@LBL1
        incf ss,F
BC@LL48
        f@call INT@LBL1
F1_000137 equ $ ; IN [2HUM2TMP.BAS] IF SS > 59 THEN SS = 0
        movlw 60
        subwf ss,W
        set@page BC@LL50
        btfss STATUS,0
        goto BC@LL50
        f@call INT@LBL1
        f@call INT@LBL1
        clrf ss
BC@LL50
        f@call INT@LBL1
F1_000138 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC SS
        set@page BC@LL52
        btfss PORTC,7
        goto BC@LL52
        f@call INT@LBL1
        decf ss,F
BC@LL52
        f@call INT@LBL1
F1_000140 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000141 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL45
BC@LL46
        f@call INT@LBL1
F1_000142 equ $ ; IN [2HUM2TMP.BAS] EWRITE 6,[SS]
        movlw 6
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf ss,W
        f@call EE@WR
        f@call INT@LBL1
F1_000143 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000145 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL53
        set@page BC@LL54
        btfsc PORTB,0
        goto BC@LL54
        f@call INT@LBL1
F1_000146 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 MM, ":", DEC2 SS, "  SS"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf mmH,W
        movwf PP2H
        movf mm,W
        movwf PP2
        f@call OUT@DEC
        movlw 58
        f@call PRINT
        movlw 2
        movwf GEN4H
        movf ss,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        f@call PRINT
        movlw 83
        f@call PRINT
        f@call PRINT
        f@call INT@LBL1
F1_000148 equ $ ; IN [2HUM2TMP.BAS] IF T_FLAG = 1 THEN
        movlw 1
        subwf t_flag,W
        set@page BC@LL56
        btfss STATUS,2
        goto BC@LL56
        f@call INT@LBL1
F1_000149 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,13, "ON "
        movlw 128
        movwf BPFH
        movlw 204
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 78
        f@call PRINT
        movlw 32
        f@call PRINT
        F@JUMP BC@LL57
BC@LL56
F1_000150 equ $ ; IN [2HUM2TMP.BAS] ELSE
        f@call INT@LBL1
F1_000151 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,13, "OFF"
        movlw 128
        movwf BPFH
        movlw 204
        f@call LCD@CRS
        movlw 79
        f@call PRINT
        movlw 70
        f@call PRINT
        f@call PRINT
F1_000152 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL57
        f@call INT@LBL1
F1_000154 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN
        set@page BC@LL59
        btfss PORTB,1
        goto BC@LL59
        f@call INT@LBL1
F1_000155 equ $ ; IN [2HUM2TMP.BAS] IF T_FLAG = 1 THEN
        movlw 1
        subwf t_flag,W
        set@page BC@LL61
        btfss STATUS,2
        goto BC@LL61
        f@call INT@LBL1
F1_000156 equ $ ; IN [2HUM2TMP.BAS] T_FLAG = 0
        f@call INT@LBL1
        clrf t_flag
        F@JUMP BC@LL62
BC@LL61
F1_000157 equ $ ; IN [2HUM2TMP.BAS] ELSE
        f@call INT@LBL1
F1_000158 equ $ ; IN [2HUM2TMP.BAS] T_FLAG = 1
        f@call INT@LBL1
        movlw 1
        movwf t_flag
F1_000159 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL62
F1_000160 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL59
        f@call INT@LBL1
F1_000162 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000163 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL53
BC@LL54
        f@call INT@LBL1
F1_000164 equ $ ; IN [2HUM2TMP.BAS] EWRITE 7,[T_FLAG]
        movlw 7
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf t_flag,W
        f@call EE@WR
        f@call INT@LBL1
F1_000165 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000166 equ $ ; IN [2HUM2TMP.BAS] CLS
        f@call LCD@CLS
        f@call INT@LBL1
F1_000168 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, "TEMP 1 SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
        f@call INT@LBL1
F1_000169 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL63
        set@page BC@LL64
        btfsc PORTB,0
        goto BC@LL64
        f@call INT@LBL1
F1_000170 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 TMP1_ALART_L, 223, "C"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf tmp1_alart_l,W
        f@call OUT@DECC
        movlw 223
        f@call PRINT
        movlw 67
        f@call PRINT
        f@call INT@LBL1
F1_000172 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC TMP1_ALART_L
        set@page BC@LL66
        btfss PORTB,1
        goto BC@LL66
        f@call INT@LBL1
        incf tmp1_alart_l,F
BC@LL66
        f@call INT@LBL1
F1_000173 equ $ ; IN [2HUM2TMP.BAS] IF TMP1_ALART_L > 100 THEN TMP1_ALART_L = 0
        movlw 101
        subwf tmp1_alart_l,W
        set@page BC@LL68
        btfss STATUS,0
        goto BC@LL68
        f@call INT@LBL1
        f@call INT@LBL1
        clrf tmp1_alart_l
BC@LL68
        f@call INT@LBL1
F1_000174 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC TMP1_ALART_L
        set@page BC@LL70
        btfss PORTC,7
        goto BC@LL70
        f@call INT@LBL1
        decf tmp1_alart_l,F
BC@LL70
        f@call INT@LBL1
F1_000176 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000177 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL63
BC@LL64
        f@call INT@LBL1
F1_000178 equ $ ; IN [2HUM2TMP.BAS] EWRITE 0,[TMP1_ALART_L]
        bsf STATUS,6
ram_bank = 2
        clrf EEADR
        bcf STATUS,6
ram_bank = 0
        movf tmp1_alart_l,W
        f@call EE@WR
        f@call INT@LBL1
F1_000179 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000181 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, "TEMP 2 SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
        f@call INT@LBL1
F1_000182 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL71
        set@page BC@LL72
        btfsc PORTB,0
        goto BC@LL72
        f@call INT@LBL1
F1_000183 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 TMP2_ALART_L, 223, "C"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf tmp2_alart_l,W
        f@call OUT@DECC
        movlw 223
        f@call PRINT
        movlw 67
        f@call PRINT
        f@call INT@LBL1
F1_000185 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC TMP2_ALART_L
        set@page BC@LL74
        btfss PORTB,1
        goto BC@LL74
        f@call INT@LBL1
        incf tmp2_alart_l,F
BC@LL74
        f@call INT@LBL1
F1_000186 equ $ ; IN [2HUM2TMP.BAS] IF TMP2_ALART_L > 100 THEN TMP2_ALART_L = 0
        movlw 101
        subwf tmp2_alart_l,W
        set@page BC@LL76
        btfss STATUS,0
        goto BC@LL76
        f@call INT@LBL1
        f@call INT@LBL1
        clrf tmp2_alart_l
BC@LL76
        f@call INT@LBL1
F1_000187 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC TMP2_ALART_L
        set@page BC@LL78
        btfss PORTC,7
        goto BC@LL78
        f@call INT@LBL1
        decf tmp2_alart_l,F
BC@LL78
        f@call INT@LBL1
F1_000189 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000190 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL71
BC@LL72
        f@call INT@LBL1
F1_000191 equ $ ; IN [2HUM2TMP.BAS] EWRITE 1,[TMP2_ALART_L]
        movlw 1
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf tmp2_alart_l,W
        f@call EE@WR
        f@call INT@LBL1
F1_000192 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000193 equ $ ; IN [2HUM2TMP.BAS] CLS
        f@call LCD@CLS
        f@call INT@LBL1
F1_000195 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, "HUMIDITY1 SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
        f@call INT@LBL1
F1_000196 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL79
        set@page BC@LL80
        btfsc PORTB,0
        goto BC@LL80
        f@call INT@LBL1
F1_000197 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 HUM1_ALART_L, "%"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf hum1_alart_l,W
        f@call OUT@DECC
        movlw 37
        f@call PRINT
        f@call INT@LBL1
F1_000199 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC HUM1_ALART_L
        set@page BC@LL82
        btfss PORTB,1
        goto BC@LL82
        f@call INT@LBL1
        incf hum1_alart_l,F
BC@LL82
        f@call INT@LBL1
F1_000200 equ $ ; IN [2HUM2TMP.BAS] IF HUM1_ALART_L > 100 THEN HUM1_ALART_L = 0
        movlw 101
        subwf hum1_alart_l,W
        set@page BC@LL84
        btfss STATUS,0
        goto BC@LL84
        f@call INT@LBL1
        f@call INT@LBL1
        clrf hum1_alart_l
BC@LL84
        f@call INT@LBL1
F1_000201 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC HUM1_ALART_L
        set@page BC@LL86
        btfss PORTC,7
        goto BC@LL86
        f@call INT@LBL1
        decf hum1_alart_l,F
BC@LL86
        f@call INT@LBL1
F1_000203 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000204 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL79
BC@LL80
        f@call INT@LBL1
F1_000205 equ $ ; IN [2HUM2TMP.BAS] EWRITE 2,[HUM1_ALART_L]
        movlw 2
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hum1_alart_l,W
        f@call EE@WR
        f@call INT@LBL1
F1_000206 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000208 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 1,1, "HUMIDITY2 SETUP:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
        f@call INT@LBL1
F1_000209 equ $ ; IN [2HUM2TMP.BAS] WHILE SET_KEY = 0
BC@LL87
        set@page BC@LL88
        btfsc PORTB,0
        goto BC@LL88
        f@call INT@LBL1
F1_000210 equ $ ; IN [2HUM2TMP.BAS] PRINT AT 2,1, DEC3 HUM2_ALART_L, "%"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 3
        movwf GEN4H
        movf hum2_alart_l,W
        f@call OUT@DECC
        movlw 37
        f@call PRINT
        f@call INT@LBL1
F1_000212 equ $ ; IN [2HUM2TMP.BAS] IF UP_KEY = 1 THEN INC HUM2_ALART_L
        set@page BC@LL90
        btfss PORTB,1
        goto BC@LL90
        f@call INT@LBL1
        incf hum2_alart_l,F
BC@LL90
        f@call INT@LBL1
F1_000213 equ $ ; IN [2HUM2TMP.BAS] IF HUM2_ALART_L > 100 THEN HUM2_ALART_L = 0
        movlw 101
        subwf hum2_alart_l,W
        set@page BC@LL92
        btfss STATUS,0
        goto BC@LL92
        f@call INT@LBL1
        f@call INT@LBL1
        clrf hum2_alart_l
BC@LL92
        f@call INT@LBL1
F1_000214 equ $ ; IN [2HUM2TMP.BAS] IF DOWN_KEY = 1 THEN DEC HUM2_ALART_L
        set@page BC@LL94
        btfss PORTC,7
        goto BC@LL94
        f@call INT@LBL1
        decf hum2_alart_l,F
BC@LL94
        f@call INT@LBL1
F1_000216 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000217 equ $ ; IN [2HUM2TMP.BAS] WEND
        F@JUMP BC@LL87
BC@LL88
        f@call INT@LBL1
F1_000218 equ $ ; IN [2HUM2TMP.BAS] EWRITE 3,[HUM2_ALART_L]
        movlw 3
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf hum2_alart_l,W
        f@call EE@WR
        f@call INT@LBL1
F1_000219 equ $ ; IN [2HUM2TMP.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call INT@LBL1
F1_000220 equ $ ; IN [2HUM2TMP.BAS] CLS
        f@call LCD@CLS
        f@call INT@LBL1
F1_000221 equ $ ; IN [2HUM2TMP.BAS] RETURN
        return
F1_000223 equ $ ; IN [2HUM2TMP.BAS] DISABLE
update
F1_000225 equ $ ; IN [2HUM2TMP.BAS] IF TMR2IF = 1 THEN
        set@page BC@LL96
        btfss PIR1,1
        goto BC@LL96
F1_000226 equ $ ; IN [2HUM2TMP.BAS] TMR2IF = 0
        bcf PIR1,1
F1_000227 equ $ ; IN [2HUM2TMP.BAS] IF T_FLAG = 1 THEN
        movlw 1
        subwf t_flag,W
        set@page BC@LL98
        btfss STATUS,2
        goto BC@LL98
F1_000228 equ $ ; IN [2HUM2TMP.BAS] INC CNT
        incf cnt,F
F1_000229 equ $ ; IN [2HUM2TMP.BAS] IF CNT = 10 THEN CNT = 0 : SEC_F = 1
        movlw 10
        subwf cnt,W
        set@page BC@LL100
        btfss STATUS,2
        goto BC@LL100
        clrf cnt
        bsf _B#VR1,0
BC@LL100
F1_000230 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL98
F1_000231 equ $ ; IN [2HUM2TMP.BAS] ENDIF
BC@LL96
F1_000232 equ $ ; IN [2HUM2TMP.BAS] ENABLE
F1_000233 equ $ ; IN [2HUM2TMP.BAS] RESUME
        retfie
F1_EOF equ $ ; 2HUM2TMP.BAS
PB@LB102
        f@call INT@LBL1
        F@JUMP PB@LB102
STR@LB1
        de 84,105,109,101,114,32,115,101,116,117,112,58,0
STR@LB2
        de 84,101,109,112,32,49,32,83,101,116,117,112,58,0
STR@LB3
        de 84,101,109,112,32,50,32,83,101,116,117,112,58,0
STR@LB4
        de 72,117,109,105,100,105,116,121,49,32,83,101,116,117,112,58,0
STR@LB5
        de 72,117,109,105,100,105,116,121,50,32,83,101,116,117,112,58,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_OFF&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_ON
        end
