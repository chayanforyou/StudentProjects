;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F676, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
CMCON equ 0X0019
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PCON equ 0X008E
OSCCAL equ 0X0090
ANSEL equ 0X0091
WPU equ 0X0095
WPUA equ 0X0095
IOC equ 0X0096
IOCA equ 0X0096
VRCON equ 0X0099
EEDATL equ 0X009A
EEDATA equ 0X009A
EEDAT equ 0X009A
EEADR equ 0X009B
EECON1 equ 0X009C
EECON2 equ 0X009D
ADRESL equ 0X009E
ADCON1 equ 0X009F
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
RAIE=3
T0IF=2
INTF=1
RAIF=0
EEIF=7
ADIF=6
CMIF=3
T1IF=0
TMR1IF=0
TMR1GE=6
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
TMR1CS=1
TMR1ON=0
COUT=6
CINV=4
CIS=3
CM2=2
CM1=1
CM0=0
ADFM=7
VCFG=6
CHS2=4
CHS1=3
CHS0=2
GO=1
NOT_DONE=1
GO_DONE=1
PP_GO_DONE=1
ADON=0
NOT_GPPU=7
NOT_RAPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
EEIE=7
ADIE=6
CMIE=3
T1IE=0
TMR1IE=0
NOT_POR=1
NOT_BOD=0
CAL5=7
CAL4=6
CAL3=5
CAL2=4
CAL1=3
CAL0=2
ANS7=7
ANS6=6
ANS5=5
ANS4=4
ANS3=3
ANS2=2
ANS1=1
ANS0=0
VREN=7
VRR=5
VR3=3
VR2=2
VR1=1
VR0=0
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
ADCS2=6
ADCS1=5
ADCS0=4
  __MAXRAM 0XFF
  __BADRAM 0X06, 0X08-0X09, 0X0D, 0X11-0X18, 0X1A-0X1D, 0X60-0X7F
  __BADRAM 0X86, 0X88-0X89, 0X8D, 0X8F, 0X92-0X94, 0X97-0X98, 0XE0-0XFF
CPD_ON equ 0X3EFF
CPD_OFF equ 0X3FFF
CP_ON equ 0X3F7F
CP_OFF equ 0X3FFF
BODEN equ 0X3FFF
BODEN_OFF equ 0X3FBF
MCLRE_ON equ 0X3FFF
MCLRE_OFF equ 0X3FDF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FEF
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FF7
LP_OSC equ 0X3FF8
XT_OSC equ 0X3FF9
HS_OSC equ 0X3FFA
EC_OSC equ 0X3FFB
INTRC_OSC_NOCLKOUT equ 0X3FFC
INTRC_OSC_CLKOUT equ 0X3FFD
EXTRC_OSC_NOCLKOUT equ 0X3FFE
EXTRC_OSC_CLKOUT equ 0X3FFF
WDTE_OFF equ 0X0000
WDTE_ON equ 0X0008
FOSC_EC equ 0X0003
FOSC_EXTRCCLK equ 0X0007
FOSC_EXTRCIO equ 0X0006
FOSC_HS equ 0X0002
FOSC_INTRCCLK equ 0X0005
FOSC_INTRCIO equ 0X0004
FOSC_LP equ 0X0000
FOSC_XT equ 0X0001
BOREN_OFF equ 0X0000
BOREN_ON equ 0X0040
#define __16F676 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 64
#define _RAM_END 0X0040
#define _MAXMEM 1024
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 128
#define _PAGES 1
#define _BANKS 2
#define RAM_BANKS 1
#define _USART 0
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X5F
#define _SYSTEM_VARIABLE_COUNT 24
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
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
GEN = 32
GENH = 33
GPR = 34
PP0 = 35
PP0H = 36
PP1 = 37
PP1H = 38
PP2 = 39
PP2H = 40
PPZ = 41
PPZH = 42
PPZHH = 43
PP_AARG = 44
PP_AARGH = 45
PP_AARGHH = 46
PP_AARGHHH = 47
PP_BARG = 48
PP_BARGH = 49
PP_BARGHH = 50
PP_BARGHHH = 51
_BEXP = 52
_FP_FLAGS = 53
_FP_TEMP = 54
_SIGN = 55
IR = 56
IRH = 57
cnt = 58
mask = 59
time = 60
timeH = 61
temp = 62
tempH = 63
_B#VR1 = 64
#define __SONYIN_PORT PORTC
#define TMR1IF PIR1,0
#define TMR1IE PIE1,0
#define Relay PORTA,2
#define Led PORTC,1
#define cmd IR
#define system_flag _B#VR1,0
#define pause_flag _B#VR1,1
#define timer_flag _B#VR1,2
#define __XTAL 20
#define __SONYIN_PIN 0
proton#code#start
        org 0
        goto proton#main#start
        org 4
        return
P@INN
        call C@PIN
P@IN
        movwf 32
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 37
        btfss 35,0
        movwf 37
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 32,W
        xorwf 37,F
        movlw 1
        movwf 35
        clrf 36
        movf 0,W
        andwf 32,W
        xorwf 37,W
        skpz
        return
        incf 35,F
        skpnz
        incfsz 36,F
        goto $ - 8
        return
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 38
DLY@W
        movwf 37
DLY@P
        movlw 255
        addwf 37,F
        skpc
        addwf 38,F
        skpc
        goto I@NT
        movlw 3
        movwf 36
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 36
DLUS@W
        addlw 252
        movwf 35
        comf 36,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 35,F
        skpnc
        goto $ - 3
        addwf 35,F
        nop
        incfsz 36,F
        goto $ - 8
        return
C@PIN
        movwf 0
        movlw PORTB
        btfsc 0,3
        movlw PORTA
        movwf 4
C@BT
        movlw (C@TBL >> 8)
        movwf 10
        movf 0,W
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
SNY@IN
        clrf 35
        movlw PORTC
        bcf 4,7
        movwf 4
        movlw 1
        call P@IN
        movlw 3
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL7
        btfss 3,2
        goto SNYIN@LB2
        movlw 232
        subwf 35,W
        btfss 3,0
        goto SNYIN@LL7
SNYIN@LB2
        movlw 5
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL6
        btfss 3,2
        goto SNYIN@LL7
        movlw 70
        subwf 35,W
        btfss 3,0
        goto SNYIN@LL6
SNYIN@LL7
        movlw 255
        movwf 36
        movwf 35
        bsf 3,0
        goto I@NT
SNYIN@LL6
        movlw 11
        movwf 34
SNYIN@RPT
        bcf 40,3
        clrf 35
        movlw 1
        call P@IN
        movlw 1
        subwf 36,W
        btfss 3,0
        goto SNYIN@CLRB
        btfss 3,2
        goto SNYIN@LB4
        movlw 194
        subwf 35,W
        btfsc 3,0
SNYIN@LB4
        bsf 40,3
SNYIN@CLRB
        bcf 3,0
        rrf 40,F
        rrf 39,F
        decfsz 34,F
        goto SNYIN@RPT
        movlw 127
        andwf 39,W
        movwf 35
        bcf 3,0
        rlf 39,F
        rlf 40,W
        andlw 31
        movwf 36
        movf 35,W
        bcf 3,0
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
FPM@32
        movf 45,W
        movwf 43
        xorwf 49,W
        movwf 55
        movf 44,W
        xorlw 0
        btfss 3,2
        movf 48,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf 44,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf 44,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf 44,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf 47,W
        movwf 41
        movf 46,W
        movwf 42
        bsf 43,7
        bsf 49,7
        clrf 47
        clrf 46
        clrf 45
        movlw 24
        movwf 54
FPM@L9
        rrf 43,F
        rrf 42,F
        rrf 41,F
        btfss 3,0
        goto FPM@L12
        movf 51,W
        addwf 47,F
        movf 50,W
        btfsc 3,0
        incfsz 50,W
        addwf 46,F
        movf 49,W
        btfsc 3,0
        incfsz 49,W
        addwf 45,F
FPM@L12
        rrf 45,F
        rrf 46,F
        rrf 47,F
        decfsz 54,F
        goto FPM@L9
        btfsc 45,7
        goto FPM@L14
        rlf 47,F
        rlf 46,F
        rlf 45,F
        movf 44,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf 44,F
        rlf 43,W
FPM@L14
        btfss 53,6
        goto FPM@L28
        btfss 3,0
        goto FPM@L28
        incfsz 47,F
        goto FPM@L28
        incfsz 46,F
        goto FPM@L28
        incfsz 45,F
        goto FPM@L28
        bsf 3,0
        rrf 45,F
        rrf 46,F
        rrf 47,F
        incf 44,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf 53,2
FPM@RES0
        clrf 44
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf 53,1
        movlw 255
        movwf 44
FPM@MANTISSA
        clrf 47
        clrf 46
        movlw 128
        movwf 45
FPM@SET_SIGN
        btfsc 55,7
        goto FPM@L30
        bcf 45,7
FPM@L30
        goto I@NT
FL32@TOINT32
        movf 45,W
        movwf 55
        movlw 127
        subwf 44,W
        movwf 54
        btfsc 3,0
        goto FI@L3
        movlw 0
        goto FI@ASSIGNW
FI@L3
        bsf 45,7
        clrf 44
        clrf 41
        movf 54,W
        sublw 23
        movwf 54
        btfsc 3,0
        goto FI@L5
        movlw 8
        addwf 54,F
        btfss 3,0
        goto FI@OVERFLOW
FI@L7
        movf 45,W
        movwf 44
        movf 46,W
        movwf 45
        movf 47,W
        movwf 46
        clrf 47
        goto FI@L8
FI@L5
        movlw 8
        subwf 54,F
        btfss 3,0
        goto FI@L10
        movf 47,W
        movwf 41
        movf 46,W
        movwf 47
        movf 45,W
        movwf 46
        clrf 45
        goto FI@L5
FI@L10
        addwf 54,F
FI@L8
        movf 54,F
        btfsc 3,2
        goto FI@L16
FI@L15
        bcf 3,0
        rrf 44,F
        rrf 45,F
        rrf 46,F
        rrf 47,F
        rrf 41,F
        decfsz 54,F
        goto FI@L15
FI@L16
        btfsc 44,0
        goto FI@OVERFLOW
        btfss 53,6
        goto FI@L30
        btfss 41,7
        goto FI@L30
        incfsz 47,F
        goto FI@L30
        incfsz 46,F
        goto FI@L30
        incf 45,F
FI@L30
        movf 44,W
        movwf 41
        movf 47,W
        movwf 44
        movf 41,W
        movwf 47
        movf 45,W
        movwf 41
        movf 46,W
        movwf 45
        movf 41,W
        movwf 46
        btfss 55,7
        goto FI@L32
        comf 47,F
        comf 46,F
        comf 45,F
        comf 44,F
        incfsz 44,F
        goto FI@L32
        incfsz 45,F
        goto FI@L32
        incf 46,F
        btfsc 3,2
        incf 47,F
FI@L32
        movf 44,W
        goto I@NT
FI@OVERFLOW
        bsf 53,5
        movlw 255
FI@ASSIGNW
        movwf 47
        movwf 46
        movwf 45
        movwf 44
        goto I@NT
INT16@TOFL32
        clrf 46
        clrf 47
INT32@TOFL32
        movlw 150
        movwf 54
        bcf 55,7
        btfss 47,7
        goto IF@L5
        comf 47,F
        comf 46,F
        comf 45,F
        comf 44,F
        incfsz 44,F
        goto IF@L4
        incfsz 45,F
        goto IF@L4
        incf 46,F
        btfsc 3,2
        incf 47,F
IF@L4
        bsf 55,7
IF@L5
        movf 47,F
        btfsc 3,2
        goto IF@L7
        btfss 53,6
        goto IF@L17
        btfss 47,7
        goto IF@L17
        incfsz 45,F
        goto IF@L17
        incfsz 46,F
        goto IF@L17
        incfsz 47,F
        goto IF@L17
        bsf 3,0
        rrf 47,F
        rrf 46,F
        rrf 45,F
        incf 54,F
IF@L17
        movlw 8
        addwf 54,F
        movf 45,W
        movwf 44
        movf 46,W
        movwf 45
        movf 47,W
        movwf 46
        goto IF@L18
IF@L7
        movf 46,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 54,F
        movf 45,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 54,F
        movf 44,W
        btfss 3,2
        goto IF@L22
        movf 47,W
        movwf 54
        goto IF@EXIT
IF@L22
        clrf 44
IF@L20
        movwf 46
        movf 44,W
        movwf 45
        clrf 44
IF@L18
        btfsc 46,7
        goto IF@L24
        bcf 3,0
        rlf 44,F
        rlf 45,F
        rlf 46,F
        decf 54,F
        goto IF@L18
IF@L24
        btfss 55,7
        bcf 46,7
IF@EXIT
        movf 44,W
        movwf 47
        movf 54,W
        movwf 44
        movf 46,W
        movwf 54
        movf 45,W
        movwf 46
        movf 54,W
        movwf 45
        goto I@NT
proton#main#start
        clrf 3
        movlw 64
        movwf 53
F2_SOF equ $ ; IR TOGGLE.PRP
F2_EOF equ $ ; IR TOGGLE.PRP
F1_SOF equ $ ; IR TOGGLE.BAS
F1_000012 equ $ ; IN [IR TOGGLE.BAS] ANSEL = 0
        bsf STATUS,5
ram_bank = 1
        clrf ANSEL
F1_000014 equ $ ; IN [IR TOGGLE.BAS] INPUT PORTC.0
        bsf TRISC,0
        bsf INTCON,7
        bcf STATUS,5
ram_bank = 0
        goto INT@LBL2
INT@LBL1
        btfsc INTCON,7
        return
        goto timer
INT@LBL2
        call INT@LBL1
F1_000021 equ $ ; IN [IR TOGGLE.BAS] OUTPUT RELAY : OUTPUT LED
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,2
        bcf STATUS,5
ram_bank = 0
        call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,1
        bcf STATUS,5
ram_bank = 0
        call INT@LBL1
F1_000032 equ $ ; IN [IR TOGGLE.BAS] CLEAR
        movf _FP_FLAGS,W
        movwf 32
        movlw 33
        movwf FSR
        movlw 65
        call CL@R
        movf 32,W
        movwf _FP_FLAGS
        clrf 32
start
        call INT@LBL1
F1_000035 equ $ ; IN [IR TOGGLE.BAS] T1CON = $31
        call INT@LBL1
        movlw 49
        movwf T1CON
        call INT@LBL1
F1_000036 equ $ ; IN [IR TOGGLE.BAS] TMR1IF = 0
        call INT@LBL1
        bcf PIR1,0
        call INT@LBL1
F1_000037 equ $ ; IN [IR TOGGLE.BAS] TMR1H = $0B
        call INT@LBL1
        movlw 11
        movwf TMR1H
        call INT@LBL1
F1_000038 equ $ ; IN [IR TOGGLE.BAS] TMR1L = $DC
        call INT@LBL1
        movlw 220
        movwf TMR1L
        call INT@LBL1
F1_000039 equ $ ; IN [IR TOGGLE.BAS] TMR1IE = 1
        call INT@LBL1
        bsf STATUS,5
ram_bank = 1
        bsf PIE1,0
        bcf STATUS,5
ram_bank = 0
        call INT@LBL1
F1_000040 equ $ ; IN [IR TOGGLE.BAS] INTCON = $C0
        call INT@LBL1
        movlw 192
        movwf INTCON
        call INT@LBL1
F1_000041 equ $ ; IN [IR TOGGLE.BAS] CNT = 0
        call INT@LBL1
        clrf cnt
        call INT@LBL1
F1_000042 equ $ ; IN [IR TOGGLE.BAS] TEMP = 0
        call INT@LBL1
        clrf tempH
        clrf temp
        call INT@LBL1
F1_000043 equ $ ; IN [IR TOGGLE.BAS] TIMER_FLAG = 0
        call INT@LBL1
        bcf _B#VR1,2
        call INT@LBL1
F1_000045 equ $ ; IN [IR TOGGLE.BAS] WHILE 1 = 1
BC@LL1
        call INT@LBL1
F1_000046 equ $ ; IN [IR TOGGLE.BAS] GOSUB CHECK_IR
        call check_IR
        call INT@LBL1
F1_000047 equ $ ; IN [IR TOGGLE.BAS] IF SYSTEM_FLAG = 1 THEN
        btfss _B#VR1,0
        goto BC@LL4
        call INT@LBL1
F1_000048 equ $ ; IN [IR TOGGLE.BAS] GOSUB DUTY
        call duty
        goto BC@LL5
BC@LL4
F1_000049 equ $ ; IN [IR TOGGLE.BAS] ELSE
        call INT@LBL1
F1_000050 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000051 equ $ ; IN [IR TOGGLE.BAS] LED = 0
        call INT@LBL1
        bcf PORTC,1
F1_000052 equ $ ; IN [IR TOGGLE.BAS] ENDIF
BC@LL5
F1_000053 equ $ ; IN [IR TOGGLE.BAS] WEND
        goto BC@LL1
BC@LL2
check_IR
        call INT@LBL1
F1_000056 equ $ ; IN [IR TOGGLE.BAS] CMD = 255
        call INT@LBL1
        movlw 255
        movwf IR
        call INT@LBL1
F1_000057 equ $ ; IN [IR TOGGLE.BAS] IR = SONYIN
        call INT@LBL1
        call SNY@IN
        movwf IR
        movf PP0H,W
        movwf IRH
        call INT@LBL1
F1_000058 equ $ ; IN [IR TOGGLE.BAS] IF CMD = 0 THEN SYSTEM_FLAG = 1 : DELAYMS 500
        movf IR,F
        btfss STATUS,2
        goto BC@LL7
        call INT@LBL1
        call INT@LBL1
        bsf _B#VR1,0
        call INT@LBL1
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL7
        call INT@LBL1
F1_000059 equ $ ; IN [IR TOGGLE.BAS] IF CMD = 2 THEN SYSTEM_FLAG = 0 : DELAYMS 500
        movlw 2
        subwf IR,W
        btfss STATUS,2
        goto BC@LL9
        call INT@LBL1
        call INT@LBL1
        bcf _B#VR1,0
        call INT@LBL1
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL9
        call INT@LBL1
F1_000060 equ $ ; IN [IR TOGGLE.BAS] IF CMD = 6 THEN PAUSE_FLAG = 1 : DELAYMS 500
        movlw 6
        subwf IR,W
        btfss STATUS,2
        goto BC@LL11
        call INT@LBL1
        call INT@LBL1
        bsf _B#VR1,1
        call INT@LBL1
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL11
        call INT@LBL1
F1_000061 equ $ ; IN [IR TOGGLE.BAS] IF CMD = 8 THEN PAUSE_FLAG = 0 : DELAYMS 500
        movlw 8
        subwf IR,W
        btfss STATUS,2
        goto BC@LL13
        call INT@LBL1
        call INT@LBL1
        bcf _B#VR1,1
        call INT@LBL1
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL13
        call INT@LBL1
F1_000062 equ $ ; IN [IR TOGGLE.BAS] IF CMD = 9 THEN DELAYMS 300 : GOSUB RESET_SYS
        movlw 9
        subwf IR,W
        btfss STATUS,2
        goto BC@LL15
        call INT@LBL1
        movlw 1
        movwf PP1H
        movlw 44
        call DLY@W
        call INT@LBL1
        call reset_sys
BC@LL15
        call INT@LBL1
F1_000063 equ $ ; IN [IR TOGGLE.BAS] RETURN
        return
duty
        call INT@LBL1
F1_000066 equ $ ; IN [IR TOGGLE.BAS] LED = 1
        call INT@LBL1
        bsf PORTC,1
        call INT@LBL1
F1_000068 equ $ ; IN [IR TOGGLE.BAS] TIME = 34
        call INT@LBL1
        clrf timeH
        movlw 34
        movwf time
        call INT@LBL1
F1_000069 equ $ ; IN [IR TOGGLE.BAS] RELAY = 1
        call INT@LBL1
        bsf PORTA,2
        call INT@LBL1
F1_000070 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000072 equ $ ; IN [IR TOGGLE.BAS] TIME = 100
        call INT@LBL1
        clrf timeH
        movlw 100
        movwf time
        call INT@LBL1
F1_000073 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000074 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000076 equ $ ; IN [IR TOGGLE.BAS] TIME = 130
        call INT@LBL1
        clrf timeH
        movlw 130
        movwf time
        call INT@LBL1
F1_000077 equ $ ; IN [IR TOGGLE.BAS] RELAY = 1
        call INT@LBL1
        bsf PORTA,2
        call INT@LBL1
F1_000078 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000080 equ $ ; IN [IR TOGGLE.BAS] TIME = 81
        call INT@LBL1
        clrf timeH
        movlw 81
        movwf time
        call INT@LBL1
F1_000081 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000082 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000084 equ $ ; IN [IR TOGGLE.BAS] TIME = 54
        call INT@LBL1
        clrf timeH
        movlw 54
        movwf time
        call INT@LBL1
F1_000085 equ $ ; IN [IR TOGGLE.BAS] RELAY = 1
        call INT@LBL1
        bsf PORTA,2
        call INT@LBL1
F1_000086 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000088 equ $ ; IN [IR TOGGLE.BAS] TIME = 40
        call INT@LBL1
        clrf timeH
        movlw 40
        movwf time
        call INT@LBL1
F1_000089 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000090 equ $ ; IN [IR TOGGLE.BAS] GOSUB DELAY
        call delay
        call INT@LBL1
F1_000091 equ $ ; IN [IR TOGGLE.BAS] RETURN
        return
delay
        call INT@LBL1
F1_000094 equ $ ; IN [IR TOGGLE.BAS] MASK = TIME * 0.242
        call INT@LBL1
        movf time,W
        movwf PP_AARG
        movf timeH,W
        movwf PP_AARGH
        call INT16@TOFL32
        movlw 217
        movwf PP_BARGHHH
        movlw 206
        movwf PP_BARGHH
        movlw 119
        movwf PP_BARGH
        movlw 124
        movwf PP_BARG
        call FPM@32
        call FL32@TOINT32
        movwf mask
        call INT@LBL1
F1_000095 equ $ ; IN [IR TOGGLE.BAS] TIME = TIME - MASK
        call INT@LBL1
        movf mask,W
        subwf time,F
        btfss STATUS,0
        decf timeH,F
        call INT@LBL1
F1_000096 equ $ ; IN [IR TOGGLE.BAS] TIMER_FLAG = 1
        call INT@LBL1
        bsf _B#VR1,2
        call INT@LBL1
F1_000097 equ $ ; IN [IR TOGGLE.BAS] WHILE TEMP != TIME
BC@LL16
        movf timeH,W
        subwf tempH,W
        btfss STATUS,2
        goto CP@LB2
        movf time,W
        subwf temp,W
        btfsc STATUS,2
        goto BC@LL17
CP@LB2
        call INT@LBL1
F1_000098 equ $ ; IN [IR TOGGLE.BAS] GOSUB CHECK_IR
        call check_IR
        call INT@LBL1
F1_000099 equ $ ; IN [IR TOGGLE.BAS] IF SYSTEM_FLAG = 0 THEN BREAK
        btfsc _B#VR1,0
        goto BC@LL19
        goto BC@LL17
BC@LL19
        call INT@LBL1
F1_000100 equ $ ; IN [IR TOGGLE.BAS] IF PAUSE_FLAG = 1 THEN GOSUB HOLD
        btfss _B#VR1,1
        goto BC@LL21
        call INT@LBL1
        call hold
BC@LL21
F1_000101 equ $ ; IN [IR TOGGLE.BAS] WEND
        goto BC@LL16
BC@LL17
        call INT@LBL1
F1_000102 equ $ ; IN [IR TOGGLE.BAS] CNT = 0
        call INT@LBL1
        clrf cnt
        call INT@LBL1
F1_000103 equ $ ; IN [IR TOGGLE.BAS] TEMP = 0
        call INT@LBL1
        clrf tempH
        clrf temp
        call INT@LBL1
F1_000104 equ $ ; IN [IR TOGGLE.BAS] TIMER_FLAG = 0
        call INT@LBL1
        bcf _B#VR1,2
        call INT@LBL1
F1_000105 equ $ ; IN [IR TOGGLE.BAS] RETURN
        return
reset_sys
        call INT@LBL1
F1_000108 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000109 equ $ ; IN [IR TOGGLE.BAS] CNT = 0
        call INT@LBL1
        clrf cnt
        call INT@LBL1
F1_000110 equ $ ; IN [IR TOGGLE.BAS] TEMP = 0
        call INT@LBL1
        clrf tempH
        clrf temp
        call INT@LBL1
F1_000111 equ $ ; IN [IR TOGGLE.BAS] TIMER_FLAG = 0
        call INT@LBL1
        bcf _B#VR1,2
        call INT@LBL1
F1_000112 equ $ ; IN [IR TOGGLE.BAS] FOR CNT = 0 TO 5
        clrf cnt
FR@LB23
        movlw 6
        subwf cnt,W
        btfsc STATUS,0
        goto NX@LB24
        call INT@LBL1
F1_000113 equ $ ; IN [IR TOGGLE.BAS] LED = ~LED
        call INT@LBL1
        movlw 2
        xorwf PORTC,F
        call INT@LBL1
F1_000114 equ $ ; IN [IR TOGGLE.BAS] DELAYMS 200
        movlw 200
        call DL@MS
        call INT@LBL1
CT@LB25
F1_000115 equ $ ; IN [IR TOGGLE.BAS] NEXT
        movlw 1
        addwf cnt,F
        btfss STATUS,0
        goto FR@LB23
NX@LB24
        call INT@LBL1
F1_000116 equ $ ; IN [IR TOGGLE.BAS] CMD = 255
        call INT@LBL1
        movlw 255
        movwf IR
        call INT@LBL1
F1_000117 equ $ ; IN [IR TOGGLE.BAS] GOTO START
        goto start
hold
F1_000121 equ $ ; IN [IR TOGGLE.BAS] REPEAT
BC@LL25
        call INT@LBL1
F1_000122 equ $ ; IN [IR TOGGLE.BAS] TIMER_FLAG = 0
        call INT@LBL1
        bcf _B#VR1,2
        call INT@LBL1
F1_000123 equ $ ; IN [IR TOGGLE.BAS] LED = 1
        call INT@LBL1
        bsf PORTC,1
        call INT@LBL1
F1_000124 equ $ ; IN [IR TOGGLE.BAS] RELAY = 0
        call INT@LBL1
        bcf PORTA,2
        call INT@LBL1
F1_000125 equ $ ; IN [IR TOGGLE.BAS] DELAYMS 100
        movlw 100
        call DL@MS
        call INT@LBL1
F1_000126 equ $ ; IN [IR TOGGLE.BAS] LED = 0
        call INT@LBL1
        bcf PORTC,1
        call INT@LBL1
F1_000127 equ $ ; IN [IR TOGGLE.BAS] DELAYMS 100
        movlw 100
        call DL@MS
        call INT@LBL1
F1_000128 equ $ ; IN [IR TOGGLE.BAS] GOSUB CHECK_IR
        call check_IR
        call INT@LBL1
BC@LL27
F1_000129 equ $ ; IN [IR TOGGLE.BAS] UNTIL PAUSE_FLAG = 0
        btfsc _B#VR1,1
        goto BC@LL25
BC@LL26
        call INT@LBL1
F1_000130 equ $ ; IN [IR TOGGLE.BAS] LED = 1
        call INT@LBL1
        bsf PORTC,1
        call INT@LBL1
F1_000131 equ $ ; IN [IR TOGGLE.BAS] RETURN
        return
F1_000133 equ $ ; IN [IR TOGGLE.BAS] DISABLE
timer
F1_000135 equ $ ; IN [IR TOGGLE.BAS] IF TMR1IF = 1 THEN
        btfss PIR1,0
        goto BC@LL29
F1_000136 equ $ ; IN [IR TOGGLE.BAS] TMR1IF = 0
        bcf PIR1,0
F1_000137 equ $ ; IN [IR TOGGLE.BAS] TMR1H = $0B
        movlw 11
        movwf TMR1H
F1_000138 equ $ ; IN [IR TOGGLE.BAS] TMR1L = $DC
        movlw 220
        movwf TMR1L
F1_000139 equ $ ; IN [IR TOGGLE.BAS] IF TIMER_FLAG = 1 THEN INC CNT
        btfss _B#VR1,2
        goto BC@LL31
        incf cnt,F
BC@LL31
F1_000140 equ $ ; IN [IR TOGGLE.BAS] IF CNT = 10 THEN CNT = 0 : INC TEMP
        movlw 10
        subwf cnt,W
        btfss STATUS,2
        goto BC@LL33
        clrf cnt
        incf temp,F
        btfsc STATUS,2
        incf tempH,F
BC@LL33
F1_000141 equ $ ; IN [IR TOGGLE.BAS] ENDIF
BC@LL29
F1_000142 equ $ ; IN [IR TOGGLE.BAS] ENABLE
F1_000143 equ $ ; IN [IR TOGGLE.BAS] RESUME
        retfie
F1_EOF equ $ ; IR TOGGLE.BAS
PB@LB35
        call INT@LBL1
        goto PB@LB35
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_ON&BOREN_OFF&CP_ON&CPD_ON
        end
