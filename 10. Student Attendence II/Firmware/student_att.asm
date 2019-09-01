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
GPR = 39
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
SP#P9 = 54
ID = 55
_B#VR1 = 56
_B#VR2 = 57
prsnt = 58
variable prsnt#0=58,prsnt#1=59,prsnt#2=60,prsnt#3=61
variable prsnt#4=62,prsnt#5=63,prsnt#6=64,prsnt#7=65
variable prsnt#8=66,prsnt#9=67
days = 68
delay = 69
dta = 70
RXD = 71
variable RXD#0=71,RXD#1=72,RXD#2=73,RXD#3=74
variable RXD#4=75,RXD#5=76,RXD#6=77,RXD#7=78
variable RXD#8=79,RXD#9=80,RXD#10=81,RXD#11=82
variable RXD#12=83,RXD#13=84,RXD#14=85,RXD#15=86
variable RXD#16=87,RXD#17=88,RXD#18=89,RXD#19=90
_X = 91
get_ID = 92
ID_no = 93
checksum = 94
IDs = 95
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define __RSOUT_PORT PORTA
#define ADD PORTC,0
#define Change PORTC,1
#define Check PORTC,2
#define Day_over PORTC,3
#define buzz PORTC,4
#define ID_0 _B#VR1,0
#define ID_1 _B#VR1,1
#define ID_2 _B#VR1,2
#define ID_3 _B#VR1,3
#define ID_4 _B#VR1,4
#define ID_5 _B#VR1,5
#define ID_6 _B#VR1,6
#define ID_7 _B#VR1,7
#define ID_8 _B#VR2,0
#define ID_9 _B#VR2,1
#define F0 dta,0
#define F1 dta,1
#define F2 dta,2
#define F3 dta,3
#define FP_error _B#VR2,2
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 57600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
#define __RSOUT_PIN 3
#define __RSOUT_MODE 1
#define __RSOUT_PACE 5
#define __SERIAL_BAUD 2400
HSERIAL_SPBRG = 21
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 57600
proton#code#start
        org 0
        goto proton#main#start
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
RSOUT_PORT = PORTA
RSOUT_PIN = 3
RSOUT_MODE = 1
SERIAL_BAUD = 2400
RSOUT
        movwf 39
        movwf 44
        bsf 3,5
        bcf PORTA,3
        bcf 3,5
        movlw 9
        movwf 45
        bcf 3,0
        call RSO@BIT
        rrf 44,F
        decfsz 45,F
        goto $ - 3
        bsf 3,0
        call RSO@BIT
        movlw 5
        call DL@US
        movf 39,W
        goto I@NT
RSO@BIT
        skpnc
        goto $ + 4
        nop
        bsf PORTA,3
        goto SR@DLY
        bcf PORTA,3
        goto SR@DLY
SR@DLY
        movlw 1
        movwf 43
        movlw 157
        goto DLUS@W
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
        btfsc 33,6
        goto RSOUT
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
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000025 equ $ ; IN [ABRAR] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000032 equ $ ; IN [ABRAR] OUTPUT BUZZ : OUTPUT PORTA
        bcf TRISC,4
        clrf TRISA
F1_000033 equ $ ; IN [ABRAR] INPUT ADD : INPUT CHANGE
        bsf TRISC,0
        bsf TRISC,1
F1_000034 equ $ ; IN [ABRAR] INPUT CHECK : INPUT DAY_OVER
        bsf TRISC,2
        bsf TRISC,3
F1_000056 equ $ ; IN [ABRAR] DTA = 0
        bcf STATUS,5
ram_bank = 0
        clrf dta
F1_000058 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
F3_SOF equ $ ; ABRAR
FP_init
F3_000010 equ $ ; IN [ABRAR] RETURN
        return
FP_Enroll
F3_000013 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR2,2
F3_000014 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000015 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000016 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ENROLL
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL2
        btfsc STATUS,2
        goto BC@LL2
        F@JUMP FP_Enroll
BC@LL2
F3_000017 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F3_000018 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000019 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL4
        btfsc STATUS,2
        goto BC@LL4
        bsf _B#VR2,2
        return
BC@LL4
Recheck
F3_000021 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000022 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000023 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN RECHECK
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL6
        btfsc STATUS,2
        goto BC@LL6
        F@JUMP Recheck
BC@LL6
F3_000024 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $02 , $00 , $09]
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
F3_000025 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000026 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL8
        btfsc STATUS,2
        goto BC@LL8
        bsf _B#VR2,2
        return
BC@LL8
F3_000027 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $05 , $00 , $09]
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
F3_000028 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000029 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL10
        btfsc STATUS,2
        goto BC@LL10
        bsf _B#VR2,2
        return
BC@LL10
F3_000030 equ $ ; IN [ABRAR] CHECKSUM = 15 + ID_NO
        movlw 15
        addwf ID_no,W
        movwf checksum
F3_000031 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $06 , $06 , $02 , $00, ID_NO, $00, CHECKSUM]
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
F3_000032 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000033 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL12
        btfsc STATUS,2
        goto BC@LL12
        bsf _B#VR2,2
        return
BC@LL12
F3_000034 equ $ ; IN [ABRAR] RETURN
        return
FP_Search
F3_000037 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR2,2
F3_000038 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F3_000039 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000040 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_SEARCH
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL14
        btfsc STATUS,2
        goto BC@LL14
        F@JUMP FP_Search
BC@LL14
F3_000041 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F3_000042 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000043 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL16
        btfsc STATUS,2
        goto BC@LL16
        bsf _B#VR2,2
        return
BC@LL16
F3_000044 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $08, $1B, $01, $00, $00, $03, $E9, $01, $11]
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
F3_000045 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13],RXD[14],RXD[15]]
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
F3_000046 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL18
        btfsc STATUS,2
        goto BC@LL18
        bsf _B#VR2,2
        return
BC@LL18
F3_000047 equ $ ; IN [ABRAR] GET_ID = RXD[11]
        movf RXD#11,W
        movwf get_ID
F3_000048 equ $ ; IN [ABRAR] RETURN
        return
FP_Delete_ID
F3_000051 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR2,2
F3_000052 equ $ ; IN [ABRAR] CHECKSUM = 21 + ID_NO
        movlw 21
        addwf ID_no,W
        movwf checksum
F3_000053 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $07, $0C, $00, ID_NO, $00, $01, $00, CHECKSUM]
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
F3_000054 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000055 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL20
        btfsc STATUS,2
        goto BC@LL20
        bsf _B#VR2,2
        return
BC@LL20
F3_000056 equ $ ; IN [ABRAR] RETURN
        return
FP_Delete_ALL
F3_000059 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR2,2
F3_000060 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $0D, $00, $11]
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
F3_000061 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F3_000062 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
        bsf _B#VR2,2
        return
BC@LL22
F3_000063 equ $ ; IN [ABRAR] RETURN
        return
FP_total_ID
F3_000066 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR2,2
F3_000067 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $1D, $00, $21]
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
F3_000068 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13]]
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
F3_000069 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
        bsf _B#VR2,2
        return
BC@LL24
F3_000070 equ $ ; IN [ABRAR] IDS = RXD[11]
        movf RXD#11,W
        movwf IDs
F3_000071 equ $ ; IN [ABRAR] RETURN
        return
F3_EOF equ $ ; ABRAR
main
F1_000063 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000064 equ $ ; IN [ABRAR] BUZZ = 0
        bcf PORTC,4
F1_000065 equ $ ; IN [ABRAR] PORTA = 0
        clrf PORTA
F1_000066 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000067 equ $ ; IN [ABRAR] PRINT AT 2,1,"PLEASE WAIT.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000068 equ $ ; IN [ABRAR] GOSUB FP_INIT
        f@call FP_init
F1_000069 equ $ ; IN [ABRAR] DELAYMS 8500
        movlw 33
        movwf PP1H
        movlw 52
        f@call DLY@W
F1_000070 equ $ ; IN [ABRAR] DAYS = 1
        movlw 1
        movwf days
F1_000071 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
start
F1_000074 equ $ ; IN [ABRAR] IF ADD = 1 THEN GOSUB DELAY_200 : GOTO ADD_ID
        set@page BC@LL26
        btfss PORTC,0
        goto BC@LL26
        f@call delay_200
        F@JUMP add_ID
BC@LL26
F1_000075 equ $ ; IN [ABRAR] IF DAY_OVER = 1 THEN
        set@page BC@LL28
        btfss PORTC,3
        goto BC@LL28
F1_000076 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call delay_200
F1_000077 equ $ ; IN [ABRAR] INC DAYS
        incf days,F
F1_000078 equ $ ; IN [ABRAR] GOSUB CLEAR_ID
        f@call clear_id
F1_000079 equ $ ; IN [ABRAR] IF DAYS > 10 THEN GOSUB SEND_SMS
        movlw 11
        subwf days,W
        set@page BC@LL30
        btfss STATUS,0
        goto BC@LL30
        f@call send_SMS
BC@LL30
F1_000080 equ $ ; IN [ABRAR] ENDIF
BC@LL28
F1_000081 equ $ ; IN [ABRAR] PRINT AT 1,15, DEC DAYS, " "
        movlw 128
        movwf BPFH
        movlw 142
        f@call LCD@CRS
        movf days,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
F1_000082 equ $ ; IN [ABRAR] IF CHANGE = 1 THEN GOSUB DELAY_200 : GOTO PRESENT
        set@page BC@LL32
        btfss PORTC,1
        goto BC@LL32
        f@call delay_200
        F@JUMP Present
BC@LL32
F1_000083 equ $ ; IN [ABRAR] IF CHECK = 1 THEN GOSUB DELAY_200 : GOTO CHECK_ID
        set@page BC@LL34
        btfss PORTC,2
        goto BC@LL34
        f@call delay_200
        F@JUMP check_ID
BC@LL34
F1_000084 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
send_SMS
F1_000087 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000088 equ $ ; IN [ABRAR] DAYS = 1
        movlw 1
        movwf days
F1_000089 equ $ ; IN [ABRAR] PRINT AT 1,1, "SENDING SMS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000090 equ $ ; IN [ABRAR] DTA = 0
        clrf dta
F1_000091 equ $ ; IN [ABRAR] FOR ID = 0 TO 9
        clrf ID
FR@LB36
        movlw 10
        subwf ID,W
        set@page NX@LB37
        btfsc STATUS,0
        goto NX@LB37
F1_000092 equ $ ; IN [ABRAR] IF PRSNT[ID] = 0 THEN
        movf ID,W
        addlw prsnt
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL39
        btfss STATUS,2
        goto BC@LL39
F1_000093 equ $ ; IN [ABRAR] PRINT AT 2,1,"ID #:", DEC ID
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 73
        f@call PRINT
        movlw 68
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 35
        f@call PRINT
        movlw 58
        f@call PRINT
        movf ID,W
        f@call OUT@DECB
F1_000094 equ $ ; IN [ABRAR] DTA = ID + 1
        incf ID,W
        movwf dta
F1_000095 equ $ ; IN [ABRAR] RSOUT "Z", DEC DTA, "A", 13
        movlw 90
        f@call RSOUT
        movlw 64
        movwf BPFH
        movf dta,W
        f@call OUT@DECB
        movlw 65
        f@call RSOUT
        movlw 13
        f@call RSOUT
F1_000096 equ $ ; IN [ABRAR] DELAYMS 6000
        movlw 23
        movwf PP1H
        movlw 112
        f@call DLY@W
F1_000097 equ $ ; IN [ABRAR] ENDIF
BC@LL39
CT@LB38
F1_000098 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf ID,F
        set@page FR@LB36
        btfss STATUS,0
        goto FR@LB36
NX@LB37
F1_000099 equ $ ; IN [ABRAR] PORTA = 0
        clrf PORTA
F1_000100 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
clear_id
F1_000103 equ $ ; IN [ABRAR] ID_0 = 0 : ID_1 = 0
        bcf _B#VR1,0
        bcf _B#VR1,1
F1_000104 equ $ ; IN [ABRAR] ID_2 = 0 : ID_3 = 0
        bcf _B#VR1,2
        bcf _B#VR1,3
F1_000105 equ $ ; IN [ABRAR] ID_4 = 0 : ID_5 = 0
        bcf _B#VR1,4
        bcf _B#VR1,5
F1_000106 equ $ ; IN [ABRAR] ID_6 = 0 : ID_7 = 0
        bcf _B#VR1,6
        bcf _B#VR1,7
F1_000107 equ $ ; IN [ABRAR] ID_8 = 0 : ID_9 = 0
        bcf _B#VR2,0
        bcf _B#VR2,1
F1_000108 equ $ ; IN [ABRAR] RETURN
        return
Present
F1_000111 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000112 equ $ ; IN [ABRAR] PRINT AT 1,1,"PUT YOUR FINGER."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000113 equ $ ; IN [ABRAR] GOSUB FP_SEARCH
        f@call FP_Search
F1_000114 equ $ ; IN [ABRAR] IF FP_ERROR = 0 THEN
        set@page BC@LL41
        btfsc _B#VR2,2
        goto BC@LL41
F1_000115 equ $ ; IN [ABRAR] IF GET_ID = 0 AND ID_0 = 0 THEN
        movlw 1
        movf get_ID,F
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL43
        btfsc STATUS,2
        goto BC@LL43
F1_000116 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000117 equ $ ; IN [ABRAR] ID_0 = 1
        bsf _B#VR1,0
F1_000118 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000119 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000120 equ $ ; IN [ABRAR] ELSEIF GET_ID = 1 AND ID_1 = 0 THEN
BC@LL43
        movlw 1
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,1
        movlw 0
        andwf SP#P9,F
        set@page BC@LL44
        btfsc STATUS,2
        goto BC@LL44
F1_000121 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000122 equ $ ; IN [ABRAR] ID_1 = 1
        bsf _B#VR1,1
F1_000123 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000124 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000125 equ $ ; IN [ABRAR] ELSEIF GET_ID = 2 AND ID_2 = 0 THEN
BC@LL44
        movlw 2
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL45
        btfsc STATUS,2
        goto BC@LL45
F1_000126 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000127 equ $ ; IN [ABRAR] ID_2 = 1
        bsf _B#VR1,2
F1_000128 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000129 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000130 equ $ ; IN [ABRAR] ELSEIF GET_ID = 3 AND ID_3 = 0 THEN
BC@LL45
        movlw 3
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,3
        movlw 0
        andwf SP#P9,F
        set@page BC@LL46
        btfsc STATUS,2
        goto BC@LL46
F1_000131 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000132 equ $ ; IN [ABRAR] ID_3 = 1
        bsf _B#VR1,3
F1_000133 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000134 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000135 equ $ ; IN [ABRAR] ELSEIF GET_ID = 4 AND ID_4 = 0 THEN
BC@LL46
        movlw 4
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,4
        movlw 0
        andwf SP#P9,F
        set@page BC@LL47
        btfsc STATUS,2
        goto BC@LL47
F1_000136 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000137 equ $ ; IN [ABRAR] ID_4 = 1
        bsf _B#VR1,4
F1_000138 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000139 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000140 equ $ ; IN [ABRAR] ELSEIF GET_ID = 5 AND ID_5 = 0 THEN
BC@LL47
        movlw 5
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,5
        movlw 0
        andwf SP#P9,F
        set@page BC@LL48
        btfsc STATUS,2
        goto BC@LL48
F1_000141 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000142 equ $ ; IN [ABRAR] ID_5 = 1
        bsf _B#VR1,5
F1_000143 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000144 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000145 equ $ ; IN [ABRAR] ELSEIF GET_ID = 6 AND ID_6 = 0 THEN
BC@LL48
        movlw 6
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,6
        movlw 0
        andwf SP#P9,F
        set@page BC@LL49
        btfsc STATUS,2
        goto BC@LL49
F1_000146 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000147 equ $ ; IN [ABRAR] ID_6 = 1
        bsf _B#VR1,6
F1_000148 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000149 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000150 equ $ ; IN [ABRAR] ELSEIF GET_ID = 7 AND ID_7 = 0 THEN
BC@LL49
        movlw 7
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        andwf SP#P9,F
        set@page BC@LL50
        btfsc STATUS,2
        goto BC@LL50
F1_000151 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000152 equ $ ; IN [ABRAR] ID_7 = 1
        bsf _B#VR1,7
F1_000153 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000154 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000155 equ $ ; IN [ABRAR] ELSEIF GET_ID = 8 AND ID_8 = 0 THEN
BC@LL50
        movlw 8
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR2,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL51
        btfsc STATUS,2
        goto BC@LL51
F1_000156 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000157 equ $ ; IN [ABRAR] ID_8 = 1
        bsf _B#VR2,0
F1_000158 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000159 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL42
F1_000160 equ $ ; IN [ABRAR] ELSEIF GET_ID = 9 AND ID_9 = 0 THEN
BC@LL51
        movlw 9
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR2,1
        movlw 0
        andwf SP#P9,F
        set@page BC@LL52
        btfsc STATUS,2
        goto BC@LL52
F1_000161 equ $ ; IN [ABRAR] GOSUB PRESENT_SHOW
        f@call Present_show
F1_000162 equ $ ; IN [ABRAR] ID_9 = 1
        bsf _B#VR2,1
F1_000163 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000164 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
        F@JUMP BC@LL53
BC@LL52
F1_000165 equ $ ; IN [ABRAR] ELSE
F1_000166 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000167 equ $ ; IN [ABRAR] BUZZ = 1
        bsf PORTC,4
F1_000168 equ $ ; IN [ABRAR] PRINT AT 1,1, "ALREADY PRESENT."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000169 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000170 equ $ ; IN [ABRAR] BUZZ = 0
        bcf PORTC,4
F1_000171 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
F1_000172 equ $ ; IN [ABRAR] ENDIF
BC@LL53
BC@LL42
        F@JUMP BC@LL54
BC@LL41
F1_000173 equ $ ; IN [ABRAR] ELSE
F1_000174 equ $ ; IN [ABRAR] GOSUB ERROR_FP
        f@call Error_FP
F1_000175 equ $ ; IN [ABRAR] ENDIF
BC@LL54
Present_show
F1_000178 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000179 equ $ ; IN [ABRAR] PRINT AT 1,1,"ID #: ", DEC GET_ID
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
        movf get_ID,W
        f@call OUT@DECB
F1_000180 equ $ ; IN [ABRAR] PRSNT[GET_ID] = PRSNT[GET_ID] + 1
        movf get_ID,W
        addlw prsnt
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        incf PBP#VAR1,W
        movwf PBP#VAR0
        movf get_ID,W
        addlw prsnt
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
F1_000181 equ $ ; IN [ABRAR] RETURN
        return
check_ID
F1_000184 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000185 equ $ ; IN [ABRAR] ID = 0
        clrf ID
checking
F1_000187 equ $ ; IN [ABRAR] PRINT AT 1,1,"ID #: ", DEC ID, " "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
        movf ID,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
F1_000188 equ $ ; IN [ABRAR] PRINT AT 2,1,"PRESENT #: ", DEC PRSNT[ID], " "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
        movf ID,W
        addlw prsnt
        movwf FSR
        movf INDF,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
F1_000189 equ $ ; IN [ABRAR] IF CHECK = 1 THEN
        set@page BC@LL56
        btfss PORTC,2
        goto BC@LL56
F1_000190 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call delay_200
F1_000191 equ $ ; IN [ABRAR] INC ID
        incf ID,F
F1_000192 equ $ ; IN [ABRAR] IF ID > 9 THEN GOSUB DEFAULT_LCD
        movlw 10
        subwf ID,W
        set@page BC@LL58
        btfss STATUS,0
        goto BC@LL58
        f@call default_LCD
BC@LL58
F1_000193 equ $ ; IN [ABRAR] GOTO CHECKING
        F@JUMP checking
F1_000194 equ $ ; IN [ABRAR] ENDIF
BC@LL56
F1_000195 equ $ ; IN [ABRAR] IF CHANGE = 1 THEN GOSUB DELAY_200 : GOSUB DEFAULT_LCD
        set@page BC@LL60
        btfss PORTC,1
        goto BC@LL60
        f@call delay_200
        f@call default_LCD
BC@LL60
F1_000196 equ $ ; IN [ABRAR] GOTO CHECKING
        F@JUMP checking
add_ID
F1_000199 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
confirm
F1_000201 equ $ ; IN [ABRAR] PRINT AT 1,1,"ADD ID #: ", DEC ID
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
        movf ID,W
        f@call OUT@DECB
F1_000202 equ $ ; IN [ABRAR] PRINT AT 2,1,"CONFIRM..?"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
F1_000203 equ $ ; IN [ABRAR] IF CHANGE = 1 THEN
        set@page BC@LL62
        btfss PORTC,1
        goto BC@LL62
F1_000204 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call delay_200
F1_000205 equ $ ; IN [ABRAR] INC ID
        incf ID,F
F1_000206 equ $ ; IN [ABRAR] IF ID > 9 THEN ID = 0
        movlw 10
        subwf ID,W
        set@page BC@LL64
        btfss STATUS,0
        goto BC@LL64
        clrf ID
BC@LL64
F1_000207 equ $ ; IN [ABRAR] GOTO CONFIRM
        F@JUMP confirm
F1_000208 equ $ ; IN [ABRAR] ENDIF
BC@LL62
F1_000209 equ $ ; IN [ABRAR] IF ADD = 1 THEN GOSUB DELAY_200 : GOSUB DEFAULT_LCD
        set@page BC@LL66
        btfss PORTC,0
        goto BC@LL66
        f@call delay_200
        f@call default_LCD
BC@LL66
F1_000210 equ $ ; IN [ABRAR] IF CHECK = 1 THEN GOSUB DELAY_200 : GOTO ADDING
        set@page BC@LL68
        btfss PORTC,2
        goto BC@LL68
        f@call delay_200
        F@JUMP Adding
BC@LL68
F1_000211 equ $ ; IN [ABRAR] GOTO CONFIRM
        F@JUMP confirm
Adding
F1_000213 equ $ ; IN [ABRAR] PRINT AT 2,1,"PUT YOUR FINGER."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
F1_000214 equ $ ; IN [ABRAR] ID_NO = ID
        movf ID,W
        movwf ID_no
F1_000215 equ $ ; IN [ABRAR] GOSUB FP_ENROLL
        f@call FP_Enroll
F1_000216 equ $ ; IN [ABRAR] IF FP_ERROR = 0 THEN
        set@page BC@LL70
        btfsc _B#VR2,2
        goto BC@LL70
F1_000217 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000218 equ $ ; IN [ABRAR] PRINT AT 1,1,"ADD ID #: ", DEC ID
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
        movf ID,W
        f@call OUT@DECB
F1_000219 equ $ ; IN [ABRAR] PRINT AT 2,1,"SUCCESSFULL."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
        F@JUMP BC@LL71
BC@LL70
F1_000220 equ $ ; IN [ABRAR] ELSE
F1_000221 equ $ ; IN [ABRAR] GOSUB ERROR_FP
        f@call Error_FP
F1_000222 equ $ ; IN [ABRAR] ENDIF
BC@LL71
F1_000223 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000224 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
Error_FP
F1_000229 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000230 equ $ ; IN [ABRAR] PRINT AT 2,1,"SOMETHING WRONG."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000231 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call delay_2000
F1_000232 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_LCD
delay_200
F1_000235 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000236 equ $ ; IN [ABRAR] RETURN
        return
delay_2000
F1_000239 equ $ ; IN [ABRAR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000240 equ $ ; IN [ABRAR] RETURN
        return
default_LCD
F1_000243 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000245 equ $ ; IN [ABRAR] PRINT AT 1,1,"S.A SYSTEM D: "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000246 equ $ ; IN [ABRAR] PRINT AT 2,1,"ADD  PSNT  CHECK"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000247 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
F1_EOF equ $ ; ABRAR
PB@LB73
        F@JUMP PB@LB73
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,0
STR@LB2
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,0
STR@LB3
STR@LB10
        de 80,117,116,32,121,111,117,114,32,70,105,110,103,101,114,46,0
STR@LB4
        de 65,108,114,101,97,100,121,32,112,114,101,115,101,110,116,46,0
STR@LB5
STR@LB6
        de 73,68,32,35,58,32,0
STR@LB7
        de 80,114,101,115,101,110,116,32,35,58,32,0
STR@LB8
STR@LB11
        de 65,68,68,32,73,68,32,35,58,32,0
STR@LB9
        de 67,111,110,102,105,114,109,46,46,63,0
STR@LB12
        de 83,117,99,99,101,115,115,102,117,108,108,46,0
STR@LB13
        de 83,111,109,101,116,104,105,110,103,32,87,114,111,110,103,46,0
STR@LB14
        de 83,46,65,32,83,121,115,116,101,109,32,68,58,32,0
STR@LB15
        de 65,68,68,32,32,80,115,110,116,32,32,67,104,101,99,107,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
