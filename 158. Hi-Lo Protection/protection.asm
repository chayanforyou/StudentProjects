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
#define XTAL 4
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
#define _SYSTEM_VARIABLE_COUNT 8
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
PP0 = 32
PP0H = 33
PP1 = 34
PP1H = 35
PP3 = 36
PP4 = 37
PP7 = 38
PP7H = 39
adc = 40
adcH = 41
delay = 42
delayH = 43
blink = 44
blinkH = 45
#define delay_led PORTC,0
#define low_led PORTC,1
#define normal_led PORTC,2
#define high_led PORTC,3
#define relay PORTC,4
#define LEDblink_delay 1000
#define LEDblink_delayH 3
#define delayTime 50
#define low_value 200
#define high_value 800
#define high_valueH 3
#define low_TO_normal 220
#define high_TO_normal 780
#define high_TO_normalH 3
proton#code#start
        org 0
        goto proton#main#start
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 10
RD@AD
        andlw 15
        movwf 36
        clrc
        rlf 36,F
        rlf 36,F
        movf 31,W
        andlw 224
        iorwf 36,W
        iorlw 1
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        movf 30,W
        movwf 39
        bsf 3,5
        movf 158,W
        bcf 3,5
        movwf 38
        goto I@NT
DL@MS
        clrf 35
DLY@W
        movwf 34
DLY@P
        movlw 255
        addwf 34,F
        skpc
        addwf 35,F
        skpc
        goto I@NT
        nop
        clrf 33
        movlw 0
        call DLUS@W
        goto DLY@P
DL@US
        clrf 33
DLUS@W
        addlw 232
        movwf 32
        comf 33,F
        movlw 252
        skpc
        goto $ + 4
        addwf 32,F
        skpnc
        goto $ - 2
        addwf 32,F
        nop
        incfsz 33,F
        goto $ - 6
        btfsc 32,0
        goto $ + 1
        btfss 32,1
        goto $ + 3
        nop
        goto $ + 1
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
F2_SOF equ $ ; PROTECTION.PRP
F2_EOF equ $ ; PROTECTION.PRP
F1_SOF equ $ ; PROTECTION.BAS
F1_000003 equ $ ; IN [PROTECTION.BAS] ANSEL = $01 : ADCON0 = $83
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf ANSEL
        movlw 131
        bcf STATUS,5
ram_bank = 0
        movwf ADCON0
F1_000004 equ $ ; IN [PROTECTION.BAS] TRISC = $00 : PORTC = $00
        bsf STATUS,5
ram_bank = 1
        clrf TRISC
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
delay_loop
F1_000025 equ $ ; IN [PROTECTION.BAS] NORMAL_LED = 0 : RELAY = 0
        bcf PORTC,2
        bcf PORTC,4
F1_000026 equ $ ; IN [PROTECTION.BAS] LOW_LED = 0 : HIGH_LED = 0
        bcf PORTC,1
        bcf PORTC,3
F1_000027 equ $ ; IN [PROTECTION.BAS] FOR DELAY = 0 TO DELAYTIME
        clrf delayH
        clrf delay
FR@LB2
        movf delayH,F
        btfss STATUS,2
        goto NX@LB3
        movlw 51
        subwf delay,W
        btfsc STATUS,0
        goto NX@LB3
F1_000028 equ $ ; IN [PROTECTION.BAS] FOR BLINK = 0 TO LEDBLINK_DELAY
        clrf blinkH
        clrf blink
FR@LB5
        movlw 3
        subwf blinkH,W
        btfss STATUS,0
        goto CP@LB3
        btfss STATUS,2
        goto NX@LB6
        movlw 233
        subwf blink,W
        btfsc STATUS,0
        goto NX@LB6
CP@LB3
F1_000029 equ $ ; IN [PROTECTION.BAS] DELAY_LED = 1
        bsf PORTC,0
F1_000030 equ $ ; IN [PROTECTION.BAS] DELAYMS 1
        movlw 1
        call DL@MS
F1_000031 equ $ ; IN [PROTECTION.BAS] GOSUB CHECKADC
        call checkADC
CT@LB7
F1_000032 equ $ ; IN [PROTECTION.BAS] NEXT BLINK
        incf blink,F
        btfsc STATUS,2
        incfsz blinkH,F
        goto FR@LB5
NX@LB6
F1_000033 equ $ ; IN [PROTECTION.BAS] FOR BLINK = 0 TO LEDBLINK_DELAY
        clrf blinkH
        clrf blink
FR@LB8
        movlw 3
        subwf blinkH,W
        btfss STATUS,0
        goto CP@LB4
        btfss STATUS,2
        goto NX@LB9
        movlw 233
        subwf blink,W
        btfsc STATUS,0
        goto NX@LB9
CP@LB4
F1_000034 equ $ ; IN [PROTECTION.BAS] DELAY_LED = 0
        bcf PORTC,0
F1_000035 equ $ ; IN [PROTECTION.BAS] DELAYMS 1
        movlw 1
        call DL@MS
F1_000036 equ $ ; IN [PROTECTION.BAS] GOSUB CHECKADC
        call checkADC
CT@LB10
F1_000037 equ $ ; IN [PROTECTION.BAS] NEXT BLINK
        incf blink,F
        btfsc STATUS,2
        incfsz blinkH,F
        goto FR@LB8
NX@LB9
CT@LB4
F1_000038 equ $ ; IN [PROTECTION.BAS] NEXT DELAY
        incf delay,F
        btfsc STATUS,2
        incfsz delayH,F
        goto FR@LB2
NX@LB3
normal_loop
F1_000041 equ $ ; IN [PROTECTION.BAS] DELAY_LED = 0
        bcf PORTC,0
F1_000042 equ $ ; IN [PROTECTION.BAS] NORMAL_LED = 1 : RELAY = 1
        bsf PORTC,2
        bsf PORTC,4
F1_000043 equ $ ; IN [PROTECTION.BAS] LOW_LED = 0 : HIGH_LED = 0
        bcf PORTC,1
        bcf PORTC,3
F1_000044 equ $ ; IN [PROTECTION.BAS] GOSUB CHECKADC
        call checkADC
F1_000045 equ $ ; IN [PROTECTION.BAS] GOTO NORMAL_LOOP
        goto normal_loop
low_loop
F1_000048 equ $ ; IN [PROTECTION.BAS] DELAY_LED = 0
        bcf PORTC,0
F1_000049 equ $ ; IN [PROTECTION.BAS] NORMAL_LED = 0 : RELAY = 0
        bcf PORTC,2
        bcf PORTC,4
F1_000050 equ $ ; IN [PROTECTION.BAS] LOW_LED = 1 : HIGH_LED = 0
        bsf PORTC,1
        bcf PORTC,3
F1_000051 equ $ ; IN [PROTECTION.BAS] ADC = ADIN 0
        movlw 0
        call RD@AD
        movwf adc
        movf PP7H,W
        movwf adcH
F1_000052 equ $ ; IN [PROTECTION.BAS] IF ADC >= LOW_TO_NORMAL THEN DELAY_LOOP
        movf adcH,F
        btfss STATUS,2
        goto CP@LB5
        movlw 220
        subwf adc,W
        btfss STATUS,0
        goto BC@LL11
CP@LB5
        goto delay_loop
BC@LL11
F1_000053 equ $ ; IN [PROTECTION.BAS] GOTO LOW_LOOP
        goto low_loop
high_loop
F1_000056 equ $ ; IN [PROTECTION.BAS] DELAY_LED = 0
        bcf PORTC,0
F1_000057 equ $ ; IN [PROTECTION.BAS] NORMAL_LED = 0 : RELAY = 0
        bcf PORTC,2
        bcf PORTC,4
F1_000058 equ $ ; IN [PROTECTION.BAS] LOW_LED = 0 : HIGH_LED = 1
        bcf PORTC,1
        bsf PORTC,3
F1_000059 equ $ ; IN [PROTECTION.BAS] ADC = ADIN 0
        movlw 0
        call RD@AD
        movwf adc
        movf PP7H,W
        movwf adcH
F1_000060 equ $ ; IN [PROTECTION.BAS] IF ADC <= HIGH_TO_NORMAL THEN DELAY_LOOP
        movlw 3
        subwf adcH,W
        btfss STATUS,0
        goto CP@LB6
        btfss STATUS,2
        goto BC@LL13
        movlw 13
        subwf adc,W
        btfsc STATUS,0
        goto BC@LL13
CP@LB6
        goto delay_loop
BC@LL13
F1_000061 equ $ ; IN [PROTECTION.BAS] GOTO HIGH_LOOP
        goto high_loop
checkADC
F1_000064 equ $ ; IN [PROTECTION.BAS] ADC = ADIN 0
        movlw 0
        call RD@AD
        movwf adc
        movf PP7H,W
        movwf adcH
F1_000065 equ $ ; IN [PROTECTION.BAS] IF ADC <= LOW_VALUE THEN LOW_LOOP
        movf adcH,F
        btfss STATUS,2
        goto BC@LL15
        movlw 201
        subwf adc,W
        btfsc STATUS,0
        goto BC@LL15
        goto low_loop
BC@LL15
F1_000066 equ $ ; IN [PROTECTION.BAS] IF ADC >= HIGH_VALUE THEN HIGH_LOOP
        movlw 3
        subwf adcH,W
        btfss STATUS,0
        goto BC@LL17
        btfss STATUS,2
        goto CP@LB8
        movlw 32
        subwf adc,W
        btfss STATUS,0
        goto BC@LL17
CP@LB8
        goto high_loop
BC@LL17
F1_000067 equ $ ; IN [PROTECTION.BAS] RETURN
        return
F1_EOF equ $ ; PROTECTION.BAS
PB@LB19
        goto PB@LB19
__EOF
__config INTRC_OSC_NOCLKOUT&WDT_OFF&PWRTE_ON&BODEN_OFF&CP_ON&CPD_ON&MCLRE_OFF
        end
