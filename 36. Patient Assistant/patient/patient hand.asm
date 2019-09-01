;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16C72, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
ADCON1 equ 0X009F
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=3
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
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
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
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
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
PCFG2=2
PCFG1=1
PCFG0=0
  __MAXRAM 0XBF
  __BADRAM 0X08-0X09, 0X0D, 0X18-0X1D
  __BADRAM 0X88-0X89, 0X8D, 0X8F-0X91, 0X95-0X9E
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X00CF
CP_75 equ 0X15DF
CP_50 equ 0X2AEF
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
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16C72 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 128
#define _RAM_END 0X0080
#define _MAXMEM 2048
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 1
#define _BANKS 2
#define RAM_BANKS 2
#define _USART 0
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00BF
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
else
if(PDEST > $)
else
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
else
if(PDEST > $)
else
endif
endif
        goto PDEST
        endm
set@page macro PDEST
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
GEN = 34
GEN2 = 35
GEN2H = 36
GEN4 = 37
GEN4H = 38
GENH = 39
GPR = 40
PP0 = 41
PP0H = 42
PP1 = 43
PP1H = 44
PP2 = 45
PP2H = 46
PP3 = 47
PP3H = 48
PP4 = 49
PP5 = 50
PP7 = 51
PP7H = 52
READAX = 53
READAXH = 54
READAY = 55
READAYH = 56
READAZ = 57
READAZH = 58
READX = 59
READXH = 60
READY = 61
READYH = 62
READZ = 63
READZH = 64
READT = 65
READTH = 66
READT1 = 67
READT1H = 68
#define __LCD_DTPORT PORTB
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define SDA PORTC,6
#define SCL PORTC,7
#define __XTAL 20
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_INTERFACE 4
#define W_DATA 208
#define R_DATA 209
#define PWR_M1 107
#define PWR_M2 108
#define CONF_R 26
#define G_CONF 27
#define A_CONF 28
#define XA_MSB 59
#define XA_LSB 60
#define YA_MSB 61
#define YA_LSB 62
#define ZA_MSB 63
#define ZA_LSB 64
#define TEMP_M 65
#define TEMP_L 66
#define XG_MSB 67
#define XG_LSB 68
#define YG_MSB 69
#define YG_LSB 70
#define ZG_MSB 71
#define ZG_LSB 72
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
        movwf 42
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 50
        movlw 254
        call CH@SND
        movf 50,W
        goto CH@SND
OUT@SDEC
        call OUT@SIGN
OUT@DEC
        bcf 32,3
        movf 38,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 37
        movlw 39
        movwf 44
        movlw 16
        call D@DIG
        movlw 3
        movwf 44
        movlw 232
        call D@DIG
        clrf 44
        movlw 100
        call D@DIG
        clrf 44
        movlw 10
        call D@DIG
        movf 45,W
        goto SEND@IT
D@DIG
        movwf 43
        movf 46,W
        movwf 42
        movf 45,W
        movwf 41
        call D@VD
        movf 41,W
SEND@IT
        movwf 41
        decf 37,F
        skpnz
        bcf 32,3
        movf 38,W
        skpnz
        goto $ + 4
        subwf 37,W
        skpnc
        goto EX@SEND@IT
        movf 41,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
OUT@SIGN
        btfss 46,7
        return
        movf 45,W
        iorwf 46,W
        skpnz
        return
        comf 45,F
        comf 46,F
        incf 45,F
        skpnz
        incf 46,F
        movlw 45
        goto CH@SND
PRINT
        movwf 48
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 48,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 42
        movlw 128
        call DLUS@W
        movlw 51
        movwf 47
        call PR@LP
        movlw 19
        movwf 42
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 47
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 48,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 47
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 42
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
        movf 47,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 47,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 48,W
        goto I@NT
I2CIN2
        bsf 32,4
        btfss 32,4
I2CIN
        bcf 32,4
        btfsc 32,5
        goto I2C@II
        bsf 32,5
        call I2C@STR
        btfsc 3,0
        goto I2C@STP
I2C@II
        movlw 8
        movwf 44
I2CIN@LP
        call I2C@GB
        rlf 43,F
        decfsz 44,F
        goto I2CIN@LP
        btfss 32,4
        call I2C@DL
        call I2C@CH
        call I2C@CL
        btfsc 32,4
        call I2C@STP
        call I2C@DH
        movf 43,W
        bcf 3,0
        goto I@NT
I2COUT2
        bsf 32,4
        btfss 32,4
I2COUT
        bcf 32,4
        btfsc 32,6
        goto I2C@OUTC
        andlw 254
        movwf 40
        bsf 32,6
        bcf 3,0
        goto I@NT
I2C@OUTC
        btfsc 32,7
        goto I2COUT@I
        movwf 47
        bsf 32,7
        call I2C@STR
        btfsc 3,0
        goto I2C@STP
        movf 47,W
I2COUT@I
        call I2C@OUTB
        btfsc 3,0
        goto I2C@STP
        btfss 32,4
        goto I@NT
I2C@STP
        call I2C@DL
        call I2C@CH
        bcf 32,6
        bcf 32,7
        bcf 32,5
I2C@DH
        movf 34,W
        movwf 4
        movf 39,W
I2C@H
        bsf 4,7
        iorwf 0,F
        goto I2C@LH
I2C@DL
        movf 34,W
        movwf 4
        comf 39,W
I2C@L
        andwf 0,F
        bsf 4,7
        andwf 0,F
I2C@LH
        return
I2C@STR
        call I2C@DH
        call I2C@CH
        call I2C@DL
        call I2C@CL
        movf 40,W
        btfsc 32,5
        iorlw 1
I2C@OUTB
        movwf 43
        movlw 8
        movwf 44
I2COUT@LP
        rlf 43,F
        btfsc 3,0
        call I2C@DH
        btfss 3,0
        call I2C@DL
        call I2C@CH
        call I2C@CL
        decfsz 44,F
        goto I2COUT@LP
        call I2C@DH
I2C@GB
        call I2C@CH
        movf 34,W
        movwf 4
        movf 39,W
        andwf 0,W
        addlw 255
I2C@CL
        movf 35,W
        movwf 4
        comf 36,W
        goto I2C@L
I2C@CH
        movf 35,W
        movwf 4
I2C@HD
        movf 36,W
        goto I2C@H
CH@SND
        btfsc 33,7
        goto PRINT
        return
DL@MS
        clrf 44
DLY@W
        movwf 43
DLY@P
        movlw 255
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        movlw 3
        movwf 42
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 42
DLUS@W
        addlw 252
        movwf 41
        comf 42,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 41,F
        skpnc
        goto $ - 3
        addwf 41,F
        nop
        incfsz 42,F
        goto $ - 8
        return
D@VD
        clrf 46
        clrf 45
D@VD2
        movlw 16
        movwf 47
        rlf 42,W
        rlf 45,F
        rlf 46,F
        movf 43,W
        subwf 45,F
        movf 44,W
        skpc
        incfsz 44,W
        subwf 46,F
        skpnc
        goto $ + 8
        movf 43,W
        addwf 45,F
        movf 44,W
        skpnc
        incfsz 44,W
        addwf 46,F
        bcf 3,0
        rlf 41,F
        rlf 42,F
        decfsz 47,F
        goto $ - 21
        movf 41,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        clrf 32
F2_SOF equ $ ; PATIENT HAND.PRP
F2_EOF equ $ ; PATIENT HAND.PRP
F1_SOF equ $ ; PATIENT HAND.BAS
F1_000008 equ $ ; IN [PATIENT HAND.BAS] CLS
        call LCD@CLS
F1_000044 equ $ ; IN [PATIENT HAND.BAS] I2COUT SDA,SCL,W_DATA,PWR_M1,[%10000000]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 208
        call I2COUT
        movlw 107
        call I2COUT
        movlw 128
        call I2COUT2
F1_000045 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000046 equ $ ; IN [PATIENT HAND.BAS] I2COUT SDA,SCL,W_DATA,PWR_M1,[%00000000]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 208
        call I2COUT
        movlw 107
        call I2COUT
        movlw 0
        call I2COUT2
F1_000047 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000048 equ $ ; IN [PATIENT HAND.BAS] I2COUT SDA,SCL,W_DATA,CONF_R,[%00000001]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 208
        call I2COUT
        movlw 26
        call I2COUT
        movlw 1
        call I2COUT2
F1_000049 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000050 equ $ ; IN [PATIENT HAND.BAS] I2COUT SDA,SCL,W_DATA,G_CONF,[%00000000]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 208
        call I2COUT
        movlw 27
        call I2COUT
        movlw 0
        call I2COUT2
F1_000051 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000052 equ $ ; IN [PATIENT HAND.BAS] I2COUT SDA,SCL,W_DATA,A_CONF,[%00010000]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 208
        call I2COUT
        movlw 28
        call I2COUT
        movlw 16
        call I2COUT2
F1_000053 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
READI2C
F1_000056 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,XA_MSB,[READAX.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 59
        call I2COUT
        call I2CIN2
        movwf READAXH
F1_000057 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,XA_LSB,[READAX.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 60
        call I2COUT
        call I2CIN2
        movwf READAX
F1_000058 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,YA_MSB,[READAY.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 61
        call I2COUT
        call I2CIN2
        movwf READAYH
F1_000059 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,YA_LSB,[READAY.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 62
        call I2COUT
        call I2CIN2
        movwf READAY
F1_000060 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,ZA_MSB,[READAZ.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 63
        call I2COUT
        call I2CIN2
        movwf READAZH
F1_000061 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,ZA_LSB,[READAZ.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 64
        call I2COUT
        call I2CIN2
        movwf READAZ
F1_000062 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,TEMP_M,[READT.HIGHBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 65
        call I2COUT
        call I2CIN2
        movwf READTH
F1_000063 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,TEMP_L,[READT.LOWBYTE  ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 66
        call I2COUT
        call I2CIN2
        movwf READT
F1_000064 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,XG_MSB,[READX.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 67
        call I2COUT
        call I2CIN2
        movwf READXH
F1_000065 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,XG_LSB,[READX.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 68
        call I2COUT
        call I2CIN2
        movwf READX
F1_000066 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,YG_MSB,[READY.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 69
        call I2COUT
        call I2CIN2
        movwf READYH
F1_000067 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,YG_LSB,[READY.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 70
        call I2COUT
        call I2CIN2
        movwf READY
F1_000068 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,ZG_MSB,[READZ.HIGHBYTE]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 71
        call I2COUT
        call I2CIN2
        movwf READZH
F1_000069 equ $ ; IN [PATIENT HAND.BAS] I2CIN SDA,SCL,R_DATA,ZG_LSB,[READZ.LOWBYTE ]
        movlw PORTC
        movwf GEN
        movlw 64
        movwf GENH
        movlw PORTC
        movwf GEN2
        movlw 128
        movwf GEN2H
        movlw 209
        call I2COUT
        movlw 72
        call I2COUT
        call I2CIN2
        movwf READZ
F1_000070 equ $ ; IN [PATIENT HAND.BAS] READT1 = (READT / 340 + 37)-192
        movf READTH,W
        movwf PP7H
        movf READT,W
        movwf PP7
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        movlw 1
        movwf PP1H
        movlw 84
        movwf PP1
        call D@VD
        movwf PP7
        movf PP0H,W
        movwf PP7H
        movlw 37
        addwf PP7,F
        btfsc STATUS,0
        incf PP7H,F
        movf PP7H,W
        movwf READT1H
        movlw 192
        subwf PP7,W
        movwf READT1
        btfss STATUS,0
        decf READT1H,F
F1_000071 equ $ ; IN [PATIENT HAND.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000072 equ $ ; IN [PATIENT HAND.BAS] PRINT AT 1,1, "X=",SDEC READAX,"     "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 88
        call PRINT
        movlw 61
        call PRINT
        clrf GEN4H
        movf READAXH,W
        movwf PP2H
        movf READAX,W
        movwf PP2
        call OUT@SDEC
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        call PRINT
F1_000073 equ $ ; IN [PATIENT HAND.BAS] PRINT AT 1,9, "Y=",SDEC READAY,"     "
        movlw 128
        movwf BPFH
        movlw 136
        call LCD@CRS
        movlw 89
        call PRINT
        movlw 61
        call PRINT
        clrf GEN4H
        movf READAYH,W
        movwf PP2H
        movf READAY,W
        movwf PP2
        call OUT@SDEC
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        call PRINT
F1_000074 equ $ ; IN [PATIENT HAND.BAS] PRINT AT 2,1, "Z=",SDEC READAZ,"     "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 90
        call PRINT
        movlw 61
        call PRINT
        clrf GEN4H
        movf READAZH,W
        movwf PP2H
        movf READAZ,W
        movwf PP2
        call OUT@SDEC
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        call PRINT
F1_000075 equ $ ; IN [PATIENT HAND.BAS] PRINT AT 2,9, "T=",SDEC READT1,"     "
        movlw 128
        movwf BPFH
        movlw 200
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 61
        call PRINT
        clrf GEN4H
        movf READT1H,W
        movwf PP2H
        movf READT1,W
        movwf PP2
        call OUT@SDEC
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        call PRINT
F1_000076 equ $ ; IN [PATIENT HAND.BAS] GOTO READI2C
        goto READI2C
F1_EOF equ $ ; PATIENT HAND.BAS
PB@LB2
        goto PB@LB2
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
