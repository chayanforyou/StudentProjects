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
#define _SYSTEM_VARIABLE_COUNT 18
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
GEN4 = 36
GEN4H = 37
PBP#VAR0 = 38
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
SP#P9 = 49
_B#VR1 = 50
new_ID = 51
can_vote = 52
variable can_vote#0=52,can_vote#1=53,can_vote#2=54,can_vote#3=55
variable can_vote#4=56
Vote_A = 57
Vote_B = 58
Vote_C = 59
Vote_D = 60
Vote_E = 61
RXD = 62
variable RXD#0=62,RXD#1=63,RXD#2=64,RXD#3=65
variable RXD#4=66,RXD#5=67,RXD#6=68,RXD#7=69
variable RXD#8=70,RXD#9=71,RXD#10=72,RXD#11=73
variable RXD#12=74,RXD#13=75,RXD#14=76,RXD#15=77
variable RXD#16=78,RXD#17=79,RXD#18=80,RXD#19=81
_X = 82
get_ID = 83
ID_no = 84
checksum = 85
IDs = 86
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define vote_flag _B#VR1,0
#define voted _B#VR1,1
#define voted_flag1 _B#VR1,2
#define voted_flag2 _B#VR1,3
#define voted_flag3 _B#VR1,4
#define voted_flag4 _B#VR1,5
#define voted_flag5 _B#VR1,6
#define can_A PORTC,0
#define can_B PORTC,1
#define can_C PORTC,2
#define can_D PORTC,3
#define can_E PORTC,4
#define vote PORTC,5
#define result PORTB,0
#define ADD PORTA,0
#define Change PORTA,1
#define permission PORTA,2
#define led PORTA,5
#define FP_error _B#VR1,7
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
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
        clrf 37
OUT@DECC
        movwf 43
        clrf 44
OUT@DEC
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 36
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
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
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
        movwf 36
C@STROUTW
        clrf 34
C@STROUTLP
        movf 36,W
        bsf 3,6
        movwf 269
        bcf 3,6
        movf 37,W
        bsf 3,6
        movwf 271
        call C@READ
        skpnz
        goto I@NT
        call CH@SND
        incf 36,F
        skpnz
        incf 37,F
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
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000020 equ $ ; IN [ABRAR] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000022 equ $ ; IN [ABRAR] TRISA = %000111
        movwf TRISA
F1_000023 equ $ ; IN [ABRAR] TRISB.0 = 1
        bsf TRISB,0
F1_000024 equ $ ; IN [ABRAR] TRISC = %10111111
        movlw 191
        movwf TRISC
F1_000064 equ $ ; IN [ABRAR] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000065 equ $ ; IN [ABRAR] PRINT AT 3,1,"  PLEASE WAIT..."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000066 equ $ ; IN [ABRAR] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000067 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
main
F1_000070 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000071 equ $ ; IN [ABRAR] VOTE_A = 0 : VOTE_B = 0
        clrf Vote_A
        clrf Vote_B
F1_000072 equ $ ; IN [ABRAR] VOTE_C = 0 : VOTE_D = 0
        clrf Vote_C
        clrf Vote_D
F1_000073 equ $ ; IN [ABRAR] VOTE_E = 0
        clrf Vote_E
F1_000074 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
start
F1_000077 equ $ ; IN [ABRAR] IF PERMISSION = 1 THEN GOSUB DELAY_200 : VOTE_FLAG = ~VOTE_FLAG
        set@page BC@LL2
        btfss PORTA,2
        goto BC@LL2
        f@call Delay_200
        movlw 1
        xorwf _B#VR1,F
BC@LL2
F1_000078 equ $ ; IN [ABRAR] IF VOTE_FLAG = 0 THEN
        set@page BC@LL4
        btfsc _B#VR1,0
        goto BC@LL4
F1_000079 equ $ ; IN [ABRAR] PRINT AT 3,1,"VOTING CURRENTLY OFF"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000080 equ $ ; IN [ABRAR] IF VOTE = 1 THEN GOSUB DELAY_200 : GOSUB MENU
        set@page BC@LL6
        btfss PORTC,5
        goto BC@LL6
        f@call Delay_200
        f@call Menu
BC@LL6
F1_000081 equ $ ; IN [ABRAR] IF RESULT = 1 THEN GOSUB DELAY_200 : GOSUB SHOW_RESULT
        set@page BC@LL8
        btfss PORTB,0
        goto BC@LL8
        f@call Delay_200
        f@call show_result
BC@LL8
        F@JUMP BC@LL9
BC@LL4
F1_000082 equ $ ; IN [ABRAR] ELSE
F1_000083 equ $ ; IN [ABRAR] PRINT AT 3,1,"  READY FOR VOTING  "
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000084 equ $ ; IN [ABRAR] IF VOTE = 1 THEN GOSUB DELAY_200 : GOSUB VOTING
        set@page BC@LL11
        btfss PORTC,5
        goto BC@LL11
        f@call Delay_200
        f@call voting
BC@LL11
F1_000085 equ $ ; IN [ABRAR] ENDIF
BC@LL9
F1_000086 equ $ ; IN [ABRAR] IF ADD = 1 THEN GOSUB DELAY_200 : GOSUB ADD_ID
        set@page BC@LL13
        btfss PORTA,0
        goto BC@LL13
        f@call Delay_200
        f@call ADD_ID
BC@LL13
F1_000087 equ $ ; IN [ABRAR] IF CHANGE = 1 THEN
        set@page BC@LL15
        btfss PORTA,1
        goto BC@LL15
F1_000088 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call Delay_200
F1_000089 equ $ ; IN [ABRAR] GOSUB FP_TOTAL_ID
        f@call FP_total_ID
F1_000090 equ $ ; IN [ABRAR] IF FP_ERROR = 0 THEN
        set@page BC@LL17
        btfsc _B#VR1,7
        goto BC@LL17
F1_000091 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000092 equ $ ; IN [ABRAR] PRINT AT 3,1,"TOTAL IDS: ", DEC (IDS / 2)
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
        clrf GEN4H
        bcf STATUS,0
        rrf IDs,W
        movwf PP2
        clrf PP2H
        f@call OUT@DEC
F1_000093 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000094 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
        F@JUMP BC@LL18
BC@LL17
F1_000095 equ $ ; IN [ABRAR] ELSE
F1_000096 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000097 equ $ ; IN [ABRAR] PRINT AT 3,1,"ERROR."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000098 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000099 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000100 equ $ ; IN [ABRAR] ENDIF
BC@LL18
F1_000101 equ $ ; IN [ABRAR] ENDIF
BC@LL15
F1_000102 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
show_result
F1_000105 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000106 equ $ ; IN [ABRAR] WHILE 1 = 1
BC@LL19
F1_000107 equ $ ; IN [ABRAR] PRINT AT 1,1,"VOTE FINAL RESULT"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000108 equ $ ; IN [ABRAR] PRINT AT 2,1,"CAN_A: ",DEC VOTE_A,"   CAN_B: ",DEC VOTE_B
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
        movf Vote_A,W
        f@call OUT@DECB
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
        movf Vote_B,W
        f@call OUT@DECB
F1_000109 equ $ ; IN [ABRAR] PRINT AT 3,1,"CAN_C: ",DEC VOTE_C,"   CAN_D: ",DEC VOTE_D
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB9)
        movwf GEN4H
        movlw low (STR@LB9)
        f@call C@STROUT
        movf Vote_C,W
        f@call OUT@DECB
        movlw high (STR@LB10)
        movwf GEN4H
        movlw low (STR@LB10)
        f@call C@STROUT
        movf Vote_D,W
        f@call OUT@DECB
F1_000110 equ $ ; IN [ABRAR] PRINT AT 4,1,"CAN_E: ",DEC VOTE_E
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw high (STR@LB11)
        movwf GEN4H
        movlw low (STR@LB11)
        f@call C@STROUT
        movf Vote_E,W
        f@call OUT@DECB
F1_000111 equ $ ; IN [ABRAR] IF RESULT = 1 THEN GOSUB DELAY_200 : GOSUB DEFAULT_LCD
        set@page BC@LL22
        btfss PORTB,0
        goto BC@LL22
        f@call Delay_200
        f@call default_lcd
BC@LL22
F1_000112 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL19
BC@LL20
voting
F1_000116 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000117 equ $ ; IN [ABRAR] PRINT AT 2,1,"VOTING ALLOWED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB12)
        movwf GEN4H
        movlw low (STR@LB12)
        f@call C@STROUT
F1_000119 equ $ ; IN [ABRAR] WHILE VOTE_FLAG = 1
BC@LL23
        set@page BC@LL24
        btfss _B#VR1,0
        goto BC@LL24
F1_000120 equ $ ; IN [ABRAR] IF PERMISSION = 1 THEN GOSUB DELAY_200 : VOTE_FLAG = ~VOTE_FLAG
        set@page BC@LL26
        btfss PORTA,2
        goto BC@LL26
        f@call Delay_200
        movlw 1
        xorwf _B#VR1,F
BC@LL26
F1_000121 equ $ ; IN [ABRAR] PRINT AT 3,1,"PRESS AGAIN FOR VOTE"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB13)
        movwf GEN4H
        movlw low (STR@LB13)
        f@call C@STROUT
F1_000122 equ $ ; IN [ABRAR] WHILE VOTE = 1
BC@LL27
        set@page BC@LL28
        btfss PORTC,5
        goto BC@LL28
F1_000123 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000124 equ $ ; IN [ABRAR] PRINT AT 3,1,"PUT YOUR FINGER - 1"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB14)
        movwf GEN4H
        movlw low (STR@LB14)
        f@call C@STROUT
F1_000125 equ $ ; IN [ABRAR] GOSUB FP_SEARCH
        f@call FP_Search
F1_000126 equ $ ; IN [ABRAR] IF FP_ERROR = 0 THEN
        set@page BC@LL30
        btfsc _B#VR1,7
        goto BC@LL30
F1_000127 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000128 equ $ ; IN [ABRAR] IF GET_ID = 0 AND VOTED_FLAG1 = 0 THEN
        movlw 1
        movf get_ID,F
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
F1_000129 equ $ ; IN [ABRAR] GOSUB SUB3
        f@call sub3
F1_000130 equ $ ; IN [ABRAR] IF FP_ERROR = 0 AND GET_ID = 1 THEN
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        movwf SP#P9
        movlw 1
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL34
        btfsc STATUS,2
        goto BC@LL34
F1_000131 equ $ ; IN [ABRAR] GOSUB SUB1
        f@call sub1
        F@JUMP BC@LL35
BC@LL34
F1_000132 equ $ ; IN [ABRAR] ELSE
F1_000133 equ $ ; IN [ABRAR] GOSUB SUB2
        f@call sub2
F1_000134 equ $ ; IN [ABRAR] ENDIF
BC@LL35
        F@JUMP BC@LL31
F1_000135 equ $ ; IN [ABRAR] ELSEIF GET_ID = 2 AND VOTED_FLAG2 = 0 THEN
BC@LL32
        movlw 2
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,3
        movlw 0
        andwf SP#P9,F
        set@page BC@LL36
        btfsc STATUS,2
        goto BC@LL36
F1_000136 equ $ ; IN [ABRAR] GOSUB SUB3
        f@call sub3
F1_000137 equ $ ; IN [ABRAR] IF FP_ERROR = 0 AND GET_ID = 3 THEN
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        movwf SP#P9
        movlw 3
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL38
        btfsc STATUS,2
        goto BC@LL38
F1_000138 equ $ ; IN [ABRAR] GOSUB SUB1
        f@call sub1
        F@JUMP BC@LL39
BC@LL38
F1_000139 equ $ ; IN [ABRAR] ELSE
F1_000140 equ $ ; IN [ABRAR] GOSUB SUB2
        f@call sub2
F1_000141 equ $ ; IN [ABRAR] ENDIF
BC@LL39
        F@JUMP BC@LL31
F1_000142 equ $ ; IN [ABRAR] ELSEIF GET_ID = 4 AND VOTED_FLAG3 = 0 THEN
BC@LL36
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
        set@page BC@LL40
        btfsc STATUS,2
        goto BC@LL40
F1_000143 equ $ ; IN [ABRAR] GOSUB SUB3
        f@call sub3
F1_000144 equ $ ; IN [ABRAR] IF FP_ERROR = 0 AND GET_ID = 5 THEN
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        movwf SP#P9
        movlw 5
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL42
        btfsc STATUS,2
        goto BC@LL42
F1_000145 equ $ ; IN [ABRAR] GOSUB SUB1
        f@call sub1
        F@JUMP BC@LL43
BC@LL42
F1_000146 equ $ ; IN [ABRAR] ELSE
F1_000147 equ $ ; IN [ABRAR] GOSUB SUB2
        f@call sub2
F1_000148 equ $ ; IN [ABRAR] ENDIF
BC@LL43
        F@JUMP BC@LL31
F1_000149 equ $ ; IN [ABRAR] ELSEIF GET_ID = 6 AND VOTED_FLAG4 = 0 THEN
BC@LL40
        movlw 6
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,5
        movlw 0
        andwf SP#P9,F
        set@page BC@LL44
        btfsc STATUS,2
        goto BC@LL44
F1_000150 equ $ ; IN [ABRAR] GOSUB SUB3
        f@call sub3
F1_000151 equ $ ; IN [ABRAR] IF FP_ERROR = 0 AND GET_ID = 7 THEN
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        movwf SP#P9
        movlw 7
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL46
        btfsc STATUS,2
        goto BC@LL46
F1_000152 equ $ ; IN [ABRAR] GOSUB SUB1
        f@call sub1
        F@JUMP BC@LL47
BC@LL46
F1_000153 equ $ ; IN [ABRAR] ELSE
F1_000154 equ $ ; IN [ABRAR] GOSUB SUB2
        f@call sub2
F1_000155 equ $ ; IN [ABRAR] ENDIF
BC@LL47
        F@JUMP BC@LL31
F1_000156 equ $ ; IN [ABRAR] ELSEIF GET_ID = 8 AND VOTED_FLAG5 = 0 THEN
BC@LL44
        movlw 8
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,6
        movlw 0
        andwf SP#P9,F
        set@page BC@LL48
        btfsc STATUS,2
        goto BC@LL48
F1_000157 equ $ ; IN [ABRAR] GOSUB SUB3
        f@call sub3
F1_000158 equ $ ; IN [ABRAR] IF FP_ERROR = 0 AND GET_ID = 9 THEN
        movlw 1
        btfsc _B#VR1,7
        movlw 0
        movwf SP#P9
        movlw 9
        subwf get_ID,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL50
        btfsc STATUS,2
        goto BC@LL50
F1_000159 equ $ ; IN [ABRAR] GOSUB SUB1
        f@call sub1
        F@JUMP BC@LL51
BC@LL50
F1_000160 equ $ ; IN [ABRAR] ELSE
F1_000161 equ $ ; IN [ABRAR] GOSUB SUB2
        f@call sub2
F1_000162 equ $ ; IN [ABRAR] ENDIF
BC@LL51
        F@JUMP BC@LL52
BC@LL48
F1_000163 equ $ ; IN [ABRAR] ELSE
F1_000164 equ $ ; IN [ABRAR] GOSUB SUB4
        f@call sub4
F1_000165 equ $ ; IN [ABRAR] ENDIF
BC@LL52
BC@LL31
        F@JUMP BC@LL53
BC@LL30
F1_000166 equ $ ; IN [ABRAR] ELSE
F1_000167 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000168 equ $ ; IN [ABRAR] PRINT AT 3,1,"ERROR."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB15)
        movwf GEN4H
        movlw low (STR@LB15)
        f@call C@STROUT
F1_000169 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000170 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000171 equ $ ; IN [ABRAR] ENDIF
BC@LL53
F1_000172 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL27
BC@LL28
F1_000173 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL23
BC@LL24
sub1
F1_000176 equ $ ; IN [ABRAR] PRINT AT 3,1,"PRESS YOUR CANDIDATE"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB16)
        movwf GEN4H
        movlw low (STR@LB16)
        f@call C@STROUT
F1_000177 equ $ ; IN [ABRAR] GOSUB SELECT_VOTE
        f@call select_vote
sub2
F1_000180 equ $ ; IN [ABRAR] LED = 1
        bsf PORTA,5
F1_000181 equ $ ; IN [ABRAR] PRINT AT 3,1,"YOU R NOT REGISTERED"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB17)
        movwf GEN4H
        movlw low (STR@LB17)
        f@call C@STROUT
F1_000182 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000183 equ $ ; IN [ABRAR] LED = 0
        bcf PORTA,5
F1_000184 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
sub3
F1_000187 equ $ ; IN [ABRAR] PRINT AT 3,1,"PUT YOUR FINGER - 2"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB18)
        movwf GEN4H
        movlw low (STR@LB18)
        f@call C@STROUT
F1_000188 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000189 equ $ ; IN [ABRAR] GOSUB FP_SEARCH
        f@call FP_Search
F1_000190 equ $ ; IN [ABRAR] RETURN
        return
sub4
F1_000193 equ $ ; IN [ABRAR] LED = 1
        bsf PORTA,5
F1_000194 equ $ ; IN [ABRAR] PRINT AT 3,1,"YOU ALREADY VOTED."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB19)
        movwf GEN4H
        movlw low (STR@LB19)
        f@call C@STROUT
F1_000195 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000196 equ $ ; IN [ABRAR] LED = 0
        bcf PORTA,5
F1_000197 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
select_vote
F1_000200 equ $ ; IN [ABRAR] VOTED = 0
        bcf _B#VR1,1
F1_000201 equ $ ; IN [ABRAR] REPEAT
BC@LL54
F1_000202 equ $ ; IN [ABRAR] IF CAN_A = 1 THEN
        set@page BC@LL58
        btfss PORTC,0
        goto BC@LL58
F1_000203 equ $ ; IN [ABRAR] GOSUB DELAY_200 : INC VOTE_A : VOTED = 1
        f@call Delay_200
        incf Vote_A,F
        bsf _B#VR1,1
        F@JUMP BC@LL57
F1_000204 equ $ ; IN [ABRAR] ELSEIF CAN_B = 1 THEN
BC@LL58
        set@page BC@LL59
        btfss PORTC,1
        goto BC@LL59
F1_000205 equ $ ; IN [ABRAR] GOSUB DELAY_200 : INC VOTE_B : VOTED = 1
        f@call Delay_200
        incf Vote_B,F
        bsf _B#VR1,1
        F@JUMP BC@LL57
F1_000206 equ $ ; IN [ABRAR] ELSEIF CAN_C = 1 THEN
BC@LL59
        set@page BC@LL60
        btfss PORTC,2
        goto BC@LL60
F1_000207 equ $ ; IN [ABRAR] GOSUB DELAY_200 : INC VOTE_C : VOTED = 1
        f@call Delay_200
        incf Vote_C,F
        bsf _B#VR1,1
        F@JUMP BC@LL57
F1_000208 equ $ ; IN [ABRAR] ELSEIF CAN_D = 1 THEN
BC@LL60
        set@page BC@LL61
        btfss PORTC,3
        goto BC@LL61
F1_000209 equ $ ; IN [ABRAR] GOSUB DELAY_200 : INC VOTE_D : VOTED = 1
        f@call Delay_200
        incf Vote_D,F
        bsf _B#VR1,1
        F@JUMP BC@LL57
F1_000210 equ $ ; IN [ABRAR] ELSEIF CAN_E = 1 THEN
BC@LL61
        set@page BC@LL62
        btfss PORTC,4
        goto BC@LL62
F1_000211 equ $ ; IN [ABRAR] GOSUB DELAY_200 : INC VOTE_E : VOTED = 1
        f@call Delay_200
        incf Vote_E,F
        bsf _B#VR1,1
F1_000212 equ $ ; IN [ABRAR] ENDIF
BC@LL62
BC@LL57
BC@LL56
F1_000213 equ $ ; IN [ABRAR] UNTIL VOTED = 1
        set@page BC@LL54
        btfss _B#VR1,1
        goto BC@LL54
BC@LL55
F1_000214 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000215 equ $ ; IN [ABRAR] PRINT AT 3,1,"VOTE GRANTED."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB20)
        movwf GEN4H
        movlw low (STR@LB20)
        f@call C@STROUT
F1_000216 equ $ ; IN [ABRAR] IF GET_ID = 1 THEN VOTED_FLAG1 = 1
        movlw 1
        subwf get_ID,W
        set@page BC@LL64
        btfss STATUS,2
        goto BC@LL64
        bsf _B#VR1,2
BC@LL64
F1_000217 equ $ ; IN [ABRAR] IF GET_ID = 3 THEN VOTED_FLAG2 = 1
        movlw 3
        subwf get_ID,W
        set@page BC@LL66
        btfss STATUS,2
        goto BC@LL66
        bsf _B#VR1,3
BC@LL66
F1_000218 equ $ ; IN [ABRAR] IF GET_ID = 5 THEN VOTED_FLAG3 = 1
        movlw 5
        subwf get_ID,W
        set@page BC@LL68
        btfss STATUS,2
        goto BC@LL68
        bsf _B#VR1,4
BC@LL68
F1_000219 equ $ ; IN [ABRAR] IF GET_ID = 7 THEN VOTED_FLAG4 = 1
        movlw 7
        subwf get_ID,W
        set@page BC@LL70
        btfss STATUS,2
        goto BC@LL70
        bsf _B#VR1,5
BC@LL70
F1_000220 equ $ ; IN [ABRAR] IF GET_ID = 9 THEN VOTED_FLAG5 = 1
        movlw 9
        subwf get_ID,W
        set@page BC@LL72
        btfss STATUS,2
        goto BC@LL72
        bsf _B#VR1,6
BC@LL72
F1_000221 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000222 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
Menu
F1_000225 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000226 equ $ ; IN [ABRAR] PRINT AT 2,1,"1. DELETE ALL IDS??"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB21)
        movwf GEN4H
        movlw low (STR@LB21)
        f@call C@STROUT
F1_000227 equ $ ; IN [ABRAR] PRINT AT 3,1,"2. DELETE ALL VOTE?"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB22)
        movwf GEN4H
        movlw low (STR@LB22)
        f@call C@STROUT
F1_000228 equ $ ; IN [ABRAR] WHILE 1 = 1
BC@LL73
F1_000229 equ $ ; IN [ABRAR] IF VOTE = 1 THEN GOSUB DELAY_200 : GOSUB DEFAULT_LCD
        set@page BC@LL76
        btfss PORTC,5
        goto BC@LL76
        f@call Delay_200
        f@call default_lcd
BC@LL76
F1_000230 equ $ ; IN [ABRAR] IF RESULT = 1 THEN
        set@page BC@LL78
        btfss PORTB,0
        goto BC@LL78
F1_000231 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call Delay_200
F1_000232 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000233 equ $ ; IN [ABRAR] VOTE_A = 0 : VOTE_B = 0
        clrf Vote_A
        clrf Vote_B
F1_000234 equ $ ; IN [ABRAR] VOTE_C = 0 : VOTE_D = 0
        clrf Vote_C
        clrf Vote_D
F1_000235 equ $ ; IN [ABRAR] VOTE_E = 0
        clrf Vote_E
F1_000237 equ $ ; IN [ABRAR] PRINT AT 3,1,"ALL VOTE CLEARED."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB23)
        movwf GEN4H
        movlw low (STR@LB23)
        f@call C@STROUT
F1_000238 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000239 equ $ ; IN [ABRAR] ENDIF
BC@LL78
F1_000240 equ $ ; IN [ABRAR] IF PERMISSION = 1 THEN
        set@page BC@LL80
        btfss PORTA,2
        goto BC@LL80
F1_000241 equ $ ; IN [ABRAR] LED = 1
        bsf PORTA,5
F1_000242 equ $ ; IN [ABRAR] GOSUB DELAY_200
        f@call Delay_200
F1_000243 equ $ ; IN [ABRAR] LED = 0
        bcf PORTA,5
F1_000244 equ $ ; IN [ABRAR] GOSUB FP_DELETE_ALL
        f@call FP_Delete_ALL
F1_000245 equ $ ; IN [ABRAR] IF FP_ERROR = 0 THEN
        set@page BC@LL82
        btfsc _B#VR1,7
        goto BC@LL82
F1_000246 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000247 equ $ ; IN [ABRAR] PRINT AT 3,1,"ALL DELETED."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB24)
        movwf GEN4H
        movlw low (STR@LB24)
        f@call C@STROUT
F1_000248 equ $ ; IN [ABRAR] LED = 1
        bsf PORTA,5
F1_000249 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000250 equ $ ; IN [ABRAR] LED = 0
        bcf PORTA,5
F1_000251 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
        F@JUMP BC@LL83
BC@LL82
F1_000252 equ $ ; IN [ABRAR] ELSE
F1_000253 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000254 equ $ ; IN [ABRAR] PRINT AT 3,1,"ERROR."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB25)
        movwf GEN4H
        movlw low (STR@LB25)
        f@call C@STROUT
F1_000255 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000256 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000257 equ $ ; IN [ABRAR] ENDIF
BC@LL83
F1_000258 equ $ ; IN [ABRAR] ENDIF
BC@LL80
F1_000259 equ $ ; IN [ABRAR] WEND
        F@JUMP BC@LL73
BC@LL74
ADD_ID
F1_000262 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000263 equ $ ; IN [ABRAR] PRINT AT 2,1,"ENTER ID #:"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB26)
        movwf GEN4H
        movlw low (STR@LB26)
        f@call C@STROUT
F1_000264 equ $ ; IN [ABRAR] ID_NO = 100
        movlw 100
        movwf ID_no
F1_000265 equ $ ; IN [ABRAR] REPEAT
BC@LL84
F1_000266 equ $ ; IN [ABRAR] IF CAN_A = 1 THEN
        set@page BC@LL88
        btfss PORTC,0
        goto BC@LL88
F1_000267 equ $ ; IN [ABRAR] GOSUB DELAY_200 : ID_NO = 0 : NEW_ID = 1
        f@call Delay_200
        clrf ID_no
        movlw 1
        movwf new_ID
        F@JUMP BC@LL87
F1_000268 equ $ ; IN [ABRAR] ELSEIF CAN_B = 1 THEN
BC@LL88
        set@page BC@LL89
        btfss PORTC,1
        goto BC@LL89
F1_000269 equ $ ; IN [ABRAR] GOSUB DELAY_200 : ID_NO = 2 : NEW_ID = 2
        f@call Delay_200
        movlw 2
        movwf ID_no
        movwf new_ID
        F@JUMP BC@LL87
F1_000270 equ $ ; IN [ABRAR] ELSEIF CAN_C = 1 THEN
BC@LL89
        set@page BC@LL90
        btfss PORTC,2
        goto BC@LL90
F1_000271 equ $ ; IN [ABRAR] GOSUB DELAY_200 : ID_NO = 4 : NEW_ID = 3
        f@call Delay_200
        movlw 4
        movwf ID_no
        movlw 3
        movwf new_ID
        F@JUMP BC@LL87
F1_000272 equ $ ; IN [ABRAR] ELSEIF CAN_D = 1 THEN
BC@LL90
        set@page BC@LL91
        btfss PORTC,3
        goto BC@LL91
F1_000273 equ $ ; IN [ABRAR] GOSUB DELAY_200 : ID_NO = 6 : NEW_ID = 4
        f@call Delay_200
        movlw 6
        movwf ID_no
        movlw 4
        movwf new_ID
        F@JUMP BC@LL87
F1_000274 equ $ ; IN [ABRAR] ELSEIF CAN_E = 1 THEN
BC@LL91
        set@page BC@LL92
        btfss PORTC,4
        goto BC@LL92
F1_000275 equ $ ; IN [ABRAR] GOSUB DELAY_200 : ID_NO = 8 : NEW_ID = 5
        f@call Delay_200
        movlw 8
        movwf ID_no
        movlw 5
        movwf new_ID
F1_000276 equ $ ; IN [ABRAR] ENDIF
BC@LL92
BC@LL87
F1_000277 equ $ ; IN [ABRAR] IF CHANGE = 1 THEN GOSUB DELAY_200 : GOSUB DEFAULT_LCD
        set@page BC@LL94
        btfss PORTA,1
        goto BC@LL94
        f@call Delay_200
        f@call default_lcd
BC@LL94
BC@LL86
F1_000278 equ $ ; IN [ABRAR] UNTIL ID_NO < 10
        movlw 10
        subwf ID_no,W
        set@page BC@LL84
        btfsc STATUS,0
        goto BC@LL84
BC@LL85
F1_000279 equ $ ; IN [ABRAR] PRINT AT 2,1,"ADDING ID # ", DEC NEW_ID
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB27)
        movwf GEN4H
        movlw low (STR@LB27)
        f@call C@STROUT
        movf new_ID,W
        f@call OUT@DECB
F1_000280 equ $ ; IN [ABRAR] PRINT AT 3,1,"PUT YOUR FINGER 1."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB28)
        movwf GEN4H
        movlw low (STR@LB28)
        f@call C@STROUT
F1_000281 equ $ ; IN [ABRAR] GOSUB FP_ENROLL
        f@call FP_Enroll
F1_000282 equ $ ; IN [ABRAR] IF FP_ERROR = 1 THEN
        set@page BC@LL96
        btfss _B#VR1,7
        goto BC@LL96
F1_000283 equ $ ; IN [ABRAR] GOSUB ERRORFP
        f@call ErrorFP
F1_000284 equ $ ; IN [ABRAR] RETURN
        return
        F@JUMP BC@LL97
BC@LL96
F1_000285 equ $ ; IN [ABRAR] ELSE
F1_000286 equ $ ; IN [ABRAR] PRINT AT 3,1,"ID # 0",DEC NEW_ID, " ADDED. F-1"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB29)
        movwf GEN4H
        movlw low (STR@LB29)
        f@call C@STROUT
        movf new_ID,W
        f@call OUT@DECB
        movlw high (STR@LB30)
        movwf GEN4H
        movlw low (STR@LB30)
        f@call C@STROUT
F1_000287 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000288 equ $ ; IN [ABRAR] ENDIF
BC@LL97
F1_000289 equ $ ; IN [ABRAR] PRINT AT 3,1,"PUT YOUR FINGER 2."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB31)
        movwf GEN4H
        movlw low (STR@LB31)
        f@call C@STROUT
F1_000290 equ $ ; IN [ABRAR] ID_NO = ID_NO + 1
        incf ID_no,F
F1_000291 equ $ ; IN [ABRAR] GOSUB FP_ENROLL
        f@call FP_Enroll
F1_000292 equ $ ; IN [ABRAR] IF FP_ERROR = 1 THEN
        set@page BC@LL99
        btfss _B#VR1,7
        goto BC@LL99
F1_000293 equ $ ; IN [ABRAR] GOSUB ERRORFP
        f@call ErrorFP
        F@JUMP BC@LL100
BC@LL99
F1_000294 equ $ ; IN [ABRAR] ELSE
F1_000295 equ $ ; IN [ABRAR] PRINT AT 3,1,"ID # 0",DEC NEW_ID, " ADDED. F-2"
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB32)
        movwf GEN4H
        movlw low (STR@LB32)
        f@call C@STROUT
        movf new_ID,W
        f@call OUT@DECB
        movlw high (STR@LB33)
        movwf GEN4H
        movlw low (STR@LB33)
        f@call C@STROUT
F1_000296 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000297 equ $ ; IN [ABRAR] GOSUB DEFAULT_LCD
        f@call default_lcd
F1_000298 equ $ ; IN [ABRAR] ENDIF
BC@LL100
F1_000299 equ $ ; IN [ABRAR] RETURN
        return
ErrorFP
F1_000302 equ $ ; IN [ABRAR] PRINT AT 3,1,"SOMETHING WRONG..."
        movlw 128
        movwf BPFH
        movlw 148
        f@call LCD@CRS
        movlw high (STR@LB34)
        movwf GEN4H
        movlw low (STR@LB34)
        f@call C@STROUT
F1_000303 equ $ ; IN [ABRAR] LED = 1
        bsf PORTA,5
F1_000304 equ $ ; IN [ABRAR] GOSUB DELAY_2000
        f@call Delay_2000
F1_000305 equ $ ; IN [ABRAR] LED = 0
        bcf PORTA,5
F1_000306 equ $ ; IN [ABRAR] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
  clrf PCLATH
  goto 0
default_lcd
F1_000312 equ $ ; IN [ABRAR] PRINT $FE, 1
        movlw 254
        f@call PRINT
        movlw 1
        f@call PRINT
F1_000313 equ $ ; IN [ABRAR] PRINT AT 1,1," FP. VOTING MACHINE "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB35)
        movwf GEN4H
        movlw low (STR@LB35)
        f@call C@STROUT
F1_000314 equ $ ; IN [ABRAR] PRINT AT 2,1,"TOTAL CANDIDATE: 005"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB36)
        movwf GEN4H
        movlw low (STR@LB36)
        f@call C@STROUT
F1_000315 equ $ ; IN [ABRAR] PRINT AT 4,1,"ADD    IDS    VOTING"
        movlw 128
        movwf BPFH
        movlw 212
        f@call LCD@CRS
        movlw high (STR@LB37)
        movwf GEN4H
        movlw low (STR@LB37)
        f@call C@STROUT
F1_000316 equ $ ; IN [ABRAR] GOTO START
        F@JUMP start
Delay_200
F1_000319 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000320 equ $ ; IN [ABRAR] RETURN
        return
Delay_2000
F1_000323 equ $ ; IN [ABRAR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000324 equ $ ; IN [ABRAR] RETURN
        return
FP_Enroll
F1_000327 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR1,7
F1_000328 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F1_000329 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000330 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ENROLL
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL102
        btfsc STATUS,2
        goto BC@LL102
        F@JUMP FP_Enroll
BC@LL102
F1_000331 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F1_000332 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000333 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL104
        btfsc STATUS,2
        goto BC@LL104
        bsf _B#VR1,7
        return
BC@LL104
Recheck
F1_000335 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F1_000336 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000337 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN RECHECK
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL106
        btfsc STATUS,2
        goto BC@LL106
        F@JUMP Recheck
BC@LL106
F1_000338 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $02 , $00 , $09]
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
F1_000339 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000340 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL108
        btfsc STATUS,2
        goto BC@LL108
        bsf _B#VR1,7
        return
BC@LL108
F1_000341 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $05 , $00 , $09]
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
F1_000342 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000343 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL110
        btfsc STATUS,2
        goto BC@LL110
        bsf _B#VR1,7
        return
BC@LL110
F1_000344 equ $ ; IN [ABRAR] CHECKSUM = 15 + ID_NO
        movlw 15
        addwf ID_no,W
        movwf checksum
F1_000345 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $06 , $06 , $02 , $00, ID_NO, $00, CHECKSUM]
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
F1_000346 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000347 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL112
        btfsc STATUS,2
        goto BC@LL112
        bsf _B#VR1,7
        return
BC@LL112
F1_000348 equ $ ; IN [ABRAR] RETURN
        return
FP_Search
F1_000351 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR1,7
F1_000352 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $03 , $01 , $00 , $05]
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
F1_000353 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000354 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_SEARCH
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL114
        btfsc STATUS,2
        goto BC@LL114
        F@JUMP FP_Search
BC@LL114
F1_000355 equ $ ; IN [ABRAR] HSEROUT[$EF , $01 , $FF , $FF , $FF , $FF , $01 , $00 , $04 , $02 , $01 , $00 , $08]
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
F1_000356 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000357 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL116
        btfsc STATUS,2
        goto BC@LL116
        bsf _B#VR1,7
        return
BC@LL116
F1_000358 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $08, $1B, $01, $00, $00, $03, $E9, $01, $11]
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
F1_000359 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13],RXD[14],RXD[15]]
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
F1_000360 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL118
        btfsc STATUS,2
        goto BC@LL118
        bsf _B#VR1,7
        return
BC@LL118
F1_000361 equ $ ; IN [ABRAR] GET_ID = RXD[11]
        movf RXD#11,W
        movwf get_ID
F1_000362 equ $ ; IN [ABRAR] RETURN
        return
FP_Delete_ID
F1_000365 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR1,7
F1_000366 equ $ ; IN [ABRAR] CHECKSUM = 21 + ID_NO
        movlw 21
        addwf ID_no,W
        movwf checksum
F1_000367 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $07, $0C, $00, ID_NO, $00, $01, $00, CHECKSUM]
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
F1_000368 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000369 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL120
        btfsc STATUS,2
        goto BC@LL120
        bsf _B#VR1,7
        return
BC@LL120
F1_000370 equ $ ; IN [ABRAR] RETURN
        return
FP_Delete_ALL
F1_000373 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR1,7
F1_000374 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $0D, $00, $11]
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
F1_000375 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11]]
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
F1_000376 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL122
        btfsc STATUS,2
        goto BC@LL122
        bsf _B#VR1,7
        return
BC@LL122
F1_000377 equ $ ; IN [ABRAR] RETURN
        return
FP_total_ID
F1_000380 equ $ ; IN [ABRAR] FP_ERROR = 0
        bcf _B#VR1,7
F1_000381 equ $ ; IN [ABRAR] HSEROUT[$EF, $01, $FF, $FF, $FF, $FF, $01, $00, $03, $1D, $00, $21]
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
F1_000382 equ $ ; IN [ABRAR] HSERIN[RXD[0],RXD[1],RXD[2],RXD[3],RXD[4],RXD[5],RXD[6],RXD[7],RXD[8],RXD[9],RXD[10],RXD[11],RXD[12],RXD[13]]
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
F1_000383 equ $ ; IN [ABRAR] IF RXD[9] != 0 THEN FP_ERROR = 1 : RETURN
        movf RXD#9,W
        movwf PBP#VAR0
        movf PBP#VAR0,F
        set@page BC@LL124
        btfsc STATUS,2
        goto BC@LL124
        bsf _B#VR1,7
        return
BC@LL124
F1_000384 equ $ ; IN [ABRAR] IDS = RXD[11]
        movf RXD#11,W
        movwf IDs
F1_000385 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB126
        F@JUMP PB@LB126
STR@LB1
        de 32,32,80,108,101,97,115,101,32,119,97,105,116,46,46,46,0
STR@LB2
        de 86,111,116,105,110,103,32,99,117,114,114,101,110,116,108,121,32,79,70,70,0
STR@LB3
        de 32,32,82,101,97,100,121,32,102,111,114,32,86,111,116,105,110,103,32,32,0
STR@LB4
        de 84,111,116,97,108,32,73,68,115,58,32,0
STR@LB5
STR@LB15
STR@LB25
        de 69,114,114,111,114,46,0
STR@LB6
        de 86,111,116,101,32,70,105,110,97,108,32,82,101,115,117,108,116,0
STR@LB7
        de 67,97,110,95,65,58,32,0
STR@LB8
        de 32,32,32,67,97,110,95,66,58,32,0
STR@LB9
        de 67,97,110,95,67,58,32,0
STR@LB10
        de 32,32,32,67,97,110,95,68,58,32,0
STR@LB11
        de 67,97,110,95,69,58,32,0
STR@LB12
        de 86,111,116,105,110,103,32,65,108,108,111,119,101,100,46,0
STR@LB13
        de 80,114,101,115,115,32,97,103,97,105,110,32,102,111,114,32,118,111,116,101,0
STR@LB14
        de 80,117,116,32,89,111,117,114,32,70,105,110,103,101,114,32,45,32,49,0
STR@LB16
        de 80,114,101,115,115,32,121,111,117,114,32,67,97,110,100,105,100,97,116,101,0
STR@LB17
        de 89,111,117,32,114,32,110,111,116,32,114,101,103,105,115,116,101,114,101,100,0
STR@LB18
        de 80,117,116,32,89,111,117,114,32,70,105,110,103,101,114,32,45,32,50,0
STR@LB19
        de 89,111,117,32,97,108,114,101,97,100,121,32,118,111,116,101,100,46,0
STR@LB20
        de 86,111,116,101,32,71,114,97,110,116,101,100,46,0
STR@LB21
        de 49,46,32,68,101,108,101,116,101,32,65,108,108,32,73,68,115,63,63,0
STR@LB22
        de 50,46,32,68,101,108,101,116,101,32,65,108,108,32,86,111,116,101,63,0
STR@LB23
        de 65,108,108,32,86,111,116,101,32,99,108,101,97,114,101,100,46,0
STR@LB24
        de 65,108,108,32,68,101,108,101,116,101,100,46,0
STR@LB26
        de 69,110,116,101,114,32,73,68,32,35,58,0
STR@LB27
        de 65,100,100,105,110,103,32,73,68,32,35,32,0
STR@LB28
        de 80,117,116,32,89,111,117,114,32,70,105,110,103,101,114,32,49,46,0
STR@LB29
STR@LB32
        de 73,68,32,35,32,48,0
STR@LB30
        de 32,65,100,100,101,100,46,32,70,45,49,0
STR@LB31
        de 80,117,116,32,89,111,117,114,32,70,105,110,103,101,114,32,50,46,0
STR@LB33
        de 32,65,100,100,101,100,46,32,70,45,50,0
STR@LB34
        de 83,111,109,101,116,104,105,110,103,32,87,114,111,110,103,46,46,46,0
STR@LB35
        de 32,70,80,46,32,86,111,116,105,110,103,32,77,97,99,104,105,110,101,32,0
STR@LB36
        de 84,111,116,97,108,32,67,97,110,100,105,100,97,116,101,58,32,48,48,53,0
STR@LB37
        de 65,68,68,32,32,32,32,73,68,115,32,32,32,32,86,111,116,105,110,103,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
