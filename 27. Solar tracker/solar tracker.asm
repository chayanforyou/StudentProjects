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
#define _SYSTEM_VARIABLE_COUNT 32
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
#define LCD#LINES 2
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
PBP#VAR0 = 37
PBP#VAR0H = 38
PP0 = 39
PP0H = 40
PP0HH = 41
PP0HHH = 42
PP1 = 43
PP1H = 44
PP1HH = 45
PP1HHH = 46
PP2 = 47
PP2H = 48
PP2HH = 49
PP2HHH = 50
PP3 = 51
PP3H = 52
PP4 = 53
PP5 = 54
PP7 = 55
PP7H = 56
PP7HH = 57
PP7HHH = 58
PPZ = 59
PPZH = 60
PPZHH = 61
PPZHHH = 62
SP#P9 = 63
right = 64
rightH = 65
rightHH = 66
rightHHH = 67
down = 68
downH = 69
downHH = 70
downHHH = 71
up = 72
upH = 73
upHH = 74
upHHH = 75
left = 76
leftH = 77
leftHH = 78
leftHHH = 79
n_right = 80
n_down = 81
n_up = 82
n_left = 83
_I = 84
duty = 85
dutyH = 86
_B#VR1 = 87
rotate = 88
vertical = 89
verticalH = 90
dir = 91
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define motor_a PORTB,0
#define motor_b PORTB,1
#define servo_m PORTC,4
#define motor_pwm PORTC,3
#define led PORTC,5
#define butt PORTC,2
#define duty_f _B#VR1,0
#define auto_f _B#VR1,1
#define rotate_f _B#VR1,2
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __LCD_LINES 2
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
        movwf 40
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 54
        movlw 254
        call CH@SND
        movf 54,W
        goto CH@SND
OUT@DEC32
        bcf 32,3
        movf 36,W
        skpz
        goto $ + 4
        bsf 32,3
        movlw 10
        movwf 36
O@D32L1
        movf 58,W
        movwf 42
        movf 57,W
        movwf 41
        movf 56,W
        movwf 40
        movf 55,W
        movwf 39
        clrf 35
O@D32L2
        clrf 50
        clrf 49
        clrf 48
        movlw 10
        movwf 47
        call L@DIV
        incf 35,F
        movf 35,W
        subwf 36,W
        btfss 3,Z
        goto O@D32L2
        movf 47,W
        btfss 3,Z
        bcf 32,3
        btfss 32,3
        goto O@D32SKP
        decfsz 36,W
        goto O@D32L3
O@D32SKP
        movf 47,W
        addlw 48
        call CH@SND
O@D32L3
        decfsz 36,F
        goto O@D32L1
        goto I@NT
PRINT
        movwf 52
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 52,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 40
        movlw 128
        call DLUS@W
        movlw 51
        movwf 51
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
        movwf 51
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 52,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 51
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
        movf 51,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 51,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 52,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 51
        rlf 51,F
        rlf 51,F
        rlf 51,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 56
        movf 30,W
        movwf 55
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
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
        movwf 40
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 40
DLUS@W
        addlw 252
        movwf 39
        comf 40,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 39,F
        skpnc
        goto $ - 3
        addwf 39,F
        nop
        incfsz 40,F
        goto $ - 8
        return
L@DIV
L@MOD
        movf 42,W
        xorwf 50,W
        andlw 128
        movwf 52
        btfss 42,7
        goto DIVS@32X32SKIP1
        comf 39,F
        comf 40,F
        comf 41,F
        comf 42,F
        incf 39,F
        btfsc 3,2
        incf 40,F
        btfsc 3,2
        incf 41,F
        btfsc 3,2
        incf 42,F
DIVS@32X32SKIP1
        btfss 50,7
        goto DIVS@32X32SKIP2
        comf 47,F
        comf 48,F
        comf 49,F
        comf 50,F
        incf 47,F
        btfsc 3,2
        incf 48,F
        btfsc 3,2
        incf 49,F
        btfsc 3,2
        incf 50,F
DIVS@32X32SKIP2
        clrf 43
        clrf 44
        clrf 45
        clrf 46
        clrf 59
        clrf 60
        clrf 61
        clrf 62
        movf 50,W
        iorwf 49,W
        iorwf 48,W
        iorwf 47,W
        bz DIVS@32X32SKIP5
        movlw 32
        movwf 51
DIVS@32X32LOOP
        bcf 3,0
        rlf 39,F
        rlf 40,F
        rlf 41,F
        rlf 42,F
        rlf 59,F
        rlf 60,F
        rlf 61,F
        rlf 62,F
        movf 50,W
        subwf 62,W
        bnz DIVS@32X32SKIP3
        movf 49,W
        subwf 61,W
        bnz DIVS@32X32SKIP3
        movf 48,W
        subwf 60,W
        bnz DIVS@32X32SKIP3
        movf 47,W
        subwf 59,W
DIVS@32X32SKIP3
        bnc DIVS@32X32SKIP4
        movf 47,W
        subwf 59,F
        movf 48,W
        btfss 3,0
        incfsz 48,W
        subwf 60,F
        movf 49,W
        btfss 3,0
        incfsz 49,W
        subwf 61,F
        movf 50,W
        btfss 3,0
        incfsz 50,W
        subwf 62,F
        bsf 3,0
DIVS@32X32SKIP4
        rlf 43,F
        rlf 44,F
        rlf 45,F
        rlf 46,F
        decfsz 51,F
        goto DIVS@32X32LOOP
DIVS@32X32SKIP5
        btfss 52,7
        goto DIVS@32X32EXIT
        comf 43,F
        comf 44,F
        comf 45,F
        comf 46,F
        incf 43,F
        btfsc 3,2
        incf 44,F
        btfsc 3,2
        incf 45,F
        btfsc 3,2
        incf 46,F
DIVS@32X32EXIT
        movf 59,W
        movwf 47
        movf 60,W
        movwf 48
        movf 61,W
        movwf 49
        movf 62,W
        movwf 50
        movf 43,W
        movwf 39
        movf 44,W
        movwf 40
        movf 45,W
        movwf 41
        movf 46,W
        movwf 42
        goto I@NT
AL@MUL
        movlw 32
        movwf 51
        clrf 59
        clrf 60
        clrf 61
        clrf 62
MLT32@LP
        clrc
        btfss 39,0
        goto MLT32@BR
        movf 47,W
        addwf 59,F
        movf 48,W
        skpnc
        incfsz 48,W
        addwf 60,F
        movf 49,W
        skpnc
        incfsz 49,W
        addwf 61,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 62,F
MLT32@BR
        rrf 62,F
        rrf 61,F
        rrf 60,F
        rrf 59,F
        rrf 42,F
        rrf 41,F
        rrf 40,F
        rrf 39,F
        decfsz 51,F
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
F2_SOF equ $ ; SOLAR TRACKER.PRP
F2_EOF equ $ ; SOLAR TRACKER.PRP
F1_SOF equ $ ; SOLAR TRACKER.BAS
F1_000025 equ $ ; IN [SOLAR TRACKER.BAS] INPUT BUTT : OUTPUT LED
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,2
        bcf TRISC,5
F1_000026 equ $ ; IN [SOLAR TRACKER.BAS] OUTPUT SERVO_M : OUTPUT MOTOR_PWM
        bcf TRISC,4
        bcf TRISC,3
F1_000027 equ $ ; IN [SOLAR TRACKER.BAS] TRISB = 0 : PORTB = 0
        clrf TRISB
        bcf STATUS,5
ram_bank = 0
        clrf PORTB
F1_000028 equ $ ; IN [SOLAR TRACKER.BAS] PORTC = 0
        clrf PORTC
F1_000046 equ $ ; IN [SOLAR TRACKER.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
F1_000047 equ $ ; IN [SOLAR TRACKER.BAS] LED = 1
        bsf PORTC,5
F1_000048 equ $ ; IN [SOLAR TRACKER.BAS] AUTO_F = 1
        bsf _B#VR1,1
F1_000049 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = 800
        movlw 3
        movwf dutyH
        movlw 32
        movwf duty
F1_000050 equ $ ; IN [SOLAR TRACKER.BAS] ROTATE = 0
        clrf rotate
F1_000051 equ $ ; IN [SOLAR TRACKER.BAS] DIR = 100
        movlw 100
        movwf dir
F1_000052 equ $ ; IN [SOLAR TRACKER.BAS] CLS
        call LCD@CLS
F1_000053 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
calibration
F1_000056 equ $ ; IN [SOLAR TRACKER.BAS] FOR I = 0 TO 50
        clrf _I
FR@LB2
        movlw 51
        subwf _I,W
        btfsc STATUS,0
        goto NX@LB3
F1_000057 equ $ ; IN [SOLAR TRACKER.BAS] SERVO_M = 1
        bsf PORTC,4
F1_000058 equ $ ; IN [SOLAR TRACKER.BAS] DELAYUS 1300
        movlw 5
        movwf PP0H
        movlw 20
        call DLUS@W
F1_000059 equ $ ; IN [SOLAR TRACKER.BAS] SERVO_M = 0
        bcf PORTC,4
F1_000060 equ $ ; IN [SOLAR TRACKER.BAS] DELAYUS 17000
        movlw 66
        movwf PP0H
        movlw 104
        call DLUS@W
CT@LB4
F1_000061 equ $ ; IN [SOLAR TRACKER.BAS] NEXT
        movlw 1
        addwf _I,F
        btfss STATUS,0
        goto FR@LB2
NX@LB3
F1_000063 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB READ_LDR
        call read_LDR
F1_000064 equ $ ; IN [SOLAR TRACKER.BAS] N_RIGHT = RIGHT
        movf right,W
        movwf n_right
F1_000065 equ $ ; IN [SOLAR TRACKER.BAS] N_LEFT = LEFT
        movf left,W
        movwf n_left
F1_000066 equ $ ; IN [SOLAR TRACKER.BAS] N_UP = UP
        movf up,W
        movwf n_up
F1_000067 equ $ ; IN [SOLAR TRACKER.BAS] N_DOWN = DOWN
        movf down,W
        movwf n_down
main
F1_000071 equ $ ; IN [SOLAR TRACKER.BAS] IF BUTT = 1 THEN
        btfss PORTC,2
        goto BC@LL5
F1_000072 equ $ ; IN [SOLAR TRACKER.BAS] LED = ~LED
        movlw 32
        xorwf PORTC,F
F1_000073 equ $ ; IN [SOLAR TRACKER.BAS] AUTO_F = ~AUTO_F
        movlw 2
        xorwf _B#VR1,F
F1_000074 equ $ ; IN [SOLAR TRACKER.BAS] ROTATE = 0 : DIR = 100
        clrf rotate
        movlw 100
        movwf dir
F1_000075 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 300
        movlw 1
        movwf PP1H
        movlw 44
        call DLY@W
F1_000076 equ $ ; IN [SOLAR TRACKER.BAS] IF AUTO_F = 0 THEN DUTY = 800
        btfsc _B#VR1,1
        goto BC@LL7
        movlw 3
        movwf dutyH
        movlw 32
        movwf duty
BC@LL7
F1_000077 equ $ ; IN [SOLAR TRACKER.BAS] IF AUTO_F = 1 THEN GOTO CALIBRATION
        btfss _B#VR1,1
        goto BC@LL9
        goto calibration
BC@LL9
F1_000078 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL5
F1_000080 equ $ ; IN [SOLAR TRACKER.BAS] IF AUTO_F = 1 THEN
        btfss _B#VR1,1
        goto BC@LL11
F1_000081 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB READ_LDR
        call read_LDR
F1_000082 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB DATA_ANALIZE
        call data_analize
F1_000083 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB SERVO_ROTATION
        call servo_rotation
F1_000084 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB AUTO_DIR
        call auto_dir
        goto BC@LL12
BC@LL11
F1_000085 equ $ ; IN [SOLAR TRACKER.BAS] ELSE
F1_000086 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB MANNUAL
        call mannual
F1_000087 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL12
F1_000088 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000090 equ $ ; IN [SOLAR TRACKER.BAS] PRINT AT 1,1,"U: ", DEC3 UP, "  D: ", DEC3 DOWN
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 85
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf upHHH,W
        movwf PP7HHH
        movf upHH,W
        movwf PP7HH
        movf upH,W
        movwf PP7H
        movf up,W
        movwf PP7
        call OUT@DEC32
        movlw 32
        call PRINT
        call PRINT
        movlw 68
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf downHHH,W
        movwf PP7HHH
        movf downHH,W
        movwf PP7HH
        movf downH,W
        movwf PP7H
        movf down,W
        movwf PP7
        call OUT@DEC32
F1_000091 equ $ ; IN [SOLAR TRACKER.BAS] PRINT AT 2,1,"L: ", DEC3 LEFT, "  R: ", DEC3 RIGHT
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf leftHHH,W
        movwf PP7HHH
        movf leftHH,W
        movwf PP7HH
        movf leftH,W
        movwf PP7H
        movf left,W
        movwf PP7
        call OUT@DEC32
        movlw 32
        call PRINT
        call PRINT
        movlw 82
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf rightHHH,W
        movwf PP7HHH
        movf rightHH,W
        movwf PP7HH
        movf rightH,W
        movwf PP7H
        movf right,W
        movwf PP7
        call OUT@DEC32
F1_000092 equ $ ; IN [SOLAR TRACKER.BAS] GOTO MAIN
        goto main
auto_dir
F1_000095 equ $ ; IN [SOLAR TRACKER.BAS] IF DOWN > 30 AND RIGHT > 30 THEN
        btfsc downHHH,7
        goto CP@LB3
        movf downH,W
        iorwf downHH,W
        iorwf downHHH,W
        btfss STATUS,2
        goto CP@LB2
        movlw 31
        subwf down,W
        btfsc STATUS,0
        goto CP@LB2
CP@LB3
        clrw
        btfss STATUS,2
CP@LB2
        movlw 1
        movwf SP#P9
        btfsc rightHHH,7
        goto CP@LB5
        movf rightH,W
        iorwf rightHH,W
        iorwf rightHHH,W
        btfss STATUS,2
        goto CP@LB4
        movlw 31
        subwf right,W
        btfsc STATUS,0
        goto CP@LB4
CP@LB5
        clrw
        btfss STATUS,2
CP@LB4
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL14
F1_000096 equ $ ; IN [SOLAR TRACKER.BAS] WHILE DIR != 100
BC@LL15
        movlw 100
        subwf dir,W
        btfsc STATUS,2
        goto BC@LL16
F1_000097 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB ANTI_CLOCKWISE
        call anti_clockwise
F1_000098 equ $ ; IN [SOLAR TRACKER.BAS] WEND
        goto BC@LL15
BC@LL16
F1_000099 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL14
F1_000100 equ $ ; IN [SOLAR TRACKER.BAS] IF DOWN > 30 AND LEFT > 30 THEN
        btfsc downHHH,7
        goto CP@LB7
        movf downH,W
        iorwf downHH,W
        iorwf downHHH,W
        btfss STATUS,2
        goto CP@LB6
        movlw 31
        subwf down,W
        btfsc STATUS,0
        goto CP@LB6
CP@LB7
        clrw
        btfss STATUS,2
CP@LB6
        movlw 1
        movwf SP#P9
        btfsc leftHHH,7
        goto CP@LB9
        movf leftH,W
        iorwf leftHH,W
        iorwf leftHHH,W
        btfss STATUS,2
        goto CP@LB8
        movlw 31
        subwf left,W
        btfsc STATUS,0
        goto CP@LB8
CP@LB9
        clrw
        btfss STATUS,2
CP@LB8
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL18
F1_000101 equ $ ; IN [SOLAR TRACKER.BAS] WHILE DIR != 107
BC@LL19
        movlw 107
        subwf dir,W
        btfsc STATUS,2
        goto BC@LL20
F1_000102 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB CLOCKWISE
        call clockwise
F1_000103 equ $ ; IN [SOLAR TRACKER.BAS] WEND
        goto BC@LL19
BC@LL20
F1_000104 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL18
F1_000105 equ $ ; IN [SOLAR TRACKER.BAS] IF UP > 30 AND LEFT > 30 THEN
        btfsc upHHH,7
        goto CP@LB11
        movf upH,W
        iorwf upHH,W
        iorwf upHHH,W
        btfss STATUS,2
        goto CP@LB10
        movlw 31
        subwf up,W
        btfsc STATUS,0
        goto CP@LB10
CP@LB11
        clrw
        btfss STATUS,2
CP@LB10
        movlw 1
        movwf SP#P9
        btfsc leftHHH,7
        goto CP@LB13
        movf leftH,W
        iorwf leftHH,W
        iorwf leftHHH,W
        btfss STATUS,2
        goto CP@LB12
        movlw 31
        subwf left,W
        btfsc STATUS,0
        goto CP@LB12
CP@LB13
        clrw
        btfss STATUS,2
CP@LB12
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL22
F1_000106 equ $ ; IN [SOLAR TRACKER.BAS] WHILE DIR != 100
BC@LL23
        movlw 100
        subwf dir,W
        btfsc STATUS,2
        goto BC@LL24
F1_000107 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB ANTI_CLOCKWISE
        call anti_clockwise
F1_000108 equ $ ; IN [SOLAR TRACKER.BAS] WEND
        goto BC@LL23
BC@LL24
F1_000109 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL22
F1_000110 equ $ ; IN [SOLAR TRACKER.BAS] IF UP > 30 AND RIGHT > 30 THEN
        btfsc upHHH,7
        goto CP@LB15
        movf upH,W
        iorwf upHH,W
        iorwf upHHH,W
        btfss STATUS,2
        goto CP@LB14
        movlw 31
        subwf up,W
        btfsc STATUS,0
        goto CP@LB14
CP@LB15
        clrw
        btfss STATUS,2
CP@LB14
        movlw 1
        movwf SP#P9
        btfsc rightHHH,7
        goto CP@LB17
        movf rightH,W
        iorwf rightHH,W
        iorwf rightHHH,W
        btfss STATUS,2
        goto CP@LB16
        movlw 31
        subwf right,W
        btfsc STATUS,0
        goto CP@LB16
CP@LB17
        clrw
        btfss STATUS,2
CP@LB16
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL26
F1_000111 equ $ ; IN [SOLAR TRACKER.BAS] WHILE DIR != 107
BC@LL27
        movlw 107
        subwf dir,W
        btfsc STATUS,2
        goto BC@LL28
F1_000112 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB CLOCKWISE
        call clockwise
F1_000113 equ $ ; IN [SOLAR TRACKER.BAS] WEND
        goto BC@LL27
BC@LL28
F1_000114 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL26
F1_000115 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
mannual
F1_000118 equ $ ; IN [SOLAR TRACKER.BAS] IF DUTY > 2200 THEN DUTY_F = 0
        movlw 8
        subwf dutyH,W
        btfss STATUS,0
        goto BC@LL30
        btfss STATUS,2
        goto CP@LB18
        movlw 153
        subwf duty,W
        btfss STATUS,0
        goto BC@LL30
CP@LB18
        bcf _B#VR1,0
BC@LL30
F1_000119 equ $ ; IN [SOLAR TRACKER.BAS] IF DUTY < 500 THEN DUTY_F = 1
        movlw 1
        subwf dutyH,W
        movlw 244
        btfsc STATUS,2
        subwf duty,W
        btfsc STATUS,0
        goto BC@LL32
        bsf _B#VR1,0
BC@LL32
F1_000120 equ $ ; IN [SOLAR TRACKER.BAS] IF DUTY_F = 1 THEN
        btfss _B#VR1,0
        goto BC@LL34
F1_000121 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = DUTY + 10
        movlw 10
        addwf duty,F
        btfsc STATUS,0
        incf dutyH,F
        goto BC@LL35
BC@LL34
F1_000122 equ $ ; IN [SOLAR TRACKER.BAS] ELSE
F1_000123 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = DUTY - 10
        movlw 10
        subwf duty,F
        btfss STATUS,0
        decf dutyH,F
F1_000124 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL35
F1_000125 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB SERVO_ROTATION
        call servo_rotation
F1_000127 equ $ ; IN [SOLAR TRACKER.BAS] IF ROTATE > 60 THEN ROTATE_F = 0
        movlw 61
        subwf rotate,W
        btfss STATUS,0
        goto BC@LL37
        bcf _B#VR1,2
BC@LL37
F1_000128 equ $ ; IN [SOLAR TRACKER.BAS] IF ROTATE = 0 THEN ROTATE_F = 1
        movf rotate,F
        btfss STATUS,2
        goto BC@LL39
        bsf _B#VR1,2
BC@LL39
F1_000129 equ $ ; IN [SOLAR TRACKER.BAS] IF ROTATE_F = 1 THEN
        btfss _B#VR1,2
        goto BC@LL41
F1_000130 equ $ ; IN [SOLAR TRACKER.BAS] INC ROTATE
        incf rotate,F
F1_000131 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB CLOCKWISE
        call clockwise
        goto BC@LL42
BC@LL41
F1_000132 equ $ ; IN [SOLAR TRACKER.BAS] ELSE
F1_000133 equ $ ; IN [SOLAR TRACKER.BAS] DEC ROTATE
        decf rotate,F
F1_000134 equ $ ; IN [SOLAR TRACKER.BAS] GOSUB ANTI_CLOCKWISE
        call anti_clockwise
F1_000135 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL42
F1_000136 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
read_LDR
F1_000139 equ $ ; IN [SOLAR TRACKER.BAS] RIGHT = 255 - ADIN 2
        movlw 2
        call RD@AD
        movwf PBP#VAR0
        clrf PBP#VAR0H
        movf PBP#VAR0,W
        sublw 255
        movwf right
        movf PBP#VAR0H,W
        btfss STATUS,0
        addlw 1
        sublw 0
        movwf rightH
        clrf rightHH
        btfsc rightH,7
        decf rightHH,F
        movf rightHH,W
        movwf rightHHH
F1_000140 equ $ ; IN [SOLAR TRACKER.BAS] DOWN = 255 - ADIN 0
        movlw 0
        call RD@AD
        movwf PBP#VAR0
        clrf PBP#VAR0H
        movf PBP#VAR0,W
        sublw 255
        movwf down
        movf PBP#VAR0H,W
        btfss STATUS,0
        addlw 1
        sublw 0
        movwf downH
        clrf downHH
        btfsc downH,7
        decf downHH,F
        movf downHH,W
        movwf downHHH
F1_000141 equ $ ; IN [SOLAR TRACKER.BAS] UP = 255 - ADIN 3
        movlw 3
        call RD@AD
        movwf PBP#VAR0
        clrf PBP#VAR0H
        movf PBP#VAR0,W
        sublw 255
        movwf up
        movf PBP#VAR0H,W
        btfss STATUS,0
        addlw 1
        sublw 0
        movwf upH
        clrf upHH
        btfsc upH,7
        decf upHH,F
        movf upHH,W
        movwf upHHH
F1_000142 equ $ ; IN [SOLAR TRACKER.BAS] LEFT = 255 - ADIN 1
        movlw 1
        call RD@AD
        movwf PBP#VAR0
        clrf PBP#VAR0H
        movf PBP#VAR0,W
        sublw 255
        movwf left
        movf PBP#VAR0H,W
        btfss STATUS,0
        addlw 1
        sublw 0
        movwf leftH
        clrf leftHH
        btfsc leftH,7
        decf leftHH,F
        movf leftHH,W
        movwf leftHHH
F1_000143 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
data_analize
F1_000146 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = 1300
        movlw 5
        movwf dutyH
        movlw 20
        movwf duty
F1_000147 equ $ ; IN [SOLAR TRACKER.BAS] LEFT = LEFT - N_LEFT
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movf n_left,W
        movwf PP2
        subwf left,F
        movf PP2H,W
        btfss STATUS,0
        incfsz PP2H,W
        subwf leftH,F
        movf PP2HH,W
        btfss STATUS,0
        incfsz PP2HH,W
        subwf leftHH,F
        movf PP2HHH,W
        btfss STATUS,0
        incf PP2HHH,W
        subwf leftHHH,F
F1_000148 equ $ ; IN [SOLAR TRACKER.BAS] IF LEFT < 0 THEN LEFT = 0
        btfss leftHHH,7
        goto BC@LL44
        clrf leftHHH
        clrf leftHH
        clrf leftH
        clrf left
BC@LL44
F1_000149 equ $ ; IN [SOLAR TRACKER.BAS] RIGHT = RIGHT - N_RIGHT
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movf n_right,W
        movwf PP2
        subwf right,F
        movf PP2H,W
        btfss STATUS,0
        incfsz PP2H,W
        subwf rightH,F
        movf PP2HH,W
        btfss STATUS,0
        incfsz PP2HH,W
        subwf rightHH,F
        movf PP2HHH,W
        btfss STATUS,0
        incf PP2HHH,W
        subwf rightHHH,F
F1_000150 equ $ ; IN [SOLAR TRACKER.BAS] IF RIGHT < 0 THEN RIGHT = 0
        btfss rightHHH,7
        goto BC@LL46
        clrf rightHHH
        clrf rightHH
        clrf rightH
        clrf right
BC@LL46
F1_000151 equ $ ; IN [SOLAR TRACKER.BAS] UP = UP - N_UP
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movf n_up,W
        movwf PP2
        subwf up,F
        movf PP2H,W
        btfss STATUS,0
        incfsz PP2H,W
        subwf upH,F
        movf PP2HH,W
        btfss STATUS,0
        incfsz PP2HH,W
        subwf upHH,F
        movf PP2HHH,W
        btfss STATUS,0
        incf PP2HHH,W
        subwf upHHH,F
F1_000152 equ $ ; IN [SOLAR TRACKER.BAS] IF UP < 0 THEN UP = 0
        btfss upHHH,7
        goto BC@LL48
        clrf upHHH
        clrf upHH
        clrf upH
        clrf up
BC@LL48
F1_000153 equ $ ; IN [SOLAR TRACKER.BAS] DOWN = DOWN - N_DOWN
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movf n_down,W
        movwf PP2
        subwf down,F
        movf PP2H,W
        btfss STATUS,0
        incfsz PP2H,W
        subwf downH,F
        movf PP2HH,W
        btfss STATUS,0
        incfsz PP2HH,W
        subwf downHH,F
        movf PP2HHH,W
        btfss STATUS,0
        incf PP2HHH,W
        subwf downHHH,F
F1_000154 equ $ ; IN [SOLAR TRACKER.BAS] IF DOWN < 0 THEN DOWN = 0
        btfss downHHH,7
        goto BC@LL50
        clrf downHHH
        clrf downHH
        clrf downH
        clrf down
BC@LL50
F1_000156 equ $ ; IN [SOLAR TRACKER.BAS] IF UP > DOWN THEN
        movf downHHH,W
        xorlw 128
        movwf PP4
        movf upHHH,W
        xorlw 128
        subwf PP4,W
        btfss STATUS,2
        goto CP@LB24
        movf upHH,W
        subwf downHH,W
        btfss STATUS,2
        goto CP@LB24
        movf upH,W
        subwf downH,W
        btfss STATUS,2
        goto CP@LB24
        movf up,W
        subwf down,W
CP@LB24
        btfsc STATUS,0
        goto BC@LL52
F1_000157 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = DUTY - (UP * 3)
        movf upHHH,W
        movwf PP0HHH
        movf upHH,W
        movwf PP0HH
        movf upH,W
        movwf PP0H
        movf up,W
        movwf PP0
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movlw 3
        movwf PP2
        call AL@MUL
        movf PP0HHH,W
        movwf PP7HHH
        movf PP0HH,W
        movwf PP7HH
        movf PP0H,W
        movwf PP7H
        movf PP0,W
        movwf PP7
        movf PP7,W
        subwf duty,F
        movf PP7H,W
        btfss STATUS,0
        addlw 1
        subwf dutyH,F
        goto BC@LL53
BC@LL52
F1_000158 equ $ ; IN [SOLAR TRACKER.BAS] ELSE
F1_000159 equ $ ; IN [SOLAR TRACKER.BAS] DUTY = DUTY + (DOWN * 3)
        movf downHHH,W
        movwf PP0HHH
        movf downHH,W
        movwf PP0HH
        movf downH,W
        movwf PP0H
        movf down,W
        movwf PP0
        clrf PP2HHH
        clrf PP2HH
        clrf PP2H
        movlw 3
        movwf PP2
        call AL@MUL
        movf PP0HHH,W
        movwf PP7HHH
        movf PP0HH,W
        movwf PP7HH
        movf PP0H,W
        movwf PP7H
        movf PP0,W
        movwf PP7
        movf PP7,W
        addwf duty,F
        movf PP7H,W
        btfsc STATUS,0
        addlw 1
        addwf dutyH,F
F1_000160 equ $ ; IN [SOLAR TRACKER.BAS] ENDIF
BC@LL53
F1_000161 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
clockwise
F1_000164 equ $ ; IN [SOLAR TRACKER.BAS] FOR I = 0 TO 4
        clrf _I
FR@LB55
        movlw 5
        subwf _I,W
        btfsc STATUS,0
        goto NX@LB56
F1_000165 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_A = 0 : MOTOR_B = 1
        bcf PORTB,0
        bsf PORTB,1
F1_000166 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_PWM = 1
        bsf PORTC,3
F1_000167 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 5
        movlw 5
        call DL@MS
F1_000168 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_PWM = 0
        bcf PORTC,3
F1_000169 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 15
        movlw 15
        call DL@MS
CT@LB57
F1_000170 equ $ ; IN [SOLAR TRACKER.BAS] NEXT
        movlw 1
        addwf _I,F
        btfss STATUS,0
        goto FR@LB55
NX@LB56
F1_000171 equ $ ; IN [SOLAR TRACKER.BAS] DIR = DIR + 1
        incf dir,F
F1_000172 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
anti_clockwise
F1_000175 equ $ ; IN [SOLAR TRACKER.BAS] FOR I = 0 TO 4
        clrf _I
FR@LB58
        movlw 5
        subwf _I,W
        btfsc STATUS,0
        goto NX@LB59
F1_000176 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_A = 1 : MOTOR_B = 0
        bsf PORTB,0
        bcf PORTB,1
F1_000177 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_PWM = 1
        bsf PORTC,3
F1_000178 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 5
        movlw 5
        call DL@MS
F1_000179 equ $ ; IN [SOLAR TRACKER.BAS] MOTOR_PWM = 0
        bcf PORTC,3
F1_000180 equ $ ; IN [SOLAR TRACKER.BAS] DELAYMS 15
        movlw 15
        call DL@MS
CT@LB60
F1_000181 equ $ ; IN [SOLAR TRACKER.BAS] NEXT
        movlw 1
        addwf _I,F
        btfss STATUS,0
        goto FR@LB58
NX@LB59
F1_000182 equ $ ; IN [SOLAR TRACKER.BAS] DIR = DIR - 1
        decf dir,F
F1_000183 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
servo_rotation
F1_000186 equ $ ; IN [SOLAR TRACKER.BAS] FOR I = 0 TO 50
        clrf _I
FR@LB61
        movlw 51
        subwf _I,W
        btfsc STATUS,0
        goto NX@LB62
F1_000187 equ $ ; IN [SOLAR TRACKER.BAS] SERVO_M = 1
        bsf PORTC,4
F1_000188 equ $ ; IN [SOLAR TRACKER.BAS] DELAYUS DUTY
        movf dutyH,W
        movwf PP0H
        movf duty,W
        call DLUS@W
F1_000189 equ $ ; IN [SOLAR TRACKER.BAS] SERVO_M = 0
        bcf PORTC,4
F1_000190 equ $ ; IN [SOLAR TRACKER.BAS] DELAYUS 20000 - DUTY
        movf duty,W
        sublw 32
        movwf PP0
        movf dutyH,W
        btfss STATUS,0
        addlw 1
        sublw 78
        movwf PP0H
        movf PP0,W
        call DLUS@W
CT@LB63
F1_000191 equ $ ; IN [SOLAR TRACKER.BAS] NEXT
        movlw 1
        addwf _I,F
        btfss STATUS,0
        goto FR@LB61
NX@LB62
F1_000192 equ $ ; IN [SOLAR TRACKER.BAS] RETURN
        return
F1_EOF equ $ ; SOLAR TRACKER.BAS
PB@LB64
        goto PB@LB64
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
