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
#define _SYSTEM_VARIABLE_COUNT 20
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
GEN4 = 35
GEN4H = 36
GPR = 37
PP0 = 38
PP0H = 39
PP1 = 40
PP1H = 41
PP2 = 42
PP2H = 43
PP3 = 44
PP3H = 45
PP4 = 46
PP5 = 47
PP6H = 48
PP7 = 49
PP7H = 50
SP#P9 = 51
smoke = 52
RED = 53
BLUE = 54
GREEN = 55
freq = 56
freqH = 57
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define fire PORTA,5
#define noise PORTA,2
#define buzz PORTC,4
#define color_S0 PORTC,1
#define color_S1 PORTC,0
#define color_S2 PORTC,5
#define color_S3 PORTC,2
#define color_out PORTC,3
#define color_sw PORTB,0
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __LCD_LINES 4
proton#code#start
        org 0
        goto proton#main#start
T@GTB
        clrf 39
T@GTW
        clrf 41
T@GT
        movwf 40
        movlw 1
T@ST
        movwf 37
        movf 41,W
        subwf 39,W
        skpz
        goto $ + 3
        movf 40,W
        subwf 38,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 37,W
        skpz
        movlw 1
        goto I@NT
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 39
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 47
        movlw 254
        call CH@SND
        movf 47,W
        goto CH@SND
OUT@DECB
        clrf 36
OUT@DECC
        movwf 42
        clrf 43
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
        movlw 39
        movwf 41
        movlw 16
        call D@DIG
        movlw 3
        movwf 41
        movlw 232
        call D@DIG
        clrf 41
        movlw 100
        call D@DIG
        clrf 41
        movlw 10
        call D@DIG
        movf 42,W
        goto SEND@IT
D@DIG
        movwf 40
        movf 43,W
        movwf 39
        movf 42,W
        movwf 38
        call D@VD
        movf 38,W
SEND@IT
        movwf 38
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 38,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 45
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 45,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 39
        movlw 128
        call DLUS@W
        movlw 51
        movwf 44
        call PR@LP
        movlw 19
        movwf 39
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 44
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 45,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 44
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 39
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
        movf 44,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 44,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 45,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
P@IN
        movwf 34
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 40
        btfss 38,0
        movwf 40
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 34,W
        xorwf 40,F
        movlw 1
        movwf 38
        clrf 39
        movf 0,W
        andwf 34,W
        xorwf 40,W
        skpz
        return
        incf 38,F
        skpnz
        incfsz 39,F
        goto $ - 8
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 44
        rlf 44,F
        rlf 44,F
        rlf 44,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 50
        movf 30,W
        movwf 49
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 41
DLY@W
        movwf 40
DLY@P
        movlw 255
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 39
DLUS@W
        addlw 252
        movwf 38
        comf 39,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 38,F
        skpnc
        goto $ - 3
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 8
        return
D@VD
        clrf 43
        clrf 42
D@VD2
        movlw 16
        movwf 44
        rlf 39,W
        rlf 42,F
        rlf 43,F
        movf 40,W
        subwf 42,F
        movf 41,W
        skpc
        incfsz 41,W
        subwf 43,F
        skpnc
        goto $ + 8
        movf 40,W
        addwf 42,F
        movf 41,W
        skpnc
        incfsz 41,W
        addwf 43,F
        bcf 3,0
        rlf 38,F
        rlf 39,F
        decfsz 44,F
        goto $ - 21
        movf 38,W
        return
M@PY
        movlw 16
        movwf 48
        clrf 39
        clrf 38
        rrf 45,F
        rrf 44,F
        skpc
        goto $ + 7
        movf 40,W
        addwf 38,F
        movf 41,W
        skpnc
        incfsz 41,W
        addwf 39,F
        rrf 39,F
        rrf 38,F
        rrf 43,F
        rrf 42,F
        decfsz 48,F
        goto $ - 15
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
        clrf 32
F2_SOF equ $ ; WEATHER.PRP
F2_EOF equ $ ; WEATHER.PRP
F1_SOF equ $ ; WEATHER.BAS
F1_000017 equ $ ; IN [WEATHER.BAS] ADCON1 = $04
        movlw 4
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000028 equ $ ; IN [WEATHER.BAS] INPUT COLOR_SW
        bsf TRISB,0
F1_000029 equ $ ; IN [WEATHER.BAS] OUTPUT COLOR_S0 : OUTPUT COLOR_S1
        bcf TRISC,1
        bcf TRISC,0
F1_000030 equ $ ; IN [WEATHER.BAS] OUTPUT COLOR_S2 : OUTPUT COLOR_S3
        bcf TRISC,5
        bcf TRISC,2
F1_000031 equ $ ; IN [WEATHER.BAS] INPUT COLOR_OUT : INPUT NOISE
        bsf TRISC,3
        bsf TRISA,2
F1_000032 equ $ ; IN [WEATHER.BAS] OUTPUT BUZZ : INPUT FIRE
        bcf TRISC,4
        bsf TRISA,5
F1_000040 equ $ ; IN [WEATHER.BAS] CLEAR : CLS
        movlw 32
        movwf FSR
        movlw 96
        bcf STATUS,5
ram_bank = 0
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
        call LCD@CLS
F1_000042 equ $ ; IN [WEATHER.BAS] COLOR_S0 = 1
        bsf PORTC,1
F1_000043 equ $ ; IN [WEATHER.BAS] COLOR_S1 = 0
        bcf PORTC,0
F1_000045 equ $ ; IN [WEATHER.BAS] PRINT $FE, $40, 0,17,10,4,10,17,0,0
        movlw 254
        call PRINT
        movlw 64
        call PRINT
        movlw 0
        call PRINT
        movlw 17
        call PRINT
        movlw 10
        call PRINT
        movlw 4
        call PRINT
        movlw 10
        call PRINT
        movlw 17
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
F1_000046 equ $ ; IN [WEATHER.BAS] PRINT $FE, $48, 1,2,20,9,2,20,8,0
        movlw 254
        call PRINT
        movlw 72
        call PRINT
        movlw 1
        call PRINT
        movlw 2
        call PRINT
        movlw 20
        call PRINT
        movlw 9
        call PRINT
        movlw 2
        call PRINT
        movlw 20
        call PRINT
        movlw 8
        call PRINT
        movlw 0
        call PRINT
F1_000047 equ $ ; IN [WEATHER.BAS] PRINT $FE, $50, 1,3,5,9,9,11,27,24
        movlw 254
        call PRINT
        movlw 80
        call PRINT
        movlw 1
        call PRINT
        movlw 3
        call PRINT
        movlw 5
        call PRINT
        movlw 9
        call PRINT
        movlw 9
        call PRINT
        movlw 11
        call PRINT
        movlw 27
        call PRINT
        movlw 24
        call PRINT
F1_000048 equ $ ; IN [WEATHER.BAS] PRINT $FE, $58, 4,4,10,10,17,17,17,14
        movlw 254
        call PRINT
        movlw 88
        call PRINT
        movlw 4
        call PRINT
        movlw 4
        call PRINT
        movlw 10
        call PRINT
        movlw 10
        call PRINT
        movlw 17
        call PRINT
        movlw 17
        call PRINT
        movlw 17
        call PRINT
        movlw 14
        call PRINT
F1_000049 equ $ ; IN [WEATHER.BAS] PRINT $FE, $60, 9,18,9,18,9,0,29,29
        movlw 254
        call PRINT
        movlw 96
        call PRINT
        movlw 9
        call PRINT
        movlw 18
        call PRINT
        movlw 9
        call PRINT
        movlw 18
        call PRINT
        movlw 9
        call PRINT
        movlw 0
        call PRINT
        movlw 29
        call PRINT
        movlw 29
        call PRINT
main
F1_000053 equ $ ; IN [WEATHER.BAS] SMOKE = ADIN 0
        movlw 0
        call RD@AD
        movwf smoke
F1_000054 equ $ ; IN [WEATHER.BAS] IF COLOR_SW = 1 THEN
        btfss PORTB,0
        goto BC@LL2
F1_000055 equ $ ; IN [WEATHER.BAS] GOSUB COLOR_SENSE
        call color_sense
        goto BC@LL3
BC@LL2
F1_000056 equ $ ; IN [WEATHER.BAS] ELSE
F1_000057 equ $ ; IN [WEATHER.BAS] PRINT AT 1,1, "COLOR: NONE "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 111
        call PRINT
        movlw 114
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 78
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
        movlw 69
        call PRINT
        movlw 32
        call PRINT
F1_000058 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL3
F1_000059 equ $ ; IN [WEATHER.BAS] PRINT AT 2,1, "SMOKE: ", DEC3 SMOKE
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 109
        call PRINT
        movlw 111
        call PRINT
        movlw 107
        call PRINT
        movlw 101
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf smoke,W
        call OUT@DECC
F1_000060 equ $ ; IN [WEATHER.BAS] PRINT AT 1,14, 3, ":"
        movlw 128
        movwf BPFH
        movlw 141
        call LCD@CRS
        movlw 3
        call PRINT
        movlw 58
        call PRINT
F1_000061 equ $ ; IN [WEATHER.BAS] PRINT AT 2,14, 2, ":"
        movlw 128
        movwf BPFH
        movlw 205
        call LCD@CRS
        movlw 2
        call PRINT
        movlw 58
        call PRINT
F1_000063 equ $ ; IN [WEATHER.BAS] IF FIRE = 0 THEN
        btfsc PORTA,5
        goto BC@LL5
F1_000064 equ $ ; IN [WEATHER.BAS] PRINT AT 1,16, 1
        movlw 128
        movwf BPFH
        movlw 143
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL6
BC@LL5
F1_000065 equ $ ; IN [WEATHER.BAS] ELSE
F1_000066 equ $ ; IN [WEATHER.BAS] PRINT AT 1,16, 0
        movlw 128
        movwf BPFH
        movlw 143
        call LCD@CRS
        movlw 0
        call PRINT
F1_000067 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL6
F1_000068 equ $ ; IN [WEATHER.BAS] IF NOISE = 0 THEN
        btfsc PORTA,2
        goto BC@LL8
F1_000069 equ $ ; IN [WEATHER.BAS] PRINT AT 2,16, 1
        movlw 128
        movwf BPFH
        movlw 207
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL9
BC@LL8
F1_000070 equ $ ; IN [WEATHER.BAS] ELSE
F1_000071 equ $ ; IN [WEATHER.BAS] PRINT AT 2,16, 0
        movlw 128
        movwf BPFH
        movlw 207
        call LCD@CRS
        movlw 0
        call PRINT
F1_000072 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL9
F1_000073 equ $ ; IN [WEATHER.BAS] GOSUB ALARM
        call alarm
F1_000074 equ $ ; IN [WEATHER.BAS] GOTO MAIN
        goto main
alarm
F1_000077 equ $ ; IN [WEATHER.BAS] IF SMOKE > 100 THEN
        movlw 101
        subwf smoke,W
        btfss STATUS,0
        goto BC@LL11
F1_000078 equ $ ; IN [WEATHER.BAS] BUZZ = 1
        bsf PORTC,4
F1_000079 equ $ ; IN [WEATHER.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000080 equ $ ; IN [WEATHER.BAS] BUZZ = 0
        bcf PORTC,4
F1_000081 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL11
F1_000082 equ $ ; IN [WEATHER.BAS] IF NOISE = 0 THEN
        btfsc PORTA,2
        goto BC@LL13
F1_000083 equ $ ; IN [WEATHER.BAS] BUZZ = 1
        bsf PORTC,4
F1_000084 equ $ ; IN [WEATHER.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000085 equ $ ; IN [WEATHER.BAS] BUZZ = 0
        bcf PORTC,4
F1_000086 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL13
F1_000087 equ $ ; IN [WEATHER.BAS] IF FIRE = 0 THEN
        btfsc PORTA,5
        goto BC@LL15
F1_000088 equ $ ; IN [WEATHER.BAS] BUZZ = 1
        bsf PORTC,4
F1_000089 equ $ ; IN [WEATHER.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000090 equ $ ; IN [WEATHER.BAS] BUZZ = 0
        bcf PORTC,4
F1_000091 equ $ ; IN [WEATHER.BAS] ENDIF
BC@LL15
F1_000092 equ $ ; IN [WEATHER.BAS] RETURN
        return
color_sense
F1_000095 equ $ ; IN [WEATHER.BAS] COLOR_S2 = 0
        bcf PORTC,5
F1_000096 equ $ ; IN [WEATHER.BAS] COLOR_S3 = 0
        bcf PORTC,2
F1_000097 equ $ ; IN [WEATHER.BAS] FREQ = PULSEIN COLOR_OUT, LOW
        clrf PP0
        movlw 7
        movwf FSR
        movlw 8
        call P@IN
        movf PP0H,W
        movwf freqH
        movf PP0,W
        movwf freq
F1_000098 equ $ ; IN [WEATHER.BAS] GREEN = (FREQ * 255) / 50
        movf freqH,W
        movwf PP3H
        movf freq,W
        movwf PP3
        clrf PP1H
        movlw 255
        movwf PP1
        call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 50
        movwf PP1
        call D@VD
        movwf GREEN
F1_000099 equ $ ; IN [WEATHER.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000100 equ $ ; IN [WEATHER.BAS] COLOR_S2 = 1
        bsf PORTC,5
F1_000101 equ $ ; IN [WEATHER.BAS] COLOR_S3 = 1
        bsf PORTC,2
F1_000102 equ $ ; IN [WEATHER.BAS] FREQ = PULSEIN COLOR_OUT, LOW
        clrf PP0
        movlw 7
        movwf FSR
        movlw 8
        call P@IN
        movf PP0H,W
        movwf freqH
        movf PP0,W
        movwf freq
F1_000103 equ $ ; IN [WEATHER.BAS] RED = (FREQ * 255) / 50
        movf freqH,W
        movwf PP3H
        movf freq,W
        movwf PP3
        clrf PP1H
        movlw 255
        movwf PP1
        call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 50
        movwf PP1
        call D@VD
        movwf RED
F1_000104 equ $ ; IN [WEATHER.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000105 equ $ ; IN [WEATHER.BAS] COLOR_S2 = 0
        bcf PORTC,5
F1_000106 equ $ ; IN [WEATHER.BAS] COLOR_S3 = 1
        bsf PORTC,2
F1_000107 equ $ ; IN [WEATHER.BAS] FREQ = PULSEIN COLOR_OUT, LOW
        clrf PP0
        movlw 7
        movwf FSR
        movlw 8
        call P@IN
        movf PP0H,W
        movwf freqH
        movf PP0,W
        movwf freq
F1_000108 equ $ ; IN [WEATHER.BAS] BLUE = (FREQ * 255) / 50
        movf freqH,W
        movwf PP3H
        movf freq,W
        movwf PP3
        clrf PP1H
        movlw 255
        movwf PP1
        call M@PY
        movwf PP7
        movf PP2H,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 50
        movwf PP1
        call D@VD
        movwf BLUE
F1_000109 equ $ ; IN [WEATHER.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000111 equ $ ; IN [WEATHER.BAS] IF RED > BLUE AND RED > GREEN THEN PRINT AT 1,1, "COLOR: RED  "
        movf RED,W
        movwf PP0
        movf BLUE,W
        call T@GTB
        movwf SP#P9
        movf RED,W
        movwf PP0
        movf GREEN,W
        call T@GTB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL17
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 111
        call PRINT
        movlw 114
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 82
        call PRINT
        movlw 69
        call PRINT
        movlw 68
        call PRINT
        movlw 32
        call PRINT
        call PRINT
BC@LL17
F1_000112 equ $ ; IN [WEATHER.BAS] IF BLUE > RED AND BLUE > GREEN THEN PRINT AT 1,1, "COLOR: BLUE "
        movf BLUE,W
        movwf PP0
        movf RED,W
        call T@GTB
        movwf SP#P9
        movf BLUE,W
        movwf PP0
        movf GREEN,W
        call T@GTB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL19
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 111
        call PRINT
        movlw 114
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 66
        call PRINT
        movlw 76
        call PRINT
        movlw 85
        call PRINT
        movlw 69
        call PRINT
        movlw 32
        call PRINT
BC@LL19
F1_000113 equ $ ; IN [WEATHER.BAS] IF GREEN > RED AND GREEN > BLUE THEN PRINT AT 1,1, "COLOR: GREEN"
        movf GREEN,W
        movwf PP0
        movf RED,W
        call T@GTB
        movwf SP#P9
        movf GREEN,W
        movwf PP0
        movf BLUE,W
        call T@GTB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL21
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 111
        call PRINT
        movlw 114
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 71
        call PRINT
        movlw 82
        call PRINT
        movlw 69
        call PRINT
        call PRINT
        movlw 78
        call PRINT
BC@LL21
F1_000114 equ $ ; IN [WEATHER.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000115 equ $ ; IN [WEATHER.BAS] RETURN
        return
F1_EOF equ $ ; WEATHER.BAS
PB@LB23
        goto PB@LB23
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
