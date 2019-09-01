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
#define __16F877A 1
#define XTAL 10
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
#define _SYSTEM_VARIABLE_COUNT 23
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
pos = 55
_X = 56
_B#VR1 = 57
vib_count = 58
password = 59
variable password#0=59,password#1=60,password#2=61,password#3=62
variable password#4=63,password#5=64,password#6=65,password#7=66
key = 67
key_value = 68
text = 69
variable text#0=69,text#1=70,text#2=71,text#3=72
variable text#4=73,text#5=74,text#6=75,text#7=76
variable text#8=77,text#9=78,text#10=79,text#11=80
variable text#12=81,text#13=82,text#14=83,text#15=84
variable text#16=85,text#17=86,text#18=87,text#19=88
variable text#20=89,text#21=90,text#22=91,text#23=92
variable text#24=93,text#25=94,text#26=95,text#27=96
variable text#28=97,text#29=98,text#30=99,text#31=100
variable text#32=101,text#33=102,text#34=103
receiver = 104
variable receiver#0=104,receiver#1=105,receiver#2=106,receiver#3=107
variable receiver#4=108,receiver#5=109,receiver#6=110,receiver#7=111
variable receiver#8=112,receiver#9=113,receiver#10=114
number = 115
variable number#0=115,number#1=116,number#2=117,number#3=118
variable number#4=119,number#5=120,number#6=121,number#7=122
variable number#8=123,number#9=124,number#10=125
msg = 126
variable msg#0=126,msg#1=127,msg#2=160,msg#3=161
variable msg#4=162,msg#5=163,msg#6=164,msg#7=165
ctrl = 166
variable ctrl#0=166,ctrl#1=167
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define check_point _B#VR1,0
#define motor PORTC,0
#define buzz PORTC,1
#define passChng PORTD,2
#define passMode PORTD,3
#define vibrator PORTD,0
#define v_mode PORTB,0
#define v_ok PORTB,1
#define col_1 PORTA,3
#define col_2 PORTA,2
#define col_3 PORTA,1
#define col_4 PORTA,0
#define row_1 PORTE,1
#define row_2 PORTE,0
#define row_3 PORTA,5
#define row_4 PORTA,4
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
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
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
        goto $ + 7
        btfsc 49,7
        goto $ + 5
        movlw 32
        addwf 52,F
        skpnc
        incf 53,F
        movlw 0
        subwf 53,W
        movlw 240
        skpnz
        subwf 52,W
        skpc
        goto $ + 6
        bsf 3,7
        movlw 32
        addwf 52,F
        skpnc
        incf 53,F
        movlw 1
        subwf 53,W
        movlw 112
        skpnz
        subwf 52,W
        skpc
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
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 51
        tstf 51
        skpz
        goto $ + 3
        clrw
        goto $ + 2
        movlw 1
        subwf 51,F
        bcf 3,0
        rrf 35,F
        rrf 35,F
        rrf 35,F
        movlw 192
        andwf 35,W
        addlw 64
        addwf 51,F
        movlw 254
        call CH@SND
        movf 51,W
        goto CH@SND
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 51
        movlw 254
        call CH@SND
        movf 51,W
        goto CH@SND
SB@STROUT
        movwf 46
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        btfsc 47,0
        bsf     3,7
        movf 46,W
        movwf 4
        movf 0,W
        bcf     3,7
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
        bcf PORTB,3
        swapf 48,F
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
        movlw 125
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
        bsf 396,PP_EEPGD
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
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
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
PUT@ARRAY
        movwf 48
PUT@ARRAYW
        movf 37,W
        movwf 49
        addwf 38,W
        call FIND@ADDRESS
        movf 48,W
        movwf 0
        goto I@NT
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
F1_000034 equ $ ; IN [ABRAR] INPUT V_MODE : INPUT V_OK
        bsf STATUS,5
ram_bank = 1
        bsf TRISB,0
        bsf TRISB,1
F1_000035 equ $ ; IN [ABRAR] OUTPUT MOTOR : OUTPUT BUZZ
        bcf TRISC,0
        bcf TRISC,1
F1_000036 equ $ ; IN [ABRAR] INPUT PASSCHNG : INPUT PASSMODE
        bsf TRISD,2
        bsf TRISD,3
F1_000037 equ $ ; IN [ABRAR] INPUT VIBRATOR
        bsf TRISD,0
F1_000039 equ $ ; IN [ABRAR] ADCON1 = 7
        movlw 7
        movwf ADCON1
F1_000040 equ $ ; IN [ABRAR] PORTA = 0 : PORTB = 0 : PORTC = 0 : PORTD = 0 : PORTE = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTA
        clrf PORTB
        clrf PORTC
        clrf PORTD
        clrf PORTE
F1_000042 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
F3_SOF equ $ ; ABRAR
checking
F3_000025 equ $ ; IN [ABRAR] INPUT ROW_1 : INPUT ROW_2 : INPUT ROW_3 : INPUT ROW_4
        bsf STATUS,5
ram_bank = 1
        bsf TRISE,1
        bsf TRISE,0
        bsf TRISA,5
        bsf TRISA,4
F3_000026 equ $ ; IN [ABRAR] OUTPUT COL_1 : OUTPUT COL_2 : OUTPUT COL_3 : OUTPUT COL_4
        bcf TRISA,3
        bcf TRISA,2
        bcf TRISA,1
        bcf TRISA,0
F3_000027 equ $ ; IN [ABRAR] CHECK_POINT = 1
        bcf STATUS,5
ram_bank = 0
        bsf _B#VR1,0
capture_key
F3_000030 equ $ ; IN [ABRAR] IF CHECK_POINT = 0 THEN GOTO CHECKING
        set@page BC@LL2
        btfsc _B#VR1,0
        goto BC@LL2
        F@JUMP checking
BC@LL2
F3_000031 equ $ ; IN [ABRAR] KEY_VALUE = 0 : KEY = 0
        clrf key_value
        clrf key
F3_000032 equ $ ; IN [ABRAR] REPEAT
BC@LL3
F3_000033 equ $ ; IN [ABRAR] COL_1 = 1 : COL_2 = 0 : COL_3 = 0 : COL_4 = 0
        bsf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F3_000034 equ $ ; IN [ABRAR] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000035 equ $ ; IN [ABRAR] IF ROW_1 = 1 THEN
        set@page BC@LL7
        btfss PORTE,1
        goto BC@LL7
F3_000036 equ $ ; IN [ABRAR] KEY = 1 : GOSUB GET_CODE
        movlw 1
        movwf key
        f@call get_code
        F@JUMP BC@LL6
F3_000037 equ $ ; IN [ABRAR] ELSEIF ROW_2 = 1 THEN
BC@LL7
        set@page BC@LL8
        btfss PORTE,0
        goto BC@LL8
F3_000038 equ $ ; IN [ABRAR] KEY = 2 : GOSUB GET_CODE
        movlw 2
        movwf key
        f@call get_code
        F@JUMP BC@LL6
F3_000039 equ $ ; IN [ABRAR] ELSEIF ROW_3 = 1 THEN
BC@LL8
        set@page BC@LL9
        btfss PORTA,5
        goto BC@LL9
F3_000040 equ $ ; IN [ABRAR] KEY = 3 : GOSUB GET_CODE
        movlw 3
        movwf key
        f@call get_code
        F@JUMP BC@LL6
F3_000041 equ $ ; IN [ABRAR] ELSEIF ROW_4 = 1 THEN
BC@LL9
        set@page BC@LL10
        btfss PORTA,4
        goto BC@LL10
F3_000042 equ $ ; IN [ABRAR] KEY = 4 : GOSUB GET_CODE
        movlw 4
        movwf key
        f@call get_code
F3_000043 equ $ ; IN [ABRAR] ENDIF
BC@LL10
BC@LL6
F3_000044 equ $ ; IN [ABRAR] COL_1 = 0 : COL_2 = 1 : COL_3 = 0 : COL_4 = 0
        bcf PORTA,3
        bsf PORTA,2
        bcf PORTA,1
        bcf PORTA,0
F3_000045 equ $ ; IN [ABRAR] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000046 equ $ ; IN [ABRAR] IF ROW_1 = 1 THEN
        set@page BC@LL12
        btfss PORTE,1
        goto BC@LL12
F3_000047 equ $ ; IN [ABRAR] KEY = 5 : GOSUB GET_CODE
        movlw 5
        movwf key
        f@call get_code
        F@JUMP BC@LL11
F3_000048 equ $ ; IN [ABRAR] ELSEIF ROW_2 = 1 THEN
BC@LL12
        set@page BC@LL13
        btfss PORTE,0
        goto BC@LL13
F3_000049 equ $ ; IN [ABRAR] KEY = 6 : GOSUB GET_CODE
        movlw 6
        movwf key
        f@call get_code
        F@JUMP BC@LL11
F3_000050 equ $ ; IN [ABRAR] ELSEIF ROW_3 = 1 THEN
BC@LL13
        set@page BC@LL14
        btfss PORTA,5
        goto BC@LL14
F3_000051 equ $ ; IN [ABRAR] KEY = 7 : GOSUB GET_CODE
        movlw 7
        movwf key
        f@call get_code
        F@JUMP BC@LL11
F3_000052 equ $ ; IN [ABRAR] ELSEIF ROW_4 = 1 THEN
BC@LL14
        set@page BC@LL15
        btfss PORTA,4
        goto BC@LL15
F3_000053 equ $ ; IN [ABRAR] KEY = 8 : GOSUB GET_CODE
        movlw 8
        movwf key
        f@call get_code
F3_000054 equ $ ; IN [ABRAR] ENDIF
BC@LL15
BC@LL11
F3_000055 equ $ ; IN [ABRAR] COL_1 = 0 : COL_2 = 0 : COL_3 = 1 : COL_4 = 0
        bcf PORTA,3
        bcf PORTA,2
        bsf PORTA,1
        bcf PORTA,0
F3_000056 equ $ ; IN [ABRAR] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000057 equ $ ; IN [ABRAR] IF ROW_1 = 1 THEN
        set@page BC@LL17
        btfss PORTE,1
        goto BC@LL17
F3_000058 equ $ ; IN [ABRAR] KEY = 9 : GOSUB GET_CODE
        movlw 9
        movwf key
        f@call get_code
        F@JUMP BC@LL16
F3_000059 equ $ ; IN [ABRAR] ELSEIF ROW_2 = 1 THEN
BC@LL17
        set@page BC@LL18
        btfss PORTE,0
        goto BC@LL18
F3_000060 equ $ ; IN [ABRAR] KEY = 10 : GOSUB GET_CODE
        movlw 10
        movwf key
        f@call get_code
        F@JUMP BC@LL16
F3_000061 equ $ ; IN [ABRAR] ELSEIF ROW_3 = 1 THEN
BC@LL18
        set@page BC@LL19
        btfss PORTA,5
        goto BC@LL19
F3_000062 equ $ ; IN [ABRAR] KEY = 11 : GOSUB GET_CODE
        movlw 11
        movwf key
        f@call get_code
        F@JUMP BC@LL16
F3_000063 equ $ ; IN [ABRAR] ELSEIF ROW_4 = 1 THEN
BC@LL19
        set@page BC@LL20
        btfss PORTA,4
        goto BC@LL20
F3_000064 equ $ ; IN [ABRAR] KEY = 12 : GOSUB GET_CODE
        movlw 12
        movwf key
        f@call get_code
F3_000065 equ $ ; IN [ABRAR] ENDIF
BC@LL20
BC@LL16
F3_000066 equ $ ; IN [ABRAR] COL_1 = 0 : COL_2 = 0 : COL_3 = 0 : COL_4 = 1
        bcf PORTA,3
        bcf PORTA,2
        bcf PORTA,1
        bsf PORTA,0
F3_000067 equ $ ; IN [ABRAR] DELAYMS 1
        movlw 1
        f@call DL@MS
F3_000068 equ $ ; IN [ABRAR] IF ROW_1 = 1 THEN
        set@page BC@LL22
        btfss PORTE,1
        goto BC@LL22
F3_000069 equ $ ; IN [ABRAR] KEY = 13 : GOSUB GET_CODE
        movlw 13
        movwf key
        f@call get_code
        F@JUMP BC@LL21
F3_000070 equ $ ; IN [ABRAR] ELSEIF ROW_2 = 1 THEN
BC@LL22
        set@page BC@LL23
        btfss PORTE,0
        goto BC@LL23
F3_000071 equ $ ; IN [ABRAR] KEY = 14 : GOSUB GET_CODE
        movlw 14
        movwf key
        f@call get_code
        F@JUMP BC@LL21
F3_000072 equ $ ; IN [ABRAR] ELSEIF ROW_3 = 1 THEN
BC@LL23
        set@page BC@LL24
        btfss PORTA,5
        goto BC@LL24
F3_000073 equ $ ; IN [ABRAR] KEY = 15 : GOSUB GET_CODE
        movlw 15
        movwf key
        f@call get_code
        F@JUMP BC@LL21
F3_000074 equ $ ; IN [ABRAR] ELSEIF ROW_4 = 1 THEN
BC@LL24
        set@page BC@LL25
        btfss PORTA,4
        goto BC@LL25
F3_000075 equ $ ; IN [ABRAR] KEY = 16 : GOSUB GET_CODE
        movlw 16
        movwf key
        f@call get_code
F3_000076 equ $ ; IN [ABRAR] ENDIF
BC@LL25
BC@LL21
BC@LL5
F3_000077 equ $ ; IN [ABRAR] UNTIL KEY != 0
        movf key,F
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
BC@LL4
F3_000078 equ $ ; IN [ABRAR] RETURN
        return
get_code
F3_000081 equ $ ; IN [ABRAR] SELECT KEY
F3_000082 equ $ ; IN [ABRAR] CASE 0 : KEY_VALUE = 0 : RETURN
        movf key,F
        set@page BC@LL27
        btfss STATUS,2
        goto BC@LL27
ram_bank = 0
        clrf key_value
        return
        F@JUMP BC@LL26
BC@LL27
F3_000083 equ $ ; IN [ABRAR] CASE 1 : KEY_VALUE = "1" : DELAYMS 500
        movlw 1
        subwf key,W
        set@page BC@LL30
        btfss STATUS,2
        goto BC@LL30
ram_bank = 0
        movlw 49
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL30
F3_000084 equ $ ; IN [ABRAR] CASE 2 : KEY_VALUE = "4" : DELAYMS 500
        movlw 2
        subwf key,W
        set@page BC@LL32
        btfss STATUS,2
        goto BC@LL32
ram_bank = 0
        movlw 52
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL32
F3_000085 equ $ ; IN [ABRAR] CASE 3 : KEY_VALUE = "7" : DELAYMS 500
        movlw 3
        subwf key,W
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
ram_bank = 0
        movlw 55
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL34
F3_000086 equ $ ; IN [ABRAR] CASE 4 : KEY_VALUE = "*" : DELAYMS 500
        movlw 4
        subwf key,W
        set@page BC@LL36
        btfss STATUS,2
        goto BC@LL36
ram_bank = 0
        movlw 42
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL36
F3_000087 equ $ ; IN [ABRAR] CASE 5 : KEY_VALUE = "2" : DELAYMS 500
        movlw 5
        subwf key,W
        set@page BC@LL38
        btfss STATUS,2
        goto BC@LL38
ram_bank = 0
        movlw 50
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL38
F3_000088 equ $ ; IN [ABRAR] CASE 6 : KEY_VALUE = "5" : DELAYMS 500
        movlw 6
        subwf key,W
        set@page BC@LL40
        btfss STATUS,2
        goto BC@LL40
ram_bank = 0
        movlw 53
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL40
F3_000089 equ $ ; IN [ABRAR] CASE 7 : KEY_VALUE = "@" : DELAYMS 500
        movlw 7
        subwf key,W
        set@page BC@LL42
        btfss STATUS,2
        goto BC@LL42
ram_bank = 0
        movlw 64
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL42
F3_000090 equ $ ; IN [ABRAR] CASE 8 : KEY_VALUE = "0" : DELAYMS 500
        movlw 8
        subwf key,W
        set@page BC@LL44
        btfss STATUS,2
        goto BC@LL44
ram_bank = 0
        movlw 48
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL44
F3_000091 equ $ ; IN [ABRAR] CASE 9 : KEY_VALUE = "3" : DELAYMS 500
        movlw 9
        subwf key,W
        set@page BC@LL46
        btfss STATUS,2
        goto BC@LL46
ram_bank = 0
        movlw 51
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL46
F3_000092 equ $ ; IN [ABRAR] CASE 10 : KEY_VALUE = "6" : DELAYMS 500
        movlw 10
        subwf key,W
        set@page BC@LL48
        btfss STATUS,2
        goto BC@LL48
ram_bank = 0
        movlw 54
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL48
F3_000093 equ $ ; IN [ABRAR] CASE 11 : KEY_VALUE = "_" : DELAYMS 500
        movlw 11
        subwf key,W
        set@page BC@LL50
        btfss STATUS,2
        goto BC@LL50
ram_bank = 0
        movlw 95
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL50
F3_000094 equ $ ; IN [ABRAR] CASE 12 : KEY_VALUE = "#" : DELAYMS 500
        movlw 12
        subwf key,W
        set@page BC@LL52
        btfss STATUS,2
        goto BC@LL52
ram_bank = 0
        movlw 35
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL52
F3_000095 equ $ ; IN [ABRAR] CASE 13 : KEY_VALUE = "A" : DELAYMS 500
        movlw 13
        subwf key,W
        set@page BC@LL54
        btfss STATUS,2
        goto BC@LL54
ram_bank = 0
        movlw 65
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL54
F3_000096 equ $ ; IN [ABRAR] CASE 14 : KEY_VALUE = "B" : DELAYMS 500
        movlw 14
        subwf key,W
        set@page BC@LL56
        btfss STATUS,2
        goto BC@LL56
ram_bank = 0
        movlw 66
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL56
F3_000097 equ $ ; IN [ABRAR] CASE 15 : KEY_VALUE = "C" : DELAYMS 500
        movlw 15
        subwf key,W
        set@page BC@LL58
        btfss STATUS,2
        goto BC@LL58
ram_bank = 0
        movlw 67
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        F@JUMP BC@LL26
BC@LL58
F3_000098 equ $ ; IN [ABRAR] CASE 16 : KEY_VALUE = "D" : DELAYMS 500
        movlw 16
        subwf key,W
        set@page BC@LL60
        btfss STATUS,2
        goto BC@LL60
ram_bank = 0
        movlw 68
        movwf key_value
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
F3_000099 equ $ ; IN [ABRAR] CASE ELSE : KEY_VALUE = 0 : RETURN
        F@JUMP BC@LL62
BC@LL60
        clrf key_value
        return
F3_000100 equ $ ; IN [ABRAR] ENDSELECT
BC@LL62
BC@LL26
F3_000101 equ $ ; IN [ABRAR] RETURN
        return
F3_EOF equ $ ; ABRAR
F4_SOF equ $ ; ABRAR
GSM_init
F4_000018 equ $ ; IN [ABRAR] CTRL[0] = 26 : CTRL[1] = 13
        movlw 26
        bsf STATUS,5
ram_bank = 1
        movwf ctrl#0
        movlw 13
        movwf ctrl#1
F4_000019 equ $ ; IN [ABRAR] STR MSG = ""
        bcf STATUS,5
ram_bank = 0
        clrf msg#0
F4_000020 equ $ ; IN [ABRAR] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F4_000021 equ $ ; IN [ABRAR] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB64
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB64
        btfss STATUS,2
        goto PB@LB64
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB64
        btfss STATUS,2
        goto PB@LB64
F4_000022 equ $ ; IN [ABRAR] HSEROUT["ATE0", 13, 10]
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
F4_000023 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F4_000024 equ $ ; IN [ABRAR] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F4_000025 equ $ ; IN [ABRAR] RETURN
        return
Send_SMS
F4_000028 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
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
F4_000029 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F4_000030 equ $ ; IN [ABRAR] HSEROUT["AT+CMGS=",34, STR RECEIVER, 34,13,10]
        movlw 4
        movwf BPFH
        movlw (STR@LB4 >> 8) & 255
        movwf GEN4H
        movlw STR@LB4 & 255
        f@call C@STROUT
        movlw 34
        f@call HRSOUT
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 104
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F4_000031 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F4_000032 equ $ ; IN [ABRAR] HSEROUT[STR TEXT]
        movlw 4
        movwf BPFH
        movlw 35
        movwf GEN4
        clrf PP2H
        movlw 69
        f@call SB@STROUT
F4_000033 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F4_000034 equ $ ; IN [ABRAR] HSEROUT[STR CTRL]
        movlw 4
        movwf BPFH
        movlw 2
        movwf GEN4
        clrf PP2H
        movlw 166
        f@call SB@STROUT
F4_000035 equ $ ; IN [ABRAR] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F4_000036 equ $ ; IN [ABRAR] RETURN
        return
Receive_SMS
F4_000039 equ $ ; IN [ABRAR] HSERIN 1000, OVER,[WAIT("+88"), STR NUMBER, WAIT(13,10),STR MSG]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB71
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB71
        btfss STATUS,2
        goto PB@LB71
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB71
        btfss STATUS,2
        goto PB@LB71
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB71
        btfss STATUS,2
        goto PB@LB71
        clrf PBP#VAR0
PB@LB74
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
        set@page PB@LB74
        btfss STATUS,2
        goto PB@LB74
PB@LB75
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 13
        set@page PB@LB75
        btfss STATUS,2
        goto PB@LB75
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 10
        set@page PB@LB75
        btfss STATUS,2
        goto PB@LB75
        clrf PBP#VAR0
PB@LB78
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR0,W
        movwf GEN4H
        movlw 126
        movwf GEN4
        movf RCREG,W
        f@call PUT@ARRAY
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 8
        set@page PB@LB78
        btfss STATUS,2
        goto PB@LB78
F4_000040 equ $ ; IN [ABRAR] FOR X = 0 TO 7
        clrf _X
FR@LB79
        movlw 8
        subwf _X,W
        set@page NX@LB80
        btfsc STATUS,0
        goto NX@LB80
F4_000041 equ $ ; IN [ABRAR] IF MSG[X] != PASSWORD[X] THEN BREAK
        movlw 126
        movwf GEN3H
        movf _X,W
        f@call GET@ARRAY
        movwf PBP#VAR0
        movf _X,W
        addlw password
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        set@page BC@LL82
        btfsc STATUS,2
        goto BC@LL82
        F@JUMP NX@LB80
BC@LL82
F4_000042 equ $ ; IN [ABRAR] IF MSG[7] = PASSWORD[7] THEN
        bsf STATUS,5
ram_bank = 1
        movf msg#7,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        movf password#7,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        set@page BC@LL84
        btfss STATUS,2
        goto BC@LL84
F4_000043 equ $ ; IN [ABRAR] GOSUB DOOR_OPEN
        f@call door_open
F4_000044 equ $ ; IN [ABRAR] STR MSG = ""
        clrf msg#0
F4_000045 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
F4_000046 equ $ ; IN [ABRAR] ENDIF
BC@LL84
CT@LB81
F4_000047 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB79
        btfss STATUS,0
        goto FR@LB79
NX@LB80
over
F4_000049 equ $ ; IN [ABRAR] RETURN
        return
F4_EOF equ $ ; ABRAR
start
F1_000048 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000049 equ $ ; IN [ABRAR] STR PASSWORD = "@ABC1234"
        movlw 64
        movwf password#0
        movlw 65
        movwf password#1
        movlw 66
        movwf password#2
        movlw 67
        movwf password#3
        movlw 49
        movwf password#4
        movlw 50
        movwf password#5
        movlw 51
        movwf password#6
        movlw 52
        movwf password#7
F1_000050 equ $ ; IN [ABRAR] VIB_COUNT = 0
        clrf vib_count
F1_000051 equ $ ; IN [ABRAR] CHECK_POINT = 0
        bcf _B#VR1,0
F1_000053 equ $ ; IN [ABRAR] PRINT AT 2,1, "CHECKING GSM.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000054 equ $ ; IN [ABRAR] GOSUB GATE_LOCK
        f@call gate_lock
F1_000055 equ $ ; IN [ABRAR] GOSUB GSM_INIT
        f@call GSM_init
F1_000056 equ $ ; IN [ABRAR] PRINT AT 2,1, "GSM MODULE FOUND"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000057 equ $ ; IN [ABRAR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000058 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
main
F1_000061 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000062 equ $ ; IN [ABRAR] WHILE 1 = 1
BC@LL85
F1_000063 equ $ ; IN [ABRAR] IF PASSCHNG = 1 THEN DELAYMS 500 : GOSUB CHANGE_PASS
        set@page BC@LL88
        btfss PORTD,2
        goto BC@LL88
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call change_pass
BC@LL88
F1_000064 equ $ ; IN [ABRAR] IF PASSMODE = 1 THEN DELAYMS 500 : GOSUB ENTER_PASS
        set@page BC@LL90
        btfss PORTD,3
        goto BC@LL90
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
        f@call enter_pass
BC@LL90
F1_000065 equ $ ; IN [ABRAR] IF V_MODE = 1 THEN GOSUB VOICE_MODE
        set@page BC@LL92
        btfss PORTB,0
        goto BC@LL92
        f@call voice_mode
BC@LL92
F1_000066 equ $ ; IN [ABRAR] IF VIBRATOR = 1 THEN DELAYMS 100 : INC VIB_COUNT
        set@page BC@LL94
        btfss PORTD,0
        goto BC@LL94
        movlw 100
        f@call DL@MS
        incf vib_count,F
BC@LL94
F1_000067 equ $ ; IN [ABRAR] IF VIB_COUNT = 5 THEN VIB_COUNT = 0 : GOSUB ACTION
        movlw 5
        subwf vib_count,W
        set@page BC@LL96
        btfss STATUS,2
        goto BC@LL96
        clrf vib_count
        f@call action
BC@LL96
F1_000068 equ $ ; IN [ABRAR] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000069 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL85
BC@LL86
voice_mode
F1_000072 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000073 equ $ ; IN [ABRAR] REPEAT
BC@LL97
F1_000074 equ $ ; IN [ABRAR] PRINT AT 1,1, "VOICE MODE: ON"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
F1_000075 equ $ ; IN [ABRAR] PRINT AT 2,1, "PLS SAY UR CODE"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
F1_000076 equ $ ; IN [ABRAR] IF V_OK = 1 THEN GOTO VOICE_OPENING
        set@page BC@LL101
        btfss PORTB,1
        goto BC@LL101
        F@JUMP voice_opening
BC@LL101
BC@LL99
F1_000077 equ $ ; IN [ABRAR] UNTIL V_MODE = 0
        set@page BC@LL97
        btfsc PORTB,0
        goto BC@LL97
BC@LL98
F1_000078 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
voice_opening
F1_000081 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000082 equ $ ; IN [ABRAR] PRINT AT 1,1, "DOOR OPENED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
F1_000083 equ $ ; IN [ABRAR] GOSUB GATE_OPEN
        f@call gate_open
F1_000084 equ $ ; IN [ABRAR] PRINT AT 1,1, "LOCK IN 10SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
F1_000085 equ $ ; IN [ABRAR] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000086 equ $ ; IN [ABRAR] GOSUB GATE_LOCK
        f@call gate_lock
F1_000087 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
change_pass
F1_000090 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000091 equ $ ; IN [ABRAR] PRINT AT 1,1, "CHANGE PASS: [8]"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
F1_000092 equ $ ; IN [ABRAR] FOR X = 0 TO 7
        clrf _X
FR@LB103
        movlw 8
        subwf _X,W
        set@page NX@LB104
        btfsc STATUS,0
        goto NX@LB104
F1_000093 equ $ ; IN [ABRAR] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000094 equ $ ; IN [ABRAR] PASSWORD[X] = KEY_VALUE
        movf _X,W
        addlw password
        movwf FSR
        movf key_value,W
        movwf INDF
F1_000095 equ $ ; IN [ABRAR] PRINT AT 2,X+1, KEY_VALUE
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf _X,W
        f@call CURSOR
        movf key_value,W
        f@call PRINT
CT@LB105
F1_000096 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB103
        btfss STATUS,0
        goto FR@LB103
NX@LB104
F1_000097 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
enter_pass
F1_000100 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000101 equ $ ; IN [ABRAR] PRINT AT 1,1, "ENTER PASS:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
F1_000102 equ $ ; IN [ABRAR] FOR X = 0 TO 7
        clrf _X
FR@LB106
        movlw 8
        subwf _X,W
        set@page NX@LB107
        btfsc STATUS,0
        goto NX@LB107
F1_000103 equ $ ; IN [ABRAR] GOSUB CAPTURE_KEY
        f@call capture_key
F1_000104 equ $ ; IN [ABRAR] IF KEY_VALUE = PASSWORD[X] THEN
        movf _X,W
        addlw password
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf key_value,W
        subwf PBP#VAR0,W
        set@page BC@LL109
        btfss STATUS,2
        goto BC@LL109
F1_000105 equ $ ; IN [ABRAR] PRINT AT 2,X+1, "*"
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf _X,W
        f@call CURSOR
        movlw 42
        f@call PRINT
        F@JUMP BC@LL110
BC@LL109
F1_000106 equ $ ; IN [ABRAR] ELSE
F1_000107 equ $ ; IN [ABRAR] PRINT AT 2,1, "WRONG PASSWORD!"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000108 equ $ ; IN [ABRAR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000109 equ $ ; IN [ABRAR] GOSUB ACTION
        f@call action
F1_000110 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
F1_000111 equ $ ; IN [ABRAR] ENDIF
BC@LL110
CT@LB108
F1_000112 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB106
        btfss STATUS,0
        goto FR@LB106
NX@LB107
F1_000113 equ $ ; IN [ABRAR] GOSUB DOOR_OPEN
        f@call door_open
F1_000114 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
door_open
F1_000117 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000118 equ $ ; IN [ABRAR] PRINT AT 1,1, "DOOR OPENED."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000119 equ $ ; IN [ABRAR] GOSUB GATE_OPEN
        f@call gate_open
F1_000120 equ $ ; IN [ABRAR] PRINT AT 1,1, "LOCK IN 10SEC"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000121 equ $ ; IN [ABRAR] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000122 equ $ ; IN [ABRAR] GOSUB GATE_LOCK
        f@call gate_lock
F1_000123 equ $ ; IN [ABRAR] RETURN
        return
action
F1_000127 equ $ ; IN [ABRAR] BUZZ = 1
        bsf PORTC,1
F1_000128 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000129 equ $ ; IN [ABRAR] PRINT AT 1,1, "SENDING SMS..."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB16)
        movwf GEN4H
        movlw low (STR@LB16)
        f@call C@STROUT
F1_000130 equ $ ; IN [ABRAR] STR TEXT = "SOMEONE TRYING TO OPEN YOUR DOOR."
        movlw 83
        movwf text#0
        movlw 111
        movwf text#1
        movlw 109
        movwf text#2
        movlw 101
        movwf text#3
        movlw 111
        movwf text#4
        movlw 110
        movwf text#5
        movlw 101
        movwf text#6
        movlw 32
        movwf text#7
        movlw 116
        movwf text#8
        movlw 114
        movwf text#9
        movlw 121
        movwf text#10
        movlw 105
        movwf text#11
        movlw 110
        movwf text#12
        movlw 103
        movwf text#13
        movlw 32
        movwf text#14
        movlw 116
        movwf text#15
        movlw 111
        movwf text#16
        movlw 32
        movwf text#17
        movlw 111
        movwf text#18
        movlw 112
        movwf text#19
        movlw 101
        movwf text#20
        movlw 110
        movwf text#21
        movlw 32
        movwf text#22
        movlw 121
        movwf text#23
        movlw 111
        movwf text#24
        movlw 117
        movwf text#25
        movlw 114
        movwf text#26
        movlw 32
        movwf text#27
        movlw 100
        movwf text#28
        movlw 111
        movwf text#29
        movwf text#30
        movlw 114
        movwf text#31
        movlw 46
        movwf text#32
F1_000131 equ $ ; IN [ABRAR] STR RECEIVER = "01994171591"
        movlw 48
        movwf receiver#0
        movlw 49
        movwf receiver#1
        movlw 57
        movwf receiver#2
        movwf receiver#3
        movlw 52
        movwf receiver#4
        movlw 49
        movwf receiver#5
        movlw 55
        movwf receiver#6
        movlw 49
        movwf receiver#7
        movlw 53
        movwf receiver#8
        movlw 57
        movwf receiver#9
        movlw 49
        movwf receiver#10
F1_000132 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000133 equ $ ; IN [ABRAR] STR RECEIVER = "01951074760"
        movlw 48
        movwf receiver#0
        movlw 49
        movwf receiver#1
        movlw 57
        movwf receiver#2
        movlw 53
        movwf receiver#3
        movlw 49
        movwf receiver#4
        movlw 48
        movwf receiver#5
        movlw 55
        movwf receiver#6
        movlw 52
        movwf receiver#7
        movlw 55
        movwf receiver#8
        movlw 54
        movwf receiver#9
        movlw 48
        movwf receiver#10
F1_000134 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000135 equ $ ; IN [ABRAR] STR RECEIVER = "01945452271"
        movlw 48
        movwf receiver#0
        movlw 49
        movwf receiver#1
        movlw 57
        movwf receiver#2
        movlw 52
        movwf receiver#3
        movlw 53
        movwf receiver#4
        movlw 52
        movwf receiver#5
        movlw 53
        movwf receiver#6
        movlw 50
        movwf receiver#7
        movwf receiver#8
        movlw 55
        movwf receiver#9
        movlw 49
        movwf receiver#10
F1_000136 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000137 equ $ ; IN [ABRAR] BUZZ = 0
        bcf PORTC,1
F1_000138 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
default_lcd
F1_000142 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000143 equ $ ; IN [ABRAR] PRINT AT 1,1, "DOORSECURITY SYS"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB17)
        movwf GEN4H
        movlw low (STR@LB17)
        f@call C@STROUT
F1_000144 equ $ ; IN [ABRAR] PRINT AT 2,1, "DOOR: LOCKED"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB18)
        movwf GEN4H
        movlw low (STR@LB18)
        f@call C@STROUT
F1_000145 equ $ ; IN [ABRAR] RETURN
        return
gate_lock
F1_000148 equ $ ; IN [ABRAR] FOR POS = 0 TO 50
        clrf pos
FR@LB112
        movlw 51
        subwf pos,W
        set@page NX@LB113
        btfsc STATUS,0
        goto NX@LB113
F1_000149 equ $ ; IN [ABRAR] MOTOR = 1
        bsf PORTC,0
F1_000150 equ $ ; IN [ABRAR] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        f@call DLUS@W
F1_000151 equ $ ; IN [ABRAR] MOTOR = 0
        bcf PORTC,0
F1_000152 equ $ ; IN [ABRAR] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        f@call DLUS@W
CT@LB114
F1_000153 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB112
        btfss STATUS,0
        goto FR@LB112
NX@LB113
F1_000154 equ $ ; IN [ABRAR] RETURN
        return
gate_open
F1_000157 equ $ ; IN [ABRAR] FOR POS = 0 TO 50
        clrf pos
FR@LB115
        movlw 51
        subwf pos,W
        set@page NX@LB116
        btfsc STATUS,0
        goto NX@LB116
F1_000158 equ $ ; IN [ABRAR] MOTOR = 1
        bsf PORTC,0
F1_000159 equ $ ; IN [ABRAR] DELAYUS 2000
        movlw 7
        movwf PP0H
        movlw 208
        f@call DLUS@W
F1_000160 equ $ ; IN [ABRAR] MOTOR = 0
        bcf PORTC,0
F1_000161 equ $ ; IN [ABRAR] DELAYUS 18000
        movlw 70
        movwf PP0H
        movlw 80
        f@call DLUS@W
CT@LB117
F1_000162 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB115
        btfss STATUS,0
        goto FR@LB115
NX@LB116
F1_000163 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB118
        F@JUMP PB@LB118
STR@LB1
STR@LB3
        de 65,84,43,67,77,71,70,61,49,0
STR@LB2
        de 65,84,43,67,78,77,73,61,49,44,50,44,48,44,48,44,48,0
STR@LB4
        de 65,84,43,67,77,71,83,61,0
STR@LB5
        de 67,104,101,99,107,105,110,103,32,71,83,77,46,46,0
STR@LB6
        de 71,83,77,32,77,111,100,117,108,101,32,70,111,117,110,100,0
STR@LB7
        de 86,111,105,99,101,32,109,111,100,101,58,32,79,78,0
STR@LB8
        de 80,108,115,32,115,97,121,32,117,114,32,99,111,100,101,0
STR@LB9
STR@LB14
        de 68,111,111,114,32,79,112,101,110,101,100,46,0
STR@LB10
STR@LB15
        de 76,111,99,107,32,105,110,32,49,48,83,101,99,0
STR@LB11
        de 67,104,97,110,103,101,32,112,97,115,115,58,32,91,56,93,0
STR@LB12
        de 69,110,116,101,114,32,112,97,115,115,58,0
STR@LB13
        de 87,114,111,110,103,32,80,97,115,115,119,111,114,100,33,0
STR@LB16
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,46,0
STR@LB17
        de 68,111,111,114,83,101,99,117,114,105,116,121,32,83,89,83,0
STR@LB18
        de 68,111,111,114,58,32,76,111,99,107,101,100,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_OFF&LVP_OFF&CPD_ON&WRT_OFF&DEBUG_OFF&CP_ON
        end
