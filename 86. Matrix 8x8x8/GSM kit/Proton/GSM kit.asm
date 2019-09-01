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
#define _SYSTEM_VARIABLE_COUNT 20
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
PP1 = 42
PP1H = 43
PP2 = 44
PP2H = 45
PP3 = 46
PP3H = 47
PP4 = 48
PP6 = 49
PP6H = 50
SP#P9 = 51
number = 52
variable number#0=52,number#1=53,number#2=54,number#3=55
variable number#4=56,number#5=57,number#6=58,number#7=59
variable number#8=60,number#9=61,number#10=62
checkpoint = 63
msg = 64
variable msg#0=64,msg#1=65,msg#2=66,msg#3=67
variable msg#4=68,msg#5=69,msg#6=70,msg#7=71
variable msg#8=72,msg#9=73,msg#10=74,msg#11=75
variable msg#12=76,msg#13=77,msg#14=78,msg#15=79
variable msg#16=80,msg#17=81,msg#18=82,msg#19=83
variable msg#20=84,msg#21=85,msg#22=86,msg#23=87
variable msg#24=88,msg#25=89,msg#26=90,msg#27=91
variable msg#28=92,msg#29=93,msg#30=94,msg#31=95
variable msg#32=96,msg#33=97,msg#34=98,msg#35=99
variable msg#36=100,msg#37=101,msg#38=102,msg#39=103
variable msg#40=104,msg#41=105,msg#42=106,msg#43=107
variable msg#44=108,msg#45=109,msg#46=110,msg#47=111
variable msg#48=112,msg#49=113,msg#50=114,msg#51=115
variable msg#52=116,msg#53=117,msg#54=118,msg#55=119
variable msg#56=120,msg#57=121,msg#58=122,msg#59=123
variable msg#60=124,msg#61=125,msg#62=126,msg#63=127
variable msg#64=160,msg#65=161,msg#66=162,msg#67=163
variable msg#68=164,msg#69=165,msg#70=166,msg#71=167
variable msg#72=168,msg#73=169,msg#74=170,msg#75=171
variable msg#76=172,msg#77=173,msg#78=174,msg#79=175
rxd = 176
_X = 177
#define __XTAL 20
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
        btfsc 47,7
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
        movwf 41
        movlw 48
        goto DLUS@W
MB@STROUT
        movwf 44
        clrf 38
MB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 44,W
        movwf 36
        movf 38,W
        call GET@ARRAY
        skpnz
        goto I@NT
        call CH@SND
        incf 38,F
        decf 37,F
        goto MB@STROUTLP
PRINT
        movwf 47
        bcf PORTB,2
        bcf PORTB,3
        bsf 3,5
        bcf PORTB,2
        bcf PORTB,3
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
        bcf PORTB,3
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
        bsf PORTB,3
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,2
        movlw 15
        andwf PORTB,F
        movf 46,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,2
        swapf 46,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 47,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 35,W
        movwf 40
        movf 39,W
        movwf 41
        clrf 42
        clrf 43
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        incfsz 42,W
        goto $ - 16
        incfsz 43,W
        goto $ - 17
        movlw 250
        movwf 42
        clrf 43
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
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
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
PUT@ARRAY
        movwf 46
PUT@ARRAYW
        movf 37,W
        movwf 47
        addwf 38,W
        call FIND@ADDRESS
        movf 46,W
        movwf 0
        goto I@NT
GET@ARRAY
        movwf 46
GET@ARRAYW
        movf 36,W
        movwf 47
        movf 46,W
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
        clrf 32
F2_SOF equ $ ; GSM KIT.PRP
F2_EOF equ $ ; GSM KIT.PRP
F1_SOF equ $ ; GSM KIT.BAS
F1_000023 equ $ ; IN [GSM KIT.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000025 equ $ ; IN [GSM KIT.BAS] CHECKPOINT = 0 : X = 0
        clrf checkpoint
        bsf STATUS,5
ram_bank = 1
        clrf _X
Gsm_init
        bcf STATUS,5
ram_bank = 0
F1_000028 equ $ ; IN [GSM KIT.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000029 equ $ ; IN [GSM KIT.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
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
F1_000030 equ $ ; IN [GSM KIT.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000031 equ $ ; IN [GSM KIT.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F1_000032 equ $ ; IN [GSM KIT.BAS] HSEROUT["AT+CMGF=1", 13, 10]
        movlw 4
        movwf BPFH
        movlw (STR@LB1 >> 8) & 255
        movwf GEN4H
        movlw STR@LB1 & 255
        f@call C@STROUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000033 equ $ ; IN [GSM KIT.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F1_000034 equ $ ; IN [GSM KIT.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
        movlw 4
        movwf BPFH
        movlw (STR@LB2 >> 8) & 255
        movwf GEN4H
        movlw STR@LB2 & 255
        f@call C@STROUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000035 equ $ ; IN [GSM KIT.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F1_000036 equ $ ; IN [GSM KIT.BAS] HSEROUT["AT+CMGD=1,4", 13, 10]
        movlw 4
        movwf BPFH
        movlw (STR@LB3 >> 8) & 255
        movwf GEN4H
        movlw STR@LB3 & 255
        f@call C@STROUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000037 equ $ ; IN [GSM KIT.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F1_000038 equ $ ; IN [GSM KIT.BAS] CLS
        f@call LCD@CLS
main
F1_000041 equ $ ; IN [GSM KIT.BAS] GOSUB RECEIVE_SMS
        f@call RECEIVE_SMS
F1_000042 equ $ ; IN [GSM KIT.BAS] GOTO MAIN
        F@JUMP main
RECEIVE_SMS
F1_000045 equ $ ; IN [GSM KIT.BAS] RXD = HRSIN , {100, OVER}
        clrf GENH
        movlw 100
        movwf GEN
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        bsf STATUS,5
ram_bank = 1
        movwf rxd
F1_000046 equ $ ; IN [GSM KIT.BAS] IF RXD = "+" THEN CHECKPOINT = 1
        movlw 43
        subwf rxd,W
        set@page BC@LL3
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL3
        movlw 1
        movwf checkpoint
BC@LL3
F1_000047 equ $ ; IN [GSM KIT.BAS] IF RXD = "8" AND CHECKPOINT = 1 THEN CHECKPOINT = 2
        movlw 56
        bsf STATUS,5
ram_bank = 1
        subwf rxd,W
        movlw 1
        btfss STATUS,2
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 1
        subwf checkpoint,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL5
        btfsc STATUS,2
        goto BC@LL5
        movlw 2
        movwf checkpoint
BC@LL5
F1_000048 equ $ ; IN [GSM KIT.BAS] IF RXD = "8" AND CHECKPOINT = 2 THEN CHECKPOINT = 3
        movlw 56
        bsf STATUS,5
ram_bank = 1
        subwf rxd,W
        movlw 1
        btfss STATUS,2
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 2
        subwf checkpoint,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL7
        btfsc STATUS,2
        goto BC@LL7
        movlw 3
        movwf checkpoint
BC@LL7
F1_000050 equ $ ; IN [GSM KIT.BAS] IF RXD = 13 AND CHECKPOINT = 3 THEN CHECKPOINT = 4
        movlw 13
        bsf STATUS,5
ram_bank = 1
        subwf rxd,W
        movlw 1
        btfss STATUS,2
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 3
        subwf checkpoint,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL9
        btfsc STATUS,2
        goto BC@LL9
        movlw 4
        movwf checkpoint
BC@LL9
F1_000051 equ $ ; IN [GSM KIT.BAS] IF RXD = 10 AND CHECKPOINT = 4 THEN CHECKPOINT = 5
        movlw 10
        bsf STATUS,5
ram_bank = 1
        subwf rxd,W
        movlw 1
        btfss STATUS,2
        movlw 0
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 4
        subwf checkpoint,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL11
        btfsc STATUS,2
        goto BC@LL11
        movlw 5
        movwf checkpoint
BC@LL11
F1_000053 equ $ ; IN [GSM KIT.BAS] IF RXD != 10 AND CHECKPOINT = 4 THEN CHECKPOINT = 6
        movlw 10
        bsf STATUS,5
ram_bank = 1
        subwf rxd,W
        btfss STATUS,2
        movlw 1
        bcf STATUS,5
ram_bank = 0
        movwf SP#P9
        movlw 4
        subwf checkpoint,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL13
        btfsc STATUS,2
        goto BC@LL13
        movlw 6
        movwf checkpoint
BC@LL13
F1_000055 equ $ ; IN [GSM KIT.BAS] IF CHECKPOINT = 6 THEN
        movlw 6
        subwf checkpoint,W
        set@page BC@LL15
        btfss STATUS,2
        goto BC@LL15
F1_000056 equ $ ; IN [GSM KIT.BAS] MSG[X] = RXD
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 64
        movwf GEN4
        bsf STATUS,5
ram_bank = 1
        movf rxd,W
        bcf STATUS,5
ram_bank = 0
        f@call PUT@ARRAY
F1_000057 equ $ ; IN [GSM KIT.BAS] INC X
        bsf STATUS,5
ram_bank = 1
        incf _X,F
F1_000058 equ $ ; IN [GSM KIT.BAS] IF RXD = 13 THEN
        movlw 13
        subwf rxd,W
        set@page BC@LL17
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL17
F1_000059 equ $ ; IN [GSM KIT.BAS] MSG[X - 1] = $FF
        bsf STATUS,5
ram_bank = 1
        decf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 64
        movwf GEN4
        movlw 255
        f@call PUT@ARRAY
F1_000060 equ $ ; IN [GSM KIT.BAS] CHECKPOINT = 0
        clrf checkpoint
F1_000061 equ $ ; IN [GSM KIT.BAS] X = 0
        bsf STATUS,5
ram_bank = 1
        clrf _X
F1_000062 equ $ ; IN [GSM KIT.BAS] HSEROUT[STR MSG]
        movlw 4
        bcf STATUS,5
ram_bank = 0
        movwf BPFH
        movlw 80
        movwf GEN4
        movlw 64
        f@call MB@STROUT
F1_000063 equ $ ; IN [GSM KIT.BAS] ENDIF
BC@LL17
F1_000064 equ $ ; IN [GSM KIT.BAS] ENDIF
BC@LL15
over
F1_000067 equ $ ; IN [GSM KIT.BAS] RETURN
        return
F1_EOF equ $ ; GSM KIT.BAS
PB@LB21
        F@JUMP PB@LB21
STR@LB1
        de 65,84,43,67,77,71,70,61,49,0
STR@LB2
        de 65,84,43,67,78,77,73,61,49,44,50,44,48,44,48,44,48,0
STR@LB3
        de 65,84,43,67,77,71,68,61,49,44,52,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF&LVP_OFF&CPD_ON&WRT_OFF&DEBUG_OFF
        end
