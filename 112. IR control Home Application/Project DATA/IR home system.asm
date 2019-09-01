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
#define XTAL 10
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
#define _SYSTEM_VARIABLE_COUNT 19
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
GENH = 37
GPR = 38
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
PP6H = 49
SP#P9 = 50
_B#VR1 = 51
SonyIn_Word = 52
SonyIn_WordH = 53
Cnt = 54
nCnt = 55
To_cnt = 56
nTo_cnt = 57
temp = 58
#define __SONYIN_PORT PORTC
#define __LCD_DTPORT PORTB
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define Fan PORTC,0
#define TV PORTC,1
#define L1 PORTC,2
#define L2 PORTC,3
#define GIE INTCON,7
#define PEIE INTCON,6
#define INTE INTCON,4
#define INTF INTCON,1
#define INTEDG OPTION_REG,6
#define flag _B#VR1,0
#define fan_f _B#VR1,1
#define Cmd SonyIn_Word
#define SonySystem SonyIn_WordH
#define __XTAL 10
#define __SONYIN_PIN 4
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
proton#code#start
        org 0
        goto proton#main#start
        org 4
        return
T@LEB
        clrf 40
T@LEW
        clrf 42
T@LE
        movwf 41
        movlw 6
T@ST
        movwf 38
        movf 42,W
        subwf 40,W
        skpz
        goto $ + 3
        movf 41,W
        subwf 39,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 38,W
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
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
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
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
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
        bcf PORTB,3
        swapf 45,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 46,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
P@INN
        call C@PIN
P@IN
        movwf 34
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 41
        btfss 39,0
        movwf 41
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 34,W
        xorwf 41,F
        movlw 1
        movwf 39
        clrf 40
        movf 0,W
        andwf 34,W
        xorwf 41,W
        skpz
        return
        incf 39,F
        skpnz
        incfsz 40,F
        goto $ - 8
        return
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
        movlw 228
        call DLUS@W
        goto DLY@P
DL@US
        clrf 40
DLUS@W
        addlw 246
        movwf 39
        comf 40,F
        skpc
        goto $ + 7
        movlw 254
        nop
        addwf 39,F
        skpnc
        goto $ - 3
        addwf 39,F
        nop
        incfsz 40,F
        goto $ - 8
        nop
        btfsc 39,0
        goto $ + 1
        btfsc 39,0
        goto $ + 1
        return
C@PIN
        movwf 47
        movlw PORTB
        btfsc 47,3
        movlw PORTC
        movwf 4
C@BT
        movlw (C@TBL >> 8)
        movwf 10
        movf 47,W
        andlw 7
        addwf 2,F
C@TBL
        retlw 1
        retlw 2
        retlw 4
        retlw 8
        retlw 16
        retlw 32
        retlw 64
        retlw 128
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
M@PY
        movlw 16
        movwf 49
        clrf 40
        clrf 39
        rrf 46,F
        rrf 45,F
        skpc
        goto $ + 7
        movf 41,W
        addwf 39,F
        movf 42,W
        skpnc
        incfsz 42,W
        addwf 40,F
        rrf 40,F
        rrf 39,F
        rrf 44,F
        rrf 43,F
        decfsz 49,F
        goto $ - 15
        movf 43,W
        return
SNY@IN
        clrf 39
        movlw PORTC
        bcf 4,7
        movwf 4
        movlw 16
        call P@IN
        movlw 1
        subwf 40,W
        btfss 3,0
        goto SNYIN@LL7
        btfss 3,2
        goto SNYIN@LB2
        movlw 243
        subwf 39,W
        btfss 3,0
        goto SNYIN@LL7
SNYIN@LB2
        movlw 2
        subwf 40,W
        btfss 3,0
        goto SNYIN@LL6
        btfss 3,2
        goto SNYIN@LL7
        movlw 163
        subwf 39,W
        btfss 3,0
        goto SNYIN@LL6
SNYIN@LL7
        movlw 255
        movwf 40
        movwf 39
        bsf 3,0
        goto I@NT
SNYIN@LL6
        movlw 11
        movwf 38
SNYIN@RPT
        bcf 44,3
        clrf 39
        movlw 16
        call P@IN
        movlw 0
        subwf 40,W
        btfss 3,0
        goto SNYIN@CLRB
        btfss 3,2
        goto SNYIN@LB4
        movlw 224
        subwf 39,W
        btfsc 3,0
SNYIN@LB4
        bsf 44,3
SNYIN@CLRB
        bcf 3,0
        rrf 44,F
        rrf 43,F
        decfsz 38,F
        goto SNYIN@RPT
        movlw 127
        andwf 43,W
        movwf 39
        bcf 3,0
        rlf 43,F
        rlf 44,W
        andlw 31
        movwf 40
        movf 39,W
        bcf 3,0
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        clrf 32
F2_SOF equ $ ; ANTOR
F2_EOF equ $ ; ANTOR
F1_SOF equ $ ; ANTOR
F1_000004 equ $ ; IN [ANTOR] TRISB = $01 : TRISC = $00
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf TRISB
        clrf TRISC
F1_000005 equ $ ; IN [ANTOR] PORTB = $00 : PORTC = $00
        bcf STATUS,5
ram_bank = 0
        clrf PORTB
        clrf PORTC
        bsf INTCON,7
        goto INT@LBL2
INT@LBL1
        btfsc INTCON,7
        return
        goto ZeroCross
INT@LBL2
        call INT@LBL1
F1_000024 equ $ ; IN [ANTOR] GIE = 1 : PEIE = 1 : INTE = 1 : INTF = 0 : INTEDG = 0
        call INT@LBL1
        bsf INTCON,7
        call INT@LBL1
        call INT@LBL1
        bsf INTCON,6
        call INT@LBL1
        call INT@LBL1
        bsf INTCON,4
        call INT@LBL1
        call INT@LBL1
        bcf INTCON,1
        call INT@LBL1
        call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf OPTION_REG,6
        bcf STATUS,5
ram_bank = 0
        call INT@LBL1
F1_000037 equ $ ; IN [ANTOR] NCNT = CNT : NTO_CNT = TO_CNT
        call INT@LBL1
        movf Cnt,W
        movwf nCnt
        call INT@LBL1
        call INT@LBL1
        movf To_cnt,W
        movwf nTo_cnt
        call INT@LBL1
F1_000039 equ $ ; IN [ANTOR] CLS
        call LCD@CLS
Sys_OFF
        call INT@LBL1
F1_000042 equ $ ; IN [ANTOR] FAN = 1 : TV = 1 : L1 = 1 : L2 = 1 : FAN_F = 0
        call INT@LBL1
        bsf PORTC,0
        call INT@LBL1
        call INT@LBL1
        bsf PORTC,1
        call INT@LBL1
        call INT@LBL1
        bsf PORTC,2
        call INT@LBL1
        call INT@LBL1
        bsf PORTC,3
        call INT@LBL1
        call INT@LBL1
        bcf _B#VR1,1
        call INT@LBL1
F1_000043 equ $ ; IN [ANTOR] PRINT AT 1,1, "IRREMOTE CONTROL"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 73
        call PRINT
        movlw 82
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 111
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        movlw 99
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        movlw 116
        call PRINT
        movlw 114
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        call INT@LBL1
F1_000044 equ $ ; IN [ANTOR] PRINT AT 2,1, " SYS_DECTIVATED "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 95
        call PRINT
        movlw 68
        call PRINT
        movlw 101
        call PRINT
        movlw 99
        call PRINT
        movlw 116
        call PRINT
        movlw 105
        call PRINT
        movlw 118
        call PRINT
        movlw 97
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 100
        call PRINT
        movlw 32
        call PRINT
        call INT@LBL1
F1_000045 equ $ ; IN [ANTOR] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
        call INT@LBL1
F1_000046 equ $ ; IN [ANTOR] WHILE 1 = 1
BC@LL1
F1_000047 equ $ ; IN [ANTOR] REPEAT
BC@LL3
        call INT@LBL1
F1_000048 equ $ ; IN [ANTOR] SONYIN_WORD = SONYIN
        call INT@LBL1
        call SNY@IN
        movwf SonyIn_Word
        movf PP0H,W
        movwf SonyIn_WordH
        call INT@LBL1
BC@LL5
F1_000049 equ $ ; IN [ANTOR] UNTIL CMD <> 255
        incf SonyIn_Word,W
        btfsc STATUS,2
        goto BC@LL3
BC@LL4
        call INT@LBL1
F1_000050 equ $ ; IN [ANTOR] IF CMD = 21 THEN GOTO SYS_ON
        movlw 21
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL7
        call INT@LBL1
        goto Sys_ON
BC@LL7
F1_000051 equ $ ; IN [ANTOR] WEND
        goto BC@LL1
BC@LL2
        call INT@LBL1
F1_000052 equ $ ; IN [ANTOR] GOTO SYS_OFF
        goto Sys_OFF
Sys_ON
        call INT@LBL1
F1_000055 equ $ ; IN [ANTOR] CLS : FAN_F = 0
        call LCD@CLS
        call INT@LBL1
        call INT@LBL1
        bcf _B#VR1,1
        call INT@LBL1
F1_000056 equ $ ; IN [ANTOR] PRINT AT 1,1, "SYS_ACTIVATING.."
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 95
        call PRINT
        movlw 65
        call PRINT
        movlw 99
        call PRINT
        movlw 116
        call PRINT
        movlw 105
        call PRINT
        movlw 118
        call PRINT
        movlw 97
        call PRINT
        movlw 116
        call PRINT
        movlw 105
        call PRINT
        movlw 110
        call PRINT
        movlw 103
        call PRINT
        movlw 46
        call PRINT
        call PRINT
        call INT@LBL1
F1_000057 equ $ ; IN [ANTOR] PRINT AT 2,1, "PLEASE WAIT...  "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 80
        call PRINT
        movlw 108
        call PRINT
        movlw 101
        call PRINT
        movlw 97
        call PRINT
        movlw 115
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        movlw 87
        call PRINT
        movlw 97
        call PRINT
        movlw 105
        call PRINT
        movlw 116
        call PRINT
        movlw 46
        call PRINT
        call PRINT
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call INT@LBL1
F1_000058 equ $ ; IN [ANTOR] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
        call INT@LBL1
F1_000059 equ $ ; IN [ANTOR] WHILE 1 = 1
BC@LL8
        call INT@LBL1
F1_000060 equ $ ; IN [ANTOR] GOSUB REMOTE_CHECK
        call Remote_check
        call INT@LBL1
F1_000061 equ $ ; IN [ANTOR] IF CMD = 21 THEN GOTO SYS_OFF
        movlw 21
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL11
        call INT@LBL1
        goto Sys_OFF
BC@LL11
        call INT@LBL1
F1_000062 equ $ ; IN [ANTOR] IF CMD = 56 THEN GOSUB TV_ACTION
        movlw 56
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL13
        call INT@LBL1
        call TV_action
BC@LL13
        call INT@LBL1
F1_000063 equ $ ; IN [ANTOR] IF CMD = 116 THEN GOSUB L1_ACTION
        movlw 116
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL15
        call INT@LBL1
        call L1_action
BC@LL15
        call INT@LBL1
F1_000064 equ $ ; IN [ANTOR] IF CMD = 117 THEN GOSUB L2_ACTION
        movlw 117
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL17
        call INT@LBL1
        call L2_action
BC@LL17
        call INT@LBL1
F1_000065 equ $ ; IN [ANTOR] IF CMD >= 0 AND CMD <= 8 THEN GOSUB FAN_SPEED
        movlw 0
        subwf SonyIn_Word,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf SonyIn_Word,W
        movwf PP0
        movlw 8
        call T@LEB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL19
        call INT@LBL1
        call Fan_speed
BC@LL19
        call INT@LBL1
F1_000066 equ $ ; IN [ANTOR] IF CMD = 9 THEN
        movlw 9
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL21
        call INT@LBL1
F1_000067 equ $ ; IN [ANTOR] FAN = 0
        call INT@LBL1
        bcf PORTC,0
        call INT@LBL1
F1_000068 equ $ ; IN [ANTOR] FAN_F = 0
        call INT@LBL1
        bcf _B#VR1,1
F1_000069 equ $ ; IN [ANTOR] ENDIF
BC@LL21
F1_000070 equ $ ; IN [ANTOR] WEND
        goto BC@LL8
BC@LL9
        call INT@LBL1
F1_000071 equ $ ; IN [ANTOR] GOTO SYS_ON
        goto Sys_ON
TV_action
        call INT@LBL1
F1_000074 equ $ ; IN [ANTOR] TV =~ TV
        call INT@LBL1
        movlw 2
        xorwf PORTC,F
        call INT@LBL1
F1_000075 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
        call INT@LBL1
F1_000076 equ $ ; IN [ANTOR] RETURN
        return
L1_action
        call INT@LBL1
F1_000079 equ $ ; IN [ANTOR] L1 =~ L1
        call INT@LBL1
        movlw 4
        xorwf PORTC,F
        call INT@LBL1
F1_000080 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
        call INT@LBL1
F1_000081 equ $ ; IN [ANTOR] RETURN
        return
L2_action
        call INT@LBL1
F1_000084 equ $ ; IN [ANTOR] L2 =~ L2
        call INT@LBL1
        movlw 8
        xorwf PORTC,F
        call INT@LBL1
F1_000085 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
        call INT@LBL1
F1_000086 equ $ ; IN [ANTOR] RETURN
        return
Fan_speed
        call INT@LBL1
F1_000089 equ $ ; IN [ANTOR] FAN_F = 1
        call INT@LBL1
        bsf _B#VR1,1
        call INT@LBL1
F1_000090 equ $ ; IN [ANTOR] TEMP = CMD + 2
        call INT@LBL1
        movlw 2
        addwf SonyIn_Word,W
        movwf temp
        call INT@LBL1
F1_000091 equ $ ; IN [ANTOR] CNT = TEMP : TO_CNT = 10
        call INT@LBL1
        movf temp,W
        movwf Cnt
        call INT@LBL1
        call INT@LBL1
        movlw 10
        movwf To_cnt
        call INT@LBL1
F1_000092 equ $ ; IN [ANTOR] DELAYMS 100
        movlw 100
        call DL@MS
        call INT@LBL1
F1_000093 equ $ ; IN [ANTOR] RETURN
        return
Remote_check
F1_000096 equ $ ; IN [ANTOR] REPEAT
BC@LL22
        call INT@LBL1
F1_000097 equ $ ; IN [ANTOR] SONYIN_WORD = SONYIN
        call INT@LBL1
        call SNY@IN
        movwf SonyIn_Word
        movf PP0H,W
        movwf SonyIn_WordH
        call INT@LBL1
F1_000098 equ $ ; IN [ANTOR] IF FAN_F = 1 THEN
        btfss _B#VR1,1
        goto BC@LL26
        call INT@LBL1
F1_000099 equ $ ; IN [ANTOR] GOSUB FAN_REGULATION
        call FAN_regulation
        call INT@LBL1
F1_000100 equ $ ; IN [ANTOR] PRINT AT 1,1, "FAN: ", DEC (CNT * 10), "%  "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 70
        call PRINT
        movlw 97
        call PRINT
        movlw 110
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        clrf GEN4H
        clrf PP3H
        movf Cnt,W
        movwf PP3
        clrf PP1H
        movlw 10
        movwf PP1
        call M@PY
        movwf PP2
        call OUT@DEC
        movlw 37
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        goto BC@LL27
BC@LL26
F1_000101 equ $ ; IN [ANTOR] ELSE
        call INT@LBL1
F1_000102 equ $ ; IN [ANTOR] FAN = 0
        call INT@LBL1
        bcf PORTC,0
        call INT@LBL1
F1_000103 equ $ ; IN [ANTOR] PRINT AT 1,1, "FAN OFF   "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 70
        call PRINT
        movlw 97
        call PRINT
        movlw 110
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 102
        call PRINT
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
F1_000104 equ $ ; IN [ANTOR] ENDIF
BC@LL27
        call INT@LBL1
F1_000105 equ $ ; IN [ANTOR] IF TV = 1 THEN
        btfss PORTC,1
        goto BC@LL29
        call INT@LBL1
F1_000106 equ $ ; IN [ANTOR] PRINT AT 1,11, "TV OFF"
        movlw 128
        movwf BPFH
        movlw 138
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 86
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 102
        call PRINT
        call PRINT
        goto BC@LL30
BC@LL29
F1_000107 equ $ ; IN [ANTOR] ELSE
        call INT@LBL1
F1_000108 equ $ ; IN [ANTOR] PRINT AT 1,11, "TV ON "
        movlw 128
        movwf BPFH
        movlw 138
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 86
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 110
        call PRINT
        movlw 32
        call PRINT
F1_000109 equ $ ; IN [ANTOR] ENDIF
BC@LL30
        call INT@LBL1
F1_000110 equ $ ; IN [ANTOR] IF L1 = 1 THEN
        btfss PORTC,2
        goto BC@LL32
        call INT@LBL1
F1_000111 equ $ ; IN [ANTOR] PRINT AT 2,1, "L1 OFF    "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 49
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 102
        call PRINT
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        goto BC@LL33
BC@LL32
F1_000112 equ $ ; IN [ANTOR] ELSE
        call INT@LBL1
F1_000113 equ $ ; IN [ANTOR] PRINT AT 2,1, "L1 ON     "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 49
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 110
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        call PRINT
F1_000114 equ $ ; IN [ANTOR] ENDIF
BC@LL33
        call INT@LBL1
F1_000115 equ $ ; IN [ANTOR] IF L2 = 1 THEN
        btfss PORTC,3
        goto BC@LL35
        call INT@LBL1
F1_000116 equ $ ; IN [ANTOR] PRINT AT 2,11, "L2 OFF"
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 50
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 102
        call PRINT
        call PRINT
        goto BC@LL36
BC@LL35
F1_000117 equ $ ; IN [ANTOR] ELSE
        call INT@LBL1
F1_000118 equ $ ; IN [ANTOR] PRINT AT 2,11, "L2 ON "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 50
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 110
        call PRINT
        movlw 32
        call PRINT
F1_000119 equ $ ; IN [ANTOR] ENDIF
BC@LL36
        call INT@LBL1
BC@LL24
F1_000120 equ $ ; IN [ANTOR] UNTIL CMD <> 255
        incf SonyIn_Word,W
        btfsc STATUS,2
        goto BC@LL22
BC@LL23
        call INT@LBL1
F1_000121 equ $ ; IN [ANTOR] RETURN
        return
FAN_regulation
        call INT@LBL1
F1_000124 equ $ ; IN [ANTOR] IF FLAG = 1 THEN
        btfss _B#VR1,0
        goto BC@LL38
        call INT@LBL1
F1_000125 equ $ ; IN [ANTOR] IF NCNT > 0 THEN
        movf nCnt,F
        btfsc STATUS,2
        goto BC@LL40
        call INT@LBL1
F1_000126 equ $ ; IN [ANTOR] FAN = 0
        call INT@LBL1
        bcf PORTC,0
        call INT@LBL1
F1_000127 equ $ ; IN [ANTOR] DELAYUS 250
        movlw 250
        call DL@US
        call INT@LBL1
F1_000128 equ $ ; IN [ANTOR] FAN = 1
        call INT@LBL1
        bsf PORTC,0
        call INT@LBL1
F1_000129 equ $ ; IN [ANTOR] DEC NCNT
        decf nCnt,F
        goto BC@LL41
BC@LL40
F1_000130 equ $ ; IN [ANTOR] ELSE
        call INT@LBL1
F1_000131 equ $ ; IN [ANTOR] FAN = 0
        call INT@LBL1
        bcf PORTC,0
F1_000132 equ $ ; IN [ANTOR] ENDIF
BC@LL41
        call INT@LBL1
F1_000133 equ $ ; IN [ANTOR] DEC NTO_CNT
        decf nTo_cnt,F
        call INT@LBL1
F1_000134 equ $ ; IN [ANTOR] IF NTO_CNT == 0 THEN
        movf nTo_cnt,F
        btfss STATUS,2
        goto BC@LL43
        call INT@LBL1
F1_000135 equ $ ; IN [ANTOR] NTO_CNT = TO_CNT
        call INT@LBL1
        movf To_cnt,W
        movwf nTo_cnt
        call INT@LBL1
F1_000136 equ $ ; IN [ANTOR] NCNT = CNT
        call INT@LBL1
        movf Cnt,W
        movwf nCnt
F1_000137 equ $ ; IN [ANTOR] ENDIF
BC@LL43
        call INT@LBL1
F1_000138 equ $ ; IN [ANTOR] FLAG = 0
        call INT@LBL1
        bcf _B#VR1,0
F1_000139 equ $ ; IN [ANTOR] ENDIF
BC@LL38
        call INT@LBL1
F1_000140 equ $ ; IN [ANTOR] RETURN
        return
F1_000142 equ $ ; IN [ANTOR] DISABLE
ZeroCross
F1_000144 equ $ ; IN [ANTOR] IF INTF == 1 THEN
        btfss INTCON,1
        goto BC@LL45
F1_000145 equ $ ; IN [ANTOR] FLAG = 1
        bsf _B#VR1,0
F1_000146 equ $ ; IN [ANTOR] INTF = 0
        bcf INTCON,1
F1_000147 equ $ ; IN [ANTOR] ENDIF
BC@LL45
F1_000148 equ $ ; IN [ANTOR] RESUME
        retfie
F1_000149 equ $ ; IN [ANTOR] ENABLE
F1_EOF equ $ ; ANTOR
PB@LB47
        call INT@LBL1
        goto PB@LB47
__EOF
__config HS_OSC&WDT_OFF&PWRTE_OFF&BODEN_OFF&CP_ALL
        end
