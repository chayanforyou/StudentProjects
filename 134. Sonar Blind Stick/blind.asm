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
PP0 = 33
PP0H = 34
PP1 = 35
PP1H = 36
PP2 = 37
PP2H = 38
PP3 = 39
PP7 = 40
PP7H = 41
range_F = 42
range_FH = 43
range_L = 44
range_LH = 45
range_R = 46
range_RH = 47
#define ECHO_F PORTC,7
#define TRIG_F PORTC,6
#define ECHO_L PORTB,7
#define TRIG_L PORTB,6
#define ECHO_R PORTC,5
#define TRIG_R PORTC,4
#define buzz_L PORTA,1
#define buzz_R PORTC,3
#define __XTAL 20
proton#code#start
        org 0
        goto proton#main#start
P@OUT
        movwf 32
        xorlw 255
        bsf 4,7
        andwf 0,F
        movf 33,W
        iorwf 34,W
        skpnz
        goto I@NT
        call N@GT
        bcf 4,7
        movf 32,W
        xorwf 0,F
        goto $ + 1
        nop
        goto $ + 1
        incf 33,F
        skpnz
        incfsz 34,F
        goto $ - 6
        xorwf 0,F
        goto I@NT
P@IN
        movwf 32
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 35
        btfss 33,0
        movwf 35
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 32,W
        xorwf 35,F
        movlw 1
        movwf 33
        clrf 34
        movf 0,W
        andwf 32,W
        xorwf 35,W
        skpz
        return
        incf 33,F
        skpnz
        incfsz 34,F
        goto $ - 8
        return
DL@MS
        clrf 36
DLY@W
        movwf 35
DLY@P
        movlw 255
        addwf 35,F
        skpc
        addwf 36,F
        skpc
        goto I@NT
        movlw 3
        movwf 34
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 34
DLUS@W
        addlw 252
        movwf 33
        comf 34,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 33,F
        skpnc
        goto $ - 3
        addwf 33,F
        nop
        incfsz 34,F
        goto $ - 8
        return
D@VD
        clrf 38
        clrf 37
D@VD2
        movlw 16
        movwf 39
        rlf 34,W
        rlf 37,F
        rlf 38,F
        movf 35,W
        subwf 37,F
        movf 36,W
        skpc
        incfsz 36,W
        subwf 38,F
        skpnc
        goto $ + 8
        movf 35,W
        addwf 37,F
        movf 36,W
        skpnc
        incfsz 36,W
        addwf 38,F
        bcf 3,0
        rlf 33,F
        rlf 34,F
        decfsz 39,F
        goto $ - 21
        movf 33,W
        return
N@GT
        comf 33,F
        comf 34,F
        incf 33,F
        skpnz
        incf 34,F
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
F2_SOF equ $ ; BLIND.PRP
F2_EOF equ $ ; BLIND.PRP
F1_SOF equ $ ; BLIND.BAS
F1_000012 equ $ ; IN [BLIND.BAS] ALL_DIGITAL = ON
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000022 equ $ ; IN [BLIND.BAS] OUTPUT BUZZ_R : BUZZ_R = 0
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000023 equ $ ; IN [BLIND.BAS] OUTPUT BUZZ_L : BUZZ_L = 0
        bsf STATUS,5
ram_bank = 1
        bcf TRISA,1
        bcf STATUS,5
ram_bank = 0
        bcf PORTA,1
F1_000030 equ $ ; IN [BLIND.BAS] OUTPUT TRIG_F : INPUT ECHO_F
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,6
        bsf TRISC,7
F1_000031 equ $ ; IN [BLIND.BAS] OUTPUT TRIG_L : INPUT ECHO_L
        bcf TRISB,6
        bsf TRISB,7
F1_000032 equ $ ; IN [BLIND.BAS] OUTPUT TRIG_R : INPUT ECHO_R
        bcf TRISC,4
        bsf TRISC,5
F1_000034 equ $ ; IN [BLIND.BAS] RANGE_F = 0 : RANGE_L = 0 : RANGE_R = 0
        bcf STATUS,5
ram_bank = 0
        clrf range_FH
        clrf range_F
        clrf range_LH
        clrf range_L
        clrf range_RH
        clrf range_R
main
F1_000037 equ $ ; IN [BLIND.BAS] PULSOUT TRIG_F, 10, HIGH
        clrf PP0H
        movlw 10
        movwf PP0
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,6
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,6
        movlw 7
        movwf FSR
        movlw 64
        call P@OUT
F1_000038 equ $ ; IN [BLIND.BAS] RANGE_F = PULSIN ECHO_F, 1
        movlw 1
        movwf PP0
        movlw 7
        movwf FSR
        movlw 128
        call P@IN
        movf PP0H,W
        movwf range_FH
        movf PP0,W
        movwf range_F
F1_000039 equ $ ; IN [BLIND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000040 equ $ ; IN [BLIND.BAS] RANGE_F = (RANGE_F * 2) / 58
        bcf STATUS,0
        rlf range_F,W
        movwf PP7
        rlf range_FH,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 58
        movwf PP1
        call D@VD
        movwf range_F
        movf PP0H,W
        movwf range_FH
F1_000042 equ $ ; IN [BLIND.BAS] IF RANGE_F > 24 THEN
        movf range_FH,F
        btfss STATUS,2
        goto CP@LB2
        movlw 25
        subwf range_F,W
        btfss STATUS,0
        goto BC@LL2
CP@LB2
F1_000043 equ $ ; IN [BLIND.BAS] BUZZ_L = 0 : BUZZ_R = 0
        bcf PORTA,1
        bcf PORTC,3
        goto BC@LL3
BC@LL2
F1_000044 equ $ ; IN [BLIND.BAS] ELSE
F1_000045 equ $ ; IN [BLIND.BAS] BUZZ_L = 1 : BUZZ_R = 1
        bsf PORTA,1
        bsf PORTC,3
F1_000046 equ $ ; IN [BLIND.BAS] ENDIF
BC@LL3
F1_000048 equ $ ; IN [BLIND.BAS] PULSOUT TRIG_L, 10, HIGH
        clrf PP0H
        movlw 10
        movwf PP0
        bsf STATUS,5
ram_bank = 1
        bcf TRISB,6
        bcf STATUS,5
ram_bank = 0
        bcf PORTB,6
        movlw 6
        movwf FSR
        movlw 64
        call P@OUT
F1_000049 equ $ ; IN [BLIND.BAS] RANGE_L = PULSIN ECHO_L, 1
        movlw 1
        movwf PP0
        movlw 6
        movwf FSR
        movlw 128
        call P@IN
        movf PP0H,W
        movwf range_LH
        movf PP0,W
        movwf range_L
F1_000050 equ $ ; IN [BLIND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000051 equ $ ; IN [BLIND.BAS] RANGE_L = (RANGE_L * 2) / 58
        bcf STATUS,0
        rlf range_L,W
        movwf PP7
        rlf range_LH,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 58
        movwf PP1
        call D@VD
        movwf range_L
        movf PP0H,W
        movwf range_LH
F1_000053 equ $ ; IN [BLIND.BAS] IF RANGE_L > 24 THEN
        movf range_LH,F
        btfss STATUS,2
        goto CP@LB3
        movlw 25
        subwf range_L,W
        btfss STATUS,0
        goto BC@LL5
CP@LB3
F1_000054 equ $ ; IN [BLIND.BAS] BUZZ_L = 0
        bcf PORTA,1
        goto BC@LL6
BC@LL5
F1_000055 equ $ ; IN [BLIND.BAS] ELSE
F1_000056 equ $ ; IN [BLIND.BAS] BUZZ_L = 1
        bsf PORTA,1
F1_000057 equ $ ; IN [BLIND.BAS] ENDIF
BC@LL6
F1_000059 equ $ ; IN [BLIND.BAS] PULSOUT TRIG_R, 10, HIGH
        clrf PP0H
        movlw 10
        movwf PP0
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
        movlw 7
        movwf FSR
        movlw 16
        call P@OUT
F1_000060 equ $ ; IN [BLIND.BAS] RANGE_R = PULSIN ECHO_R, 1
        movlw 1
        movwf PP0
        movlw 7
        movwf FSR
        movlw 32
        call P@IN
        movf PP0H,W
        movwf range_RH
        movf PP0,W
        movwf range_R
F1_000061 equ $ ; IN [BLIND.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000062 equ $ ; IN [BLIND.BAS] RANGE_R = (RANGE_R * 2) / 58
        bcf STATUS,0
        rlf range_R,W
        movwf PP7
        rlf range_RH,W
        movwf PP7H
        movf PP7H,W
        movwf PP0H
        movf PP7,W
        movwf PP0
        clrf PP1H
        movlw 58
        movwf PP1
        call D@VD
        movwf range_R
        movf PP0H,W
        movwf range_RH
F1_000064 equ $ ; IN [BLIND.BAS] IF RANGE_R > 24 THEN
        movf range_RH,F
        btfss STATUS,2
        goto CP@LB4
        movlw 25
        subwf range_R,W
        btfss STATUS,0
        goto BC@LL8
CP@LB4
F1_000065 equ $ ; IN [BLIND.BAS] BUZZ_R = 0
        bcf PORTC,3
        goto BC@LL9
BC@LL8
F1_000066 equ $ ; IN [BLIND.BAS] ELSE
F1_000067 equ $ ; IN [BLIND.BAS] BUZZ_R = 1
        bsf PORTC,3
F1_000068 equ $ ; IN [BLIND.BAS] ENDIF
BC@LL9
F1_000070 equ $ ; IN [BLIND.BAS] GOTO MAIN
        goto main
F1_EOF equ $ ; BLIND.BAS
PB@LB11
        goto PB@LB11
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
