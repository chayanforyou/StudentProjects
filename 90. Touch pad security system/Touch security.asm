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
_Y = 57
t_key = 58
key = 59
password = 60
variable password#0=60,password#1=61,password#2=62,password#3=63
checker = 64
variable checker#0=64,checker#1=65,checker#2=66,checker#3=67
variable checker#4=68,checker#5=69,checker#6=70,checker#7=71
variable checker#8=72,checker#9=73
contact = 74
variable contact#0=74,contact#1=75,contact#2=76,contact#3=77
variable contact#4=78,contact#5=79,contact#6=80,contact#7=81
variable contact#8=82,contact#9=83,contact#10=84
_B#VR1 = 85
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define pad_clk PORTC,0
#define pad_dta PORTC,1
#define motor PORTC,2
#define buzz PORTC,3
#define matched _B#VR1,0
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __LCD_LINES 4
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
LCD@CUR
        clrf 33
        bsf 33,7
CURSOR
        movwf 51
        tstf 51
        skpz
        decf 51,F
        movlw 254
        call CH@SND
        tstf 35
        skpnz
        goto $ + 3
        decfsz 35,W
        goto $ + 3
        movlw 128
        goto $ + 18
        movf 35,W
        xorlw 2
        skpz
        goto $ + 3
        movlw 192
        goto $ + 12
        movf 35,W
        xorlw 3
        skpz
        goto $ + 3
        movlw 148
        goto $ + 6
        movf 35,W
        xorlw 4
        skpz
        goto $ + 3
        movlw 212
        movwf 35
        movf 51,W
        addwf 35,W
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
F2_SOF equ $ ; TOUCH SECURITY.PRP
F2_EOF equ $ ; TOUCH SECURITY.PRP
F1_SOF equ $ ; TOUCH SECURITY.BAS
F1_000026 equ $ ; IN [TOUCH SECURITY.BAS] OUTPUT PAD_CLK : INPUT PAD_DTA
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,0
        bsf TRISC,1
F1_000027 equ $ ; IN [TOUCH SECURITY.BAS] OUTPUT MOTOR : OUTPUT BUZZ
        bcf TRISC,2
        bcf TRISC,3
F1_000028 equ $ ; IN [TOUCH SECURITY.BAS] CLEAR PORTC : HIGH PAD_CLK
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,0
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,0
F1_000039 equ $ ; IN [TOUCH SECURITY.BAS] CLEAR : CLS
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
        f@call LCD@CLS
F1_000041 equ $ ; IN [TOUCH SECURITY.BAS] STR CONTACT = "01715852205"
        movlw 48
        movwf contact#0
        movlw 49
        movwf contact#1
        movlw 55
        movwf contact#2
        movlw 49
        movwf contact#3
        movlw 53
        movwf contact#4
        movlw 56
        movwf contact#5
        movlw 53
        movwf contact#6
        movlw 50
        movwf contact#7
        movwf contact#8
        movlw 48
        movwf contact#9
        movlw 53
        movwf contact#10
F1_000042 equ $ ; IN [TOUCH SECURITY.BAS] STR PASSWORD = "1234"
        movlw 49
        movwf password#0
        movlw 50
        movwf password#1
        movlw 51
        movwf password#2
        movlw 52
        movwf password#3
GSM_init
F1_000045 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "CONTACTING GSM.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000046 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000047 equ $ ; IN [TOUCH SECURITY.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000048 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000049 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000050 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000051 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000052 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000053 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000054 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
F1_000055 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "GSM OK."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000056 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000057 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
home
F1_000060 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "INDUSTRYSECURITY"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000061 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 2,1, "PRESS >> TO OPEN"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000062 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
main
F1_000065 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB GET_KEY
        f@call get_key
F1_000066 equ $ ; IN [TOUCH SECURITY.BAS] IF KEY = "D" THEN GOSUB ENTER_PASS
        movlw 68
        subwf key,W
        set@page BC@LL3
        btfss STATUS,2
        goto BC@LL3
        f@call enter_pass
BC@LL3
F1_000067 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 300
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
F1_000068 equ $ ; IN [TOUCH SECURITY.BAS] GOTO MAIN
        F@JUMP main
enter_pass
F1_000071 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
F1_000072 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "ENTER PASSWORD:"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000073 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000074 equ $ ; IN [TOUCH SECURITY.BAS] FOR Y = 0 TO 3
        clrf _Y
FR@LB5
        movlw 4
        subwf _Y,W
        set@page NX@LB6
        btfsc STATUS,0
        goto NX@LB6
F1_000075 equ $ ; IN [TOUCH SECURITY.BAS] KEY = 0
        clrf key
F1_000076 equ $ ; IN [TOUCH SECURITY.BAS] WHILE KEY = 0
BC@LL7
        movf key,F
        set@page BC@LL8
        btfss STATUS,2
        goto BC@LL8
F1_000077 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB GET_KEY
        f@call get_key
F1_000078 equ $ ; IN [TOUCH SECURITY.BAS] IF KEY = "D" THEN GOSUB HOME
        movlw 68
        subwf key,W
        set@page BC@LL10
        btfss STATUS,2
        goto BC@LL10
        f@call home
BC@LL10
F1_000079 equ $ ; IN [TOUCH SECURITY.BAS] IF KEY = "C" THEN GOSUB CHECKING
        movlw 67
        subwf key,W
        set@page BC@LL12
        btfss STATUS,2
        goto BC@LL12
        f@call checking
BC@LL12
F1_000080 equ $ ; IN [TOUCH SECURITY.BAS] WEND
        F@JUMP BC@LL7
BC@LL8
F1_000081 equ $ ; IN [TOUCH SECURITY.BAS] CHECKER[Y] = KEY
        movf _Y,W
        addlw checker
        movwf FSR
        movf key,W
        movwf INDF
F1_000082 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 2, Y+1, KEY
        movlw 128
        movwf BPFH
        movlw 2
        movwf GEN
        incf _Y,W
        f@call CURSOR
        movf key,W
        f@call PRINT
F1_000083 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
CT@LB7
F1_000084 equ $ ; IN [TOUCH SECURITY.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB5
        btfss STATUS,0
        goto FR@LB5
NX@LB6
F1_000085 equ $ ; IN [TOUCH SECURITY.BAS] REPEAT
BC@LL13
F1_000086 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB GET_KEY
        f@call get_key
BC@LL15
F1_000087 equ $ ; IN [TOUCH SECURITY.BAS] UNTIL KEY = "C"
        movlw 67
        subwf key,W
        set@page BC@LL13
        btfss STATUS,2
        goto BC@LL13
BC@LL14
checking
F1_000089 equ $ ; IN [TOUCH SECURITY.BAS] FOR Y = 0 TO 3
        clrf _Y
FR@LB17
        movlw 4
        subwf _Y,W
        set@page NX@LB18
        btfsc STATUS,0
        goto NX@LB18
F1_000090 equ $ ; IN [TOUCH SECURITY.BAS] MATCHED = 1
        bsf _B#VR1,0
F1_000091 equ $ ; IN [TOUCH SECURITY.BAS] IF CHECKER[Y] != PASSWORD[Y] THEN
        movf _Y,W
        addlw checker
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movf _Y,W
        addlw password
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        set@page BC@LL20
        btfsc STATUS,2
        goto BC@LL20
F1_000092 equ $ ; IN [TOUCH SECURITY.BAS] MATCHED = 0
        bcf _B#VR1,0
F1_000093 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000094 equ $ ; IN [TOUCH SECURITY.BAS] ENDIF
BC@LL20
CT@LB19
F1_000095 equ $ ; IN [TOUCH SECURITY.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB17
        btfss STATUS,0
        goto FR@LB17
NX@LB18
F1_000096 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
F1_000097 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "PASSWORD MATCHED"
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000098 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 2,1, "GATE UNLOCKED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
F1_000099 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB GATE_OPEN
        f@call gate_open
F1_000100 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000101 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB SEND_SMS
        f@call Send_SMS
F1_000102 equ $ ; IN [TOUCH SECURITY.BAS] RETURN
        return
get_key
F1_000105 equ $ ; IN [TOUCH SECURITY.BAS] KEY = 0
        clrf key
F1_000106 equ $ ; IN [TOUCH SECURITY.BAS] T_KEY = 0
        clrf t_key
F1_000107 equ $ ; IN [TOUCH SECURITY.BAS] PAD_CLK = 1
        bsf PORTC,0
F1_000108 equ $ ; IN [TOUCH SECURITY.BAS] FOR X = 1 TO 16
        movlw 1
        movwf _X
FR@LB22
        movlw 17
        subwf _X,W
        set@page NX@LB23
        btfsc STATUS,0
        goto NX@LB23
F1_000109 equ $ ; IN [TOUCH SECURITY.BAS] PAD_CLK = 0
        bcf PORTC,0
F1_000110 equ $ ; IN [TOUCH SECURITY.BAS] IF PAD_DTA = 0 THEN T_KEY = X
        set@page BC@LL25
        btfsc PORTC,1
        goto BC@LL25
        movf _X,W
        movwf t_key
BC@LL25
F1_000111 equ $ ; IN [TOUCH SECURITY.BAS] PAD_CLK = 1
        bsf PORTC,0
CT@LB24
F1_000112 equ $ ; IN [TOUCH SECURITY.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB22
        btfss STATUS,0
        goto FR@LB22
NX@LB23
F1_000113 equ $ ; IN [TOUCH SECURITY.BAS] SELECT T_KEY
F1_000114 equ $ ; IN [TOUCH SECURITY.BAS] CASE 1 : KEY = "1" : BREAK
        movlw 1
        subwf t_key,W
        set@page BC@LL27
        btfss STATUS,2
        goto BC@LL27
ram_bank = 0
        movlw 49
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL27
F1_000115 equ $ ; IN [TOUCH SECURITY.BAS] CASE 2 : KEY = "2" : BREAK
        movlw 2
        subwf t_key,W
        set@page BC@LL30
        btfss STATUS,2
        goto BC@LL30
ram_bank = 0
        movlw 50
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL30
F1_000116 equ $ ; IN [TOUCH SECURITY.BAS] CASE 3 : KEY = "3" : BREAK
        movlw 3
        subwf t_key,W
        set@page BC@LL32
        btfss STATUS,2
        goto BC@LL32
ram_bank = 0
        movlw 51
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL32
F1_000117 equ $ ; IN [TOUCH SECURITY.BAS] CASE 4 : KEY = "4" : BREAK
        movlw 4
        subwf t_key,W
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
ram_bank = 0
        movlw 52
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL34
F1_000118 equ $ ; IN [TOUCH SECURITY.BAS] CASE 5 : KEY = "5" : BREAK
        movlw 5
        subwf t_key,W
        set@page BC@LL36
        btfss STATUS,2
        goto BC@LL36
ram_bank = 0
        movlw 53
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL36
F1_000119 equ $ ; IN [TOUCH SECURITY.BAS] CASE 6 : KEY = "6" : BREAK
        movlw 6
        subwf t_key,W
        set@page BC@LL38
        btfss STATUS,2
        goto BC@LL38
ram_bank = 0
        movlw 54
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL38
F1_000120 equ $ ; IN [TOUCH SECURITY.BAS] CASE 7 : KEY = "7" : BREAK
        movlw 7
        subwf t_key,W
        set@page BC@LL40
        btfss STATUS,2
        goto BC@LL40
ram_bank = 0
        movlw 55
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL40
F1_000121 equ $ ; IN [TOUCH SECURITY.BAS] CASE 8 : KEY = "8" : BREAK
        movlw 8
        subwf t_key,W
        set@page BC@LL42
        btfss STATUS,2
        goto BC@LL42
ram_bank = 0
        movlw 56
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL42
F1_000122 equ $ ; IN [TOUCH SECURITY.BAS] CASE 9 : KEY = "9" : BREAK
        movlw 9
        subwf t_key,W
        set@page BC@LL44
        btfss STATUS,2
        goto BC@LL44
ram_bank = 0
        movlw 57
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL44
F1_000123 equ $ ; IN [TOUCH SECURITY.BAS] CASE 10 : KEY = "0" : BREAK
        movlw 10
        subwf t_key,W
        set@page BC@LL46
        btfss STATUS,2
        goto BC@LL46
ram_bank = 0
        movlw 48
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL46
F1_000124 equ $ ; IN [TOUCH SECURITY.BAS] CASE 11 : KEY = "A" : BREAK
        movlw 11
        subwf t_key,W
        set@page BC@LL48
        btfss STATUS,2
        goto BC@LL48
ram_bank = 0
        movlw 65
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL48
F1_000125 equ $ ; IN [TOUCH SECURITY.BAS] CASE 12 : KEY = "B" : BREAK
        movlw 12
        subwf t_key,W
        set@page BC@LL50
        btfss STATUS,2
        goto BC@LL50
ram_bank = 0
        movlw 66
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL50
F1_000126 equ $ ; IN [TOUCH SECURITY.BAS] CASE 14 : KEY = "C" : BREAK
        movlw 14
        subwf t_key,W
        set@page BC@LL52
        btfss STATUS,2
        goto BC@LL52
ram_bank = 0
        movlw 67
        movwf key
        F@JUMP BC@LL26
        F@JUMP BC@LL26
BC@LL52
F1_000127 equ $ ; IN [TOUCH SECURITY.BAS] CASE 15 : KEY = "D" : BREAK
        movlw 15
        subwf t_key,W
        set@page BC@LL54
        btfss STATUS,2
        goto BC@LL54
ram_bank = 0
        movlw 68
        movwf key
        F@JUMP BC@LL26
F1_000128 equ $ ; IN [TOUCH SECURITY.BAS] CASE ELSE : KEY = 0
        F@JUMP BC@LL56
BC@LL54
        clrf key
F1_000129 equ $ ; IN [TOUCH SECURITY.BAS] ENDSELECT
BC@LL56
BC@LL26
F1_000130 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 100
        movlw 100
        f@call DL@MS
F1_000131 equ $ ; IN [TOUCH SECURITY.BAS] RETURN
        return
Send_SMS
F1_000134 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
F1_000135 equ $ ; IN [TOUCH SECURITY.BAS] IF MATCHED = 0 THEN BUZZ = 1
        set@page BC@LL58
        btfsc _B#VR1,0
        goto BC@LL58
        bsf PORTC,3
BC@LL58
F1_000136 equ $ ; IN [TOUCH SECURITY.BAS] PRINT AT 1,1, "SENDING SMS.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB8)
        movwf GEN4H
        movlw low (STR@LB8)
        f@call C@STROUT
F1_000137 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000138 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000139 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["AT+CMGS="]
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
F1_000140 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000141 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT[34, STR CONTACT, 34,13,10]
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 74
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000142 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000143 equ $ ; IN [TOUCH SECURITY.BAS] IF MATCHED = 1 THEN
        set@page BC@LL62
        btfss _B#VR1,0
        goto BC@LL62
F1_000144 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["ACCESS GRANTED.", $1A, 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        F@JUMP BC@LL63
BC@LL62
F1_000145 equ $ ; IN [TOUCH SECURITY.BAS] ELSE
F1_000146 equ $ ; IN [TOUCH SECURITY.BAS] HSEROUT["SOMEONE TRYING TO OPEN THE DOOR.", $1A, 13, 10]
        movlw 83
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 109
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000147 equ $ ; IN [TOUCH SECURITY.BAS] ENDIF
BC@LL63
F1_000148 equ $ ; IN [TOUCH SECURITY.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000149 equ $ ; IN [TOUCH SECURITY.BAS] BUZZ = 0
        bcf PORTC,3
F1_000150 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB GATE_LOCK
        f@call gate_lock
F1_000151 equ $ ; IN [TOUCH SECURITY.BAS] CLS
        f@call LCD@CLS
F1_000152 equ $ ; IN [TOUCH SECURITY.BAS] GOSUB HOME
        f@call home
gate_lock
F1_000155 equ $ ; IN [TOUCH SECURITY.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB65
        movlw 51
        subwf pos,W
        set@page NX@LB66
        btfsc STATUS,0
        goto NX@LB66
F1_000156 equ $ ; IN [TOUCH SECURITY.BAS] MOTOR = 1
        bsf PORTC,2
F1_000157 equ $ ; IN [TOUCH SECURITY.BAS] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        f@call DLUS@W
F1_000158 equ $ ; IN [TOUCH SECURITY.BAS] MOTOR = 0
        bcf PORTC,2
F1_000159 equ $ ; IN [TOUCH SECURITY.BAS] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        f@call DLUS@W
CT@LB67
F1_000160 equ $ ; IN [TOUCH SECURITY.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB65
        btfss STATUS,0
        goto FR@LB65
NX@LB66
F1_000161 equ $ ; IN [TOUCH SECURITY.BAS] RETURN
        return
gate_open
F1_000164 equ $ ; IN [TOUCH SECURITY.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB68
        movlw 51
        subwf pos,W
        set@page NX@LB69
        btfsc STATUS,0
        goto NX@LB69
F1_000165 equ $ ; IN [TOUCH SECURITY.BAS] MOTOR = 1
        bsf PORTC,2
F1_000166 equ $ ; IN [TOUCH SECURITY.BAS] DELAYUS 2000
        movlw 7
        movwf PP0H
        movlw 208
        f@call DLUS@W
F1_000167 equ $ ; IN [TOUCH SECURITY.BAS] MOTOR = 0
        bcf PORTC,2
F1_000168 equ $ ; IN [TOUCH SECURITY.BAS] DELAYUS 18000
        movlw 70
        movwf PP0H
        movlw 80
        f@call DLUS@W
CT@LB70
F1_000169 equ $ ; IN [TOUCH SECURITY.BAS] NEXT
        movlw 1
        addwf pos,F
        set@page FR@LB68
        btfss STATUS,0
        goto FR@LB68
NX@LB69
F1_000170 equ $ ; IN [TOUCH SECURITY.BAS] RETURN
        return
F1_EOF equ $ ; TOUCH SECURITY.BAS
PB@LB71
        F@JUMP PB@LB71
STR@LB1
        de 67,111,110,116,97,99,116,105,110,103,32,71,83,77,46,46,0
STR@LB2
        de 71,83,77,32,79,75,46,0
STR@LB3
        de 73,110,100,117,115,116,114,121,83,101,99,117,114,105,116,121,0
STR@LB4
        de 80,114,101,115,115,32,62,62,32,116,111,32,111,112,101,110,0
STR@LB5
        de 101,110,116,101,114,32,112,97,115,115,119,111,114,100,58,0
STR@LB6
        de 80,97,115,115,119,111,114,100,32,109,97,116,99,104,101,100,0
STR@LB7
        de 71,97,116,101,32,117,110,108,111,99,107,101,100,46,0
STR@LB8
        de 83,101,110,100,105,110,103,32,83,77,83,46,46,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
