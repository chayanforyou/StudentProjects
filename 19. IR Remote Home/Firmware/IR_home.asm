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
#define _SYSTEM_VARIABLE_COUNT 10
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
SP#P9 = 41
speed = 42
_B#VR1 = 43
sony = 44
sonyH = 45
#define __SONYIN_PORT PORTC
#define FAN PORTC,1
#define L_1 PORTC,2
#define L_2 PORTC,3
#define L_3 PORTC,4
#define L_4 PORTC,5
#define L_5 PORTA,0
#define L_6 PORTA,1
#define L_7 PORTA,2
#define flag _B#VR1,0
#define cmd sony
#define __XTAL 20
#define __SONYIN_PIN 0
proton#code#start
        org 0
        goto proton#main#start
T@LEB
        clrf 36
T@LEW
        clrf 38
T@LE
        movwf 37
        movlw 6
T@ST
        movwf 34
        movf 38,W
        subwf 36,W
        skpz
        goto $ + 3
        movf 37,W
        subwf 35,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 34,W
        skpz
        movlw 1
        goto I@NT
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
proton#main#start
        clrf 3
F2_SOF equ $ ; IR_HOME.PRP
F2_EOF equ $ ; IR_HOME.PRP
F1_SOF equ $ ; IR_HOME.BAS
F1_000012 equ $ ; IN [IR_HOME.BAS] ANSEL = 0
        bsf STATUS,5
ram_bank = 1
        clrf ANSEL
F1_000023 equ $ ; IN [IR_HOME.BAS] OUTPUT FAN : OUTPUT L_1
        bcf TRISC,1
        bcf TRISC,2
F1_000024 equ $ ; IN [IR_HOME.BAS] OUTPUT L_2 : OUTPUT L_3
        bcf TRISC,3
        bcf TRISC,4
F1_000025 equ $ ; IN [IR_HOME.BAS] OUTPUT L_4 : OUTPUT L_5
        bcf TRISC,5
        bcf TRISA,0
F1_000026 equ $ ; IN [IR_HOME.BAS] OUTPUT L_6 : OUTPUT L_7
        bcf TRISA,1
        bcf TRISA,2
F1_000027 equ $ ; IN [IR_HOME.BAS] PORTC = 0 : PORTA = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
        clrf PORTA
F1_000033 equ $ ; IN [IR_HOME.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 64
        call CL@R
main
F1_000036 equ $ ; IN [IR_HOME.BAS] REPEAT
BC@LL1
F1_000037 equ $ ; IN [IR_HOME.BAS] SONY = SONYIN
        call SNY@IN
        movwf sony
        movf PP0H,W
        movwf sonyH
F1_000038 equ $ ; IN [IR_HOME.BAS] GOSUB FAN_SPEED
        call fan_speed
BC@LL3
F1_000039 equ $ ; IN [IR_HOME.BAS] UNTIL CMD <> 255
        incf sony,W
        btfsc STATUS,2
        goto BC@LL1
BC@LL2
F1_000041 equ $ ; IN [IR_HOME.BAS] IF CMD >= 0 AND CMD <= 8 THEN
        movlw 0
        subwf sony,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf sony,W
        movwf PP0
        movlw 8
        call T@LEB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL5
F1_000042 equ $ ; IN [IR_HOME.BAS] SPEED = CMD + 2
        movlw 2
        addwf sony,W
        movwf speed
F1_000043 equ $ ; IN [IR_HOME.BAS] FLAG = 1
        bsf _B#VR1,0
F1_000044 equ $ ; IN [IR_HOME.BAS] ENDIF
BC@LL5
F1_000045 equ $ ; IN [IR_HOME.BAS] IF CMD = 21 THEN FLAG = 0
        movlw 21
        subwf sony,W
        btfss STATUS,2
        goto BC@LL7
        bcf _B#VR1,0
BC@LL7
F1_000046 equ $ ; IN [IR_HOME.BAS] IF CMD = 16 THEN L_1 = ~L_1 : DELAYMS 500
        movlw 16
        subwf sony,W
        btfss STATUS,2
        goto BC@LL9
        movlw 4
        xorwf PORTC,F
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL9
F1_000047 equ $ ; IN [IR_HOME.BAS] IF CMD = 17 THEN L_2 = ~L_2 : DELAYMS 500
        movlw 17
        subwf sony,W
        btfss STATUS,2
        goto BC@LL11
        movlw 8
        xorwf PORTC,F
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL11
F1_000048 equ $ ; IN [IR_HOME.BAS] IF CMD = 18 THEN L_3 = ~L_3 : DELAYMS 500
        movlw 18
        subwf sony,W
        btfss STATUS,2
        goto BC@LL13
        movlw 16
        xorwf PORTC,F
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL13
F1_000049 equ $ ; IN [IR_HOME.BAS] IF CMD = 19 THEN L_4 = ~L_4 : DELAYMS 500
        movlw 19
        subwf sony,W
        btfss STATUS,2
        goto BC@LL15
        movlw 32
        xorwf PORTC,F
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
BC@LL15
F1_000050 equ $ ; IN [IR_HOME.BAS] GOTO MAIN
        goto main
fan_speed
F1_000053 equ $ ; IN [IR_HOME.BAS] IF FLAG = 1 THEN
        btfss _B#VR1,0
        goto BC@LL17
F1_000054 equ $ ; IN [IR_HOME.BAS] FAN = 0
        bcf PORTC,1
F1_000055 equ $ ; IN [IR_HOME.BAS] DELAYMS 10 - SPEED
        movf speed,W
        sublw 10
        movwf PP1
        movlw 0
        btfss STATUS,0
        addlw 255
        movwf PP1H
        call DLY@P
F1_000056 equ $ ; IN [IR_HOME.BAS] FAN = 1
        bsf PORTC,1
        goto BC@LL18
BC@LL17
F1_000057 equ $ ; IN [IR_HOME.BAS] ELSE
F1_000058 equ $ ; IN [IR_HOME.BAS] FAN = 0
        bcf PORTC,1
F1_000059 equ $ ; IN [IR_HOME.BAS] ENDIF
BC@LL18
F1_000060 equ $ ; IN [IR_HOME.BAS] RETURN
        return
F1_EOF equ $ ; IR_HOME.BAS
PB@LB20
        goto PB@LB20
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_ON&BOREN_OFF&CP_ON&CPD_ON
        end
