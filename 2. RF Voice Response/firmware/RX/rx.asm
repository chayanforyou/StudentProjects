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
#define XTAL 8
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
#define _SYSTEM_VARIABLE_COUNT 25
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
GEN4H = 35
GENH = 36
GPR = 37
PP0 = 38
PP0H = 39
PP0HH = 40
PP0HHH = 41
PP1 = 42
PP1H = 43
PP2 = 44
PP2H = 45
PP2HH = 46
PP2HHH = 47
PP3 = 48
PP3H = 49
PP4 = 50
PP5 = 51
PPZ = 52
PPZH = 53
PPZHH = 54
PPZHHH = 55
RPFH = 56
dta = 57
#define __LCD_DTPORT PORTB
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __RSIN_PORT PORTC
#define buzz PORTC,4
#define _A dta,0
#define _B dta,1
#define _C dta,2
#define _D dta,3
#define _E dta,4
#define __XTAL 8
#define __LCD_DTPIN 4
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_INTERFACE 4
#define __RSIN_PIN 5
#define __RSIN_MODE 1
#define __SERIAL_BAUD 2400
#define __RSIN_TIMEOUT 1000
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
        movwf 39
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 51
        movlw 254
        call CH@SND
        movf 51,W
        goto CH@SND
IN@DEC32
        clrf 44
        clrf 45
        clrf 46
        clrf 47
        bcf 37,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 37,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 42
        clrf 41
        clrf 40
        clrf 39
        movlw 10
        movwf 38
        call AL@MUL
        movf 42,W
        addwf 38,W
        movwf 44
        movf 39,W
        movwf 45
        clrw
        skpnc
        movlw 1
        addwf 45,F
        movf 40,W
        movwf 46
        clrw
        skpnc
        movlw 1
        addwf 46,F
        movf 41,W
        movwf 47
        clrw
        skpnc
        movlw 1
        addwf 47,F
        decf 35,F
        skpnz
        goto IN@BNF32
        call CH@RCV
        skpc
        return
        addlw 198
        skpnc
        goto IN@BNF32
        addlw 10
        skpnc
        goto IN@DCL132
IN@BNF32
        btfss 37,5
        goto $ + 12
        comf 44,F
        comf 45,F
        comf 46,F
        comf 47,F
        incf 44,F
        skpnz
        incf 45,F
        skpnz
        incf 46,F
        skpnz
        incf 47,F
        movf 44,W
        setc
        goto I@NT
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
        movwf 39
        movlw 128
        call DLUS@W
        movlw 51
        movwf 48
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
        movf 48,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 48,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 49,W
        goto I@NT
RSIN_PORT = PORTC
RSIN_PIN = 5
RSIN_MODE = 1
SERIAL_BAUD = 2400
RSIN2
        movlw 232
        movwf 38
        movlw 3
        movwf 39
        clrf 42
        bsf 3,5
        bsf PORTC,5
        bcf 3,5
        nop
        btfsc PORTC,5
        goto RSIN@ST
        movlw 255
        addwf 42,F
        skpc
        addwf 38,F
        skpc
        addwf 39,F
        skpc
        goto I@NT
        incf 42,W
        movlw 100
        skpnz
        movwf 42
        nop
        goto $ + 1
        goto $ - 17
RSIN@ST
        clrf 39
        movlw 102
        call DLUS@W
        movlw 8
        movwf 43
        call SR@DLY
        bcf 3,0
        btfss PORTC,5
        bsf 3,0
        rrf 42,F
        nop
        goto $ + 1
        decfsz 43,F
        goto $ - 8
        call SR@DLY
        bsf 3,0
        movf 42,W
        goto I@NT
SR@DLY
        movlw 1
        movwf 39
        movlw 153
        goto DLUS@W
CH@SND
        btfsc 33,7
        goto PRINT
        return
CH@RCV
        movf 56,W
        xorlw 6
        skpnz
        goto RSIN2
DL@MS
        clrf 43
DLY@W
        movwf 42
DLY@P
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 39
DLUS@W
        addlw 244
        movwf 38
        comf 39,F
        movlw 254
        skpc
        goto $ + 4
        addwf 38,F
        skpnc
        goto $ - 2
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 6
        nop
        btfsc 38,0
        goto $ + 1
        btfsc 38,0
        goto $ + 1
        return
AL@MUL
        movlw 32
        movwf 48
        clrf 52
        clrf 53
        clrf 54
        clrf 55
MLT32@LP
        clrc
        btfss 38,0
        goto MLT32@BR
        movf 44,W
        addwf 52,F
        movf 45,W
        skpnc
        incfsz 45,W
        addwf 53,F
        movf 46,W
        skpnc
        incfsz 46,W
        addwf 54,F
        movf 47,W
        skpnc
        incfsz 47,W
        addwf 55,F
MLT32@BR
        rrf 55,F
        rrf 54,F
        rrf 53,F
        rrf 52,F
        rrf 41,F
        rrf 40,F
        rrf 39,F
        rrf 38,F
        decfsz 48,F
        goto MLT32@LP
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
F2_SOF equ $ ; ANTOR
F2_EOF equ $ ; ANTOR
F1_SOF equ $ ; ANTOR
F1_000022 equ $ ; IN [ANTOR] TRISC = %00100000
        movlw 32
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
F1_000023 equ $ ; IN [ANTOR] PORTC = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000025 equ $ ; IN [ANTOR] CLS
        call LCD@CLS
F1_000026 equ $ ; IN [ANTOR] PRINT AT 1,1, "RF/VOICE RESPONS"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 82
        call PRINT
        movlw 70
        call PRINT
        movlw 47
        call PRINT
        movlw 86
        call PRINT
        movlw 111
        call PRINT
        movlw 105
        call PRINT
        movlw 99
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        movlw 115
        call PRINT
        movlw 112
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        movlw 115
        call PRINT
F1_000027 equ $ ; IN [ANTOR] PRINT AT 2,1, "PLEASE WAIT.."
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
        movlw 119
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
F1_000028 equ $ ; IN [ANTOR] BUZZ = 0
        bcf PORTC,4
F1_000029 equ $ ; IN [ANTOR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
F1_000030 equ $ ; IN [ANTOR] CLS
        call LCD@CLS
F1_000038 equ $ ; IN [ANTOR] CLEAR DTA
        clrf dta
Main
F1_000041 equ $ ; IN [ANTOR] IF A = 1 THEN
        btfss dta,0
        goto BC@LL2
F1_000042 equ $ ; IN [ANTOR] PORTC.0 = 1
        bsf PORTC,0
F1_000043 equ $ ; IN [ANTOR] PRINT AT 1,1, "OUT1: 1"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 49
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 49
        call PRINT
        goto BC@LL3
BC@LL2
F1_000044 equ $ ; IN [ANTOR] ELSE
F1_000045 equ $ ; IN [ANTOR] PORTC.0 = 0
        bcf PORTC,0
F1_000046 equ $ ; IN [ANTOR] PRINT AT 1,1, "OUT1: 0"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 49
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 48
        call PRINT
F1_000047 equ $ ; IN [ANTOR] ENDIF
BC@LL3
F1_000048 equ $ ; IN [ANTOR] IF B = 1 THEN
        btfss dta,1
        goto BC@LL5
F1_000049 equ $ ; IN [ANTOR] PORTC.1 = 1
        bsf PORTC,1
F1_000050 equ $ ; IN [ANTOR] PRINT AT 2,1, "OUT2: 1"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 50
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 49
        call PRINT
        goto BC@LL6
BC@LL5
F1_000051 equ $ ; IN [ANTOR] ELSE
F1_000052 equ $ ; IN [ANTOR] PORTC.1 = 0
        bcf PORTC,1
F1_000053 equ $ ; IN [ANTOR] PRINT AT 2,1, "OUT2: 0"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 50
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 48
        call PRINT
F1_000054 equ $ ; IN [ANTOR] ENDIF
BC@LL6
F1_000055 equ $ ; IN [ANTOR] IF C = 1 THEN
        btfss dta,2
        goto BC@LL8
F1_000056 equ $ ; IN [ANTOR] PORTC.2 = 1
        bsf PORTC,2
F1_000057 equ $ ; IN [ANTOR] PRINT AT 1,10, "OUT3: 1"
        movlw 128
        movwf BPFH
        movlw 137
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 51
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 49
        call PRINT
        goto BC@LL9
BC@LL8
F1_000058 equ $ ; IN [ANTOR] ELSE
F1_000059 equ $ ; IN [ANTOR] PORTC.2 = 0
        bcf PORTC,2
F1_000060 equ $ ; IN [ANTOR] PRINT AT 1,10, "OUT3: 0"
        movlw 128
        movwf BPFH
        movlw 137
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 51
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 48
        call PRINT
F1_000061 equ $ ; IN [ANTOR] ENDIF
BC@LL9
F1_000062 equ $ ; IN [ANTOR] IF D = 1 THEN
        btfss dta,3
        goto BC@LL11
F1_000063 equ $ ; IN [ANTOR] PORTC.3 = 1
        bsf PORTC,3
F1_000064 equ $ ; IN [ANTOR] PRINT AT 2,10, "OUT4: 1"
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 52
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 49
        call PRINT
        goto BC@LL12
BC@LL11
F1_000065 equ $ ; IN [ANTOR] ELSE
F1_000066 equ $ ; IN [ANTOR] PORTC.3 = 0
        bcf PORTC,3
F1_000067 equ $ ; IN [ANTOR] PRINT AT 2,10, "OUT4: 0"
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        movlw 79
        call PRINT
        movlw 85
        call PRINT
        movlw 84
        call PRINT
        movlw 52
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 48
        call PRINT
F1_000068 equ $ ; IN [ANTOR] ENDIF
BC@LL12
F1_000069 equ $ ; IN [ANTOR] IF E = 1 THEN
        btfss dta,4
        goto BC@LL14
F1_000070 equ $ ; IN [ANTOR] PORTC.4 = 1
        bsf PORTC,4
F1_000071 equ $ ; IN [ANTOR] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        call DLY@W
F1_000072 equ $ ; IN [ANTOR] PORTC.4 = 0
        bcf PORTC,4
F1_000073 equ $ ; IN [ANTOR] E = 0
        bcf dta,4
F1_000074 equ $ ; IN [ANTOR] ENDIF
BC@LL14
F1_000075 equ $ ; IN [ANTOR] RSIN {TIME_OUT}, WAIT("Z"), DEC DTA
PB@LB16
        call RSIN2
        btfss STATUS,0
        goto Time_Out
        sublw 90
        btfss STATUS,2
        goto PB@LB16
        movlw 6
        movwf RPFH
        clrf GEN4H
        call IN@DEC32
        btfss STATUS,0
        goto Time_Out
        movwf dta
F1_000076 equ $ ; IN [ANTOR] DELAYMS 300
        movlw 1
        movwf PP1H
        movlw 44
        call DLY@W
Time_Out
F1_000078 equ $ ; IN [ANTOR] GOTO MAIN
        goto Main
F1_EOF equ $ ; ANTOR
PB@LB17
        goto PB@LB17
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
