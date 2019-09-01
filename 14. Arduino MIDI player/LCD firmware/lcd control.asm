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
#define _SYSTEM_VARIABLE_COUNT 24
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
GEN3 = 37
GEN3H = 38
GEN4 = 39
GEN4H = 40
GENH = 41
GPR = 42
PP0 = 43
PP0H = 44
PP1 = 45
PP1H = 46
PP2 = 47
PP2H = 48
PP3 = 49
PP3H = 50
PP4 = 51
PP5 = 52
PP5H = 53
PP7 = 54
PP7H = 55
midi = 56
music_key = 57
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define k1 PORTC,0
#define k2 PORTC,1
#define k3 PORTC,2
#define k4 PORTC,3
#define k5 PORTC,4
#define k6 PORTC,5
#define k7 PORTC,6
#define k8 PORTC,7
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
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
        movwf 44
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 52
        movlw 254
        call CH@SND
        movf 52,W
        goto CH@SND
OUT@DECB
        clrf 40
OUT@DECC
        movwf 47
        clrf 48
OUT@DEC
        bcf 32,3
        movf 40,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 39
        movlw 39
        movwf 46
        movlw 16
        call D@DIG
        movlw 3
        movwf 46
        movlw 232
        call D@DIG
        clrf 46
        movlw 100
        call D@DIG
        clrf 46
        movlw 10
        call D@DIG
        movf 47,W
        goto SEND@IT
D@DIG
        movwf 45
        movf 48,W
        movwf 44
        movf 47,W
        movwf 43
        call D@VD
        movf 43,W
SEND@IT
        movwf 43
        decf 39,F
        skpnz
        bcf 32,3
        movf 40,W
        skpnz
        goto $ + 4
        subwf 39,W
        skpnc
        goto EX@SEND@IT
        movf 43,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 50
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 50,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 44
        movlw 128
        call DLUS@W
        movlw 51
        movwf 49
        call PR@LP
        movlw 19
        movwf 44
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 49
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 50,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 49
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 44
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
        movf 49,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 49,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 50,W
        goto I@NT
SRIN@T
        movf 37,W
        movwf 43
        movf 38,W
        movwf 44
        movlw 1
        movwf 45
        nop
        call SRIN@B
        skpc
        goto SRIN@S
        decfsz 45,F
        goto $ - 5
        movlw 255
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        movlw 250
        movwf 45
        goto $ - 14
SERIN
        call SRIN@B
        skpnc
        goto SERIN
SRIN@S
        call SRIN@SD
        clrf 51
        movlw 8
        movwf 46
        call SRIN@D
        call SRIN@B
        skpnc
        incf 51,F
        btfss 53,5
        clrf 51
        rrf 45,F
        decfsz 46,F
        goto $ - 8
        btfsc 53,5
        bcf 45,7
        call SRIN@D
        bsf 3,0
        movf 45,W
        return
SRIN@B
        movf 34,W
        movwf 4
        movf 41,W
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        andwf 0,W
        btfsc 53,6
        xorwf 41,W
        addlw 255
        return
SEROUT
        movwf 49
SRO@X
        movf 34,W
        movwf 4
        clrf 42
        movlw 240
        andwf 42,F
        movlw 8
        movwf 50
        bcf 3,0
        skpnc
        incf 42,F
        call SRO@B
        rrf 49,F
        decfsz 50,F
        goto $ - 5
        nop
        btfsc 53,5
        rrf 42,W
        call SRO@B
        goto $ + 1
        bsf 3,0
        call SRO@B
        movf 38,W
        movwf 46
        movf 37,W
        call DLY@W
        goto I@NT
SRO@B
        bcf 4,7
        btfss 53,7
        goto $ + 13
        movf 0,W
        iorwf 41,W
        btfss 53,6
        xorwf 41,W
        movwf 0
        bsf 4,7
        movf 0,W
        iorwf 41,W
        skpc
        xorwf 41,W
        movwf 0
        goto SRIN@D
        movf 0,W
        iorwf 41,W
        skpc
        xorwf 41,W
        btfsc 53,6
        xorwf 41,W
        movwf 0
        bsf 4,7
        comf 41,W
        andwf 0,F
        goto SRIN@D
SRIN@SD
        bsf 42,6
SRIN@D
        movf 53,W
        andlw 31
        addlw 0
        movwf 44
        movf 52,W
        addlw 14
        skpnc
        incf 44,F
        btfss 42,6
        goto DLUS@W
        bcf 42,6
        movwf 43
        movlw 2
        call R@SH
        goto DLUS@W
CH@SND
        btfsc 33,7
        goto PRINT
        btfsc 33,5
        goto SEROUT
        return
DL@MS
        clrf 46
DLY@W
        movwf 45
DLY@P
        movlw 255
        addwf 45,F
        skpc
        addwf 46,F
        skpc
        goto I@NT
        movlw 3
        movwf 44
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 44
DLUS@W
        addlw 252
        movwf 43
        comf 44,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 43,F
        skpnc
        goto $ - 3
        addwf 43,F
        nop
        incfsz 44,F
        goto $ - 8
        return
D@VD
        clrf 48
        clrf 47
D@VD2
        movlw 16
        movwf 49
        rlf 44,W
        rlf 47,F
        rlf 48,F
        movf 45,W
        subwf 47,F
        movf 46,W
        skpc
        incfsz 46,W
        subwf 48,F
        skpnc
        goto $ + 8
        movf 45,W
        addwf 47,F
        movf 46,W
        skpnc
        incfsz 46,W
        addwf 48,F
        bcf 3,0
        rlf 43,F
        rlf 44,F
        decfsz 49,F
        goto $ - 21
        movf 43,W
        return
        bcf 3,0
        rrf 44,F
        rrf 43,F
R@SH
        addlw 255
        skpnc
        goto $ - 5
        movf 43,W
        goto I@NT
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        clrf 32
F2_SOF equ $ ; LCD CONTROL.PRP
F2_EOF equ $ ; LCD CONTROL.PRP
F1_SOF equ $ ; LCD CONTROL.BAS
F1_000012 equ $ ; IN [LCD CONTROL.BAS] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000026 equ $ ; IN [LCD CONTROL.BAS] TRISC = $FF
        movlw 255
        movwf TRISC
F1_000028 equ $ ; IN [LCD CONTROL.BAS] CLS
        bcf STATUS,5
ram_bank = 0
        call LCD@CLS
F1_000030 equ $ ; IN [LCD CONTROL.BAS] PRINT $FE,$40,0,14,17,17,17,14,0,0
        movlw 254
        call PRINT
        movlw 64
        call PRINT
        movlw 0
        call PRINT
        movlw 14
        call PRINT
        movlw 17
        call PRINT
        movlw 17
        call PRINT
        movlw 17
        call PRINT
        movlw 14
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
F1_000031 equ $ ; IN [LCD CONTROL.BAS] PRINT $FE,$48,0,14,31,31,31,14,0,0
        movlw 254
        call PRINT
        movlw 72
        call PRINT
        movlw 0
        call PRINT
        movlw 14
        call PRINT
        movlw 31
        call PRINT
        movlw 31
        call PRINT
        movlw 31
        call PRINT
        movlw 14
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
F1_000033 equ $ ; IN [LCD CONTROL.BAS] PRINT AT 1,1, "MUSIC: "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 77
        call PRINT
        movlw 117
        call PRINT
        movlw 115
        call PRINT
        movlw 105
        call PRINT
        movlw 99
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
F1_000037 equ $ ; IN [LCD CONTROL.BAS] MUSIC_KEY = 1 : MIDI = 0
        movlw 1
        movwf music_key
        clrf midi
main
F1_000040 equ $ ; IN [LCD CONTROL.BAS] SERIN PORTA.1, 16468, 200, OVER,[MIDI]
        movlw PORTA
        movwf GEN
        movlw 2
        movwf GENH
        movlw 64
        movwf PP5H
        movlw 84
        movwf PP5
        clrf GEN3H
        movlw 200
        movwf GEN3
        call SRIN@T
        btfss STATUS,0
        goto over
        movwf midi
over
F1_000042 equ $ ; IN [LCD CONTROL.BAS] SELECT CASE MIDI
F1_000043 equ $ ; IN [LCD CONTROL.BAS] CASE "0": PRINT AT 2,4, 0, 0, 0, 0, 0, 0, 0, 0, 0 : BREAK
        movlw 48
        subwf midi,W
        btfss STATUS,2
        goto BC@LL2
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 195
        call LCD@CRS
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL2
F1_000044 equ $ ; IN [LCD CONTROL.BAS] CASE "1": PRINT AT 2,4, 1 : BREAK
        movlw 49
        subwf midi,W
        btfss STATUS,2
        goto BC@LL5
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 195
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL5
F1_000045 equ $ ; IN [LCD CONTROL.BAS] CASE "2": PRINT AT 2,5, 1 : BREAK
        movlw 50
        subwf midi,W
        btfss STATUS,2
        goto BC@LL7
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 196
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL7
F1_000046 equ $ ; IN [LCD CONTROL.BAS] CASE "3": PRINT AT 2,6, 1 : BREAK
        movlw 51
        subwf midi,W
        btfss STATUS,2
        goto BC@LL9
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 197
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL9
F1_000047 equ $ ; IN [LCD CONTROL.BAS] CASE "4": PRINT AT 2,7, 1 : BREAK
        movlw 52
        subwf midi,W
        btfss STATUS,2
        goto BC@LL11
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 198
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL11
F1_000048 equ $ ; IN [LCD CONTROL.BAS] CASE "5": PRINT AT 2,8, 1 : BREAK
        movlw 53
        subwf midi,W
        btfss STATUS,2
        goto BC@LL13
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 199
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL13
F1_000049 equ $ ; IN [LCD CONTROL.BAS] CASE "6": PRINT AT 2,9, 1 : BREAK
        movlw 54
        subwf midi,W
        btfss STATUS,2
        goto BC@LL15
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 200
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL15
F1_000050 equ $ ; IN [LCD CONTROL.BAS] CASE "7": PRINT AT 2,10, 1 : BREAK
        movlw 55
        subwf midi,W
        btfss STATUS,2
        goto BC@LL17
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL17
F1_000051 equ $ ; IN [LCD CONTROL.BAS] CASE "8": PRINT AT 2,11, 1 : BREAK
        movlw 56
        subwf midi,W
        btfss STATUS,2
        goto BC@LL19
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
        goto BC@LL1
BC@LL19
F1_000052 equ $ ; IN [LCD CONTROL.BAS] CASE "9": PRINT AT 2,12, 1 : BREAK
        movlw 57
        subwf midi,W
        btfss STATUS,2
        goto BC@LL21
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 203
        call LCD@CRS
        movlw 1
        call PRINT
        goto BC@LL1
F1_000053 equ $ ; IN [LCD CONTROL.BAS] END SELECT
BC@LL21
BC@LL1
F1_000055 equ $ ; IN [LCD CONTROL.BAS] IF K1 = 1 THEN MUSIC_KEY = 1
        btfss PORTC,0
        goto BC@LL23
        movlw 1
        movwf music_key
BC@LL23
F1_000056 equ $ ; IN [LCD CONTROL.BAS] IF K2 = 1 THEN MUSIC_KEY = 2
        btfss PORTC,1
        goto BC@LL25
        movlw 2
        movwf music_key
BC@LL25
F1_000057 equ $ ; IN [LCD CONTROL.BAS] IF K3 = 1 THEN MUSIC_KEY = 3
        btfss PORTC,2
        goto BC@LL27
        movlw 3
        movwf music_key
BC@LL27
F1_000058 equ $ ; IN [LCD CONTROL.BAS] IF K4 = 1 THEN MUSIC_KEY = 4
        btfss PORTC,3
        goto BC@LL29
        movlw 4
        movwf music_key
BC@LL29
F1_000059 equ $ ; IN [LCD CONTROL.BAS] IF K5 = 1 THEN MUSIC_KEY = 5
        btfss PORTC,4
        goto BC@LL31
        movlw 5
        movwf music_key
BC@LL31
F1_000060 equ $ ; IN [LCD CONTROL.BAS] IF K6 = 1 THEN MUSIC_KEY = 6
        btfss PORTC,5
        goto BC@LL33
        movlw 6
        movwf music_key
BC@LL33
F1_000061 equ $ ; IN [LCD CONTROL.BAS] IF K7 = 1 THEN MUSIC_KEY = 7
        btfss PORTC,6
        goto BC@LL35
        movlw 7
        movwf music_key
BC@LL35
F1_000062 equ $ ; IN [LCD CONTROL.BAS] IF K8 = 1 THEN MUSIC_KEY = 8
        btfss PORTC,7
        goto BC@LL37
        movlw 8
        movwf music_key
BC@LL37
F1_000064 equ $ ; IN [LCD CONTROL.BAS] SEROUT PORTA.0, 16468,[DEC MUSIC_KEY]
        movlw PORTA
        movwf GEN
        movlw 1
        movwf GENH
        movlw 64
        movwf PP5H
        movlw 84
        movwf PP5
        clrf GEN3H
        clrf GEN3
        movlw 32
        movwf BPFH
        movf music_key,W
        call OUT@DECB
F1_000066 equ $ ; IN [LCD CONTROL.BAS] SELECT CASE MUSIC_KEY
F1_000067 equ $ ; IN [LCD CONTROL.BAS] CASE 1: PRINT AT 1,8, "CLAP   " : BREAK
        movlw 1
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL39
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 108
        call PRINT
        movlw 97
        call PRINT
        movlw 112
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL39
F1_000068 equ $ ; IN [LCD CONTROL.BAS] CASE 2: PRINT AT 1,8, "GUITER " : BREAK
        movlw 2
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL42
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 71
        call PRINT
        movlw 117
        call PRINT
        movlw 105
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 114
        call PRINT
        movlw 32
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL42
F1_000069 equ $ ; IN [LCD CONTROL.BAS] CASE 3: PRINT AT 1,8, "HATS   " : BREAK
        movlw 3
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL44
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 72
        call PRINT
        movlw 97
        call PRINT
        movlw 116
        call PRINT
        movlw 115
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL44
F1_000070 equ $ ; IN [LCD CONTROL.BAS] CASE 4: PRINT AT 1,8, "KICK   " : BREAK
        movlw 4
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL46
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 75
        call PRINT
        movlw 105
        call PRINT
        movlw 99
        call PRINT
        movlw 107
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL46
F1_000071 equ $ ; IN [LCD CONTROL.BAS] CASE 5: PRINT AT 1,8, "CUSSION" : BREAK
        movlw 5
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL48
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 67
        call PRINT
        movlw 117
        call PRINT
        movlw 115
        call PRINT
        call PRINT
        movlw 105
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL48
F1_000072 equ $ ; IN [LCD CONTROL.BAS] CASE 6: PRINT AT 1,8, "PIANO  " : BREAK
        movlw 6
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL50
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 80
        call PRINT
        movlw 105
        call PRINT
        movlw 97
        call PRINT
        movlw 110
        call PRINT
        movlw 111
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL50
F1_000073 equ $ ; IN [LCD CONTROL.BAS] CASE 7: PRINT AT 1,8, "SNARE  " : BREAK
        movlw 7
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL52
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 110
        call PRINT
        movlw 97
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        goto BC@LL38
        goto BC@LL38
BC@LL52
F1_000074 equ $ ; IN [LCD CONTROL.BAS] CASE 8: PRINT AT 1,8, "TOMS   " : BREAK
        movlw 8
        subwf music_key,W
        btfss STATUS,2
        goto BC@LL54
ram_bank = 0
        movlw 128
        movwf BPFH
        movlw 135
        call LCD@CRS
        movlw 84
        call PRINT
        movlw 111
        call PRINT
        movlw 109
        call PRINT
        movlw 115
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
        goto BC@LL38
F1_000075 equ $ ; IN [LCD CONTROL.BAS] END SELECT
BC@LL54
BC@LL38
F1_000077 equ $ ; IN [LCD CONTROL.BAS] GOTO MAIN
        goto main
F1_EOF equ $ ; LCD CONTROL.BAS
PB@LB56
        goto PB@LB56
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
