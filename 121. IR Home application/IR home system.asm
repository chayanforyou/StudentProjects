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
#define XTAL 8
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
#define _SYSTEM_VARIABLE_COUNT 9
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
SonyIn_Word = 41
SonyIn_WordH = 42
#define __SONYIN_PORT PORTC
#define OUT1 PORTA,0
#define OUT2 PORTA,1
#define OUT3 PORTA,2
#define OUT4 PORTC,1
#define OUT5 PORTC,2
#define OUT6 PORTC,3
#define OUT7 PORTC,4
#define OUT8 PORTC,5
#define Cmd SonyIn_Word
#define SonySystem SonyIn_WordH
#define __XTAL 8
#define __SONYIN_PIN 0
proton#code#start
        org 0
        goto proton#main#start
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
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 36
DLUS@W
        addlw 244
        movwf 35
        comf 36,F
        movlw 254
        skpc
        goto $ + 4
        addwf 35,F
        skpnc
        goto $ - 2
        addwf 35,F
        nop
        incfsz 36,F
        goto $ - 6
        nop
        btfsc 35,0
        goto $ + 1
        btfsc 35,0
        goto $ + 1
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
        movlw 1
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL7
        btfss 3,2
        goto SNYIN@LB2
        movlw 144
        subwf 35,W
        btfss 3,0
        goto SNYIN@LL7
SNYIN@LB2
        movlw 2
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL6
        btfss 3,2
        goto SNYIN@LL7
        movlw 27
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
        movlw 0
        subwf 36,W
        btfss 3,0
        goto SNYIN@CLRB
        btfss 3,2
        goto SNYIN@LB4
        movlw 179
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
proton#main#start
        clrf 3
F2_SOF equ $ ; ANTOR
F2_EOF equ $ ; ANTOR
F1_SOF equ $ ; ANTOR
F1_000012 equ $ ; IN [ANTOR] ALL_DIGITAL = ON
        movlw 7
        movwf CMCON
        bsf STATUS,5
ram_bank = 1
        clrf ANSEL
F1_000014 equ $ ; IN [ANTOR] TRISA = $00 : PORTA = $00
        clrf TRISA
        bcf STATUS,5
ram_bank = 0
        clrf PORTA
F1_000015 equ $ ; IN [ANTOR] TRISC = $01 : PORTC = $00
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000033 equ $ ; IN [ANTOR] WHILE 1 = 1
BC@LL1
F1_000034 equ $ ; IN [ANTOR] GOSUB REMOTE_CHECK
        call Remote_check
F1_000035 equ $ ; IN [ANTOR] IF CMD = 0 THEN GOSUB OUT1_ACTION
        movf SonyIn_Word,F
        btfss STATUS,2
        goto BC@LL4
        call OUT1_action
BC@LL4
F1_000036 equ $ ; IN [ANTOR] IF CMD = 1 THEN GOSUB OUT2_ACTION
        movlw 1
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL6
        call OUT2_action
BC@LL6
F1_000037 equ $ ; IN [ANTOR] IF CMD = 2 THEN GOSUB OUT3_ACTION
        movlw 2
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL8
        call OUT3_action
BC@LL8
F1_000038 equ $ ; IN [ANTOR] IF CMD = 3 THEN GOSUB OUT4_ACTION
        movlw 3
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL10
        call OUT4_action
BC@LL10
F1_000039 equ $ ; IN [ANTOR] IF CMD = 4 THEN GOSUB OUT5_ACTION
        movlw 4
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL12
        call OUT5_action
BC@LL12
F1_000040 equ $ ; IN [ANTOR] IF CMD = 5 THEN GOSUB OUT6_ACTION
        movlw 5
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL14
        call OUT6_action
BC@LL14
F1_000041 equ $ ; IN [ANTOR] IF CMD = 6 THEN GOSUB OUT7_ACTION
        movlw 6
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL16
        call OUT7_action
BC@LL16
F1_000042 equ $ ; IN [ANTOR] IF CMD = 7 THEN GOSUB OUT8_ACTION
        movlw 7
        subwf SonyIn_Word,W
        btfss STATUS,2
        goto BC@LL18
        call OUT8_action
BC@LL18
F1_000043 equ $ ; IN [ANTOR] WEND
        goto BC@LL1
BC@LL2
Remote_check
F1_000046 equ $ ; IN [ANTOR] REPEAT
BC@LL19
F1_000047 equ $ ; IN [ANTOR] SONYIN_WORD = SONYIN
        call SNY@IN
        movwf SonyIn_Word
        movf PP0H,W
        movwf SonyIn_WordH
BC@LL21
F1_000048 equ $ ; IN [ANTOR] UNTIL CMD <> 255
        incf SonyIn_Word,W
        btfsc STATUS,2
        goto BC@LL19
BC@LL20
F1_000049 equ $ ; IN [ANTOR] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
F1_000050 equ $ ; IN [ANTOR] RETURN
        return
OUT1_action
F1_000053 equ $ ; IN [ANTOR] OUT1 =~ OUT1
        movlw 1
        xorwf PORTA,F
F1_000054 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000055 equ $ ; IN [ANTOR] RETURN
        return
OUT2_action
F1_000058 equ $ ; IN [ANTOR] OUT2 =~ OUT2
        movlw 2
        xorwf PORTA,F
F1_000059 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000060 equ $ ; IN [ANTOR] RETURN
        return
OUT3_action
F1_000063 equ $ ; IN [ANTOR] OUT3 =~ OUT3
        movlw 4
        xorwf PORTA,F
F1_000064 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000065 equ $ ; IN [ANTOR] RETURN
        return
OUT4_action
F1_000068 equ $ ; IN [ANTOR] OUT4 =~ OUT4
        movlw 2
        xorwf PORTC,F
F1_000069 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000070 equ $ ; IN [ANTOR] RETURN
        return
OUT5_action
F1_000073 equ $ ; IN [ANTOR] OUT5 =~ OUT5
        movlw 4
        xorwf PORTC,F
F1_000074 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000075 equ $ ; IN [ANTOR] RETURN
        return
OUT6_action
F1_000078 equ $ ; IN [ANTOR] OUT6 =~ OUT6
        movlw 8
        xorwf PORTC,F
F1_000079 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000080 equ $ ; IN [ANTOR] RETURN
        return
OUT7_action
F1_000083 equ $ ; IN [ANTOR] OUT7 =~ OUT7
        movlw 16
        xorwf PORTC,F
F1_000084 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000085 equ $ ; IN [ANTOR] RETURN
        return
OUT8_action
F1_000088 equ $ ; IN [ANTOR] OUT8 =~ OUT8
        movlw 32
        xorwf PORTC,F
F1_000089 equ $ ; IN [ANTOR] DELAYMS 200
        movlw 200
        call DL@MS
F1_000090 equ $ ; IN [ANTOR] RETURN
        return
F1_EOF equ $ ; ANTOR
PB@LB23
        goto PB@LB23
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_ON&BOREN_OFF&CP_ON&CPD_ON
        end
