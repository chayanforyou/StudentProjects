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
#define _SYSTEM_VARIABLE_COUNT 44
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
GEN4 = 35
GEN4H = 36
PP0 = 37
PP0H = 38
PP0HH = 39
PP0HHH = 40
PP1 = 41
PP1H = 42
PP1HH = 43
PP1HHH = 44
PP2 = 45
PP2H = 46
PP2HH = 47
PP2HHH = 48
PP3 = 49
PP3H = 50
PP4 = 51
PP5 = 52
PP6 = 53
PP7 = 54
PP7H = 55
PP7HH = 56
PP7HHH = 57
PPZ = 58
PPZH = 59
PPZHH = 60
PPZHHH = 61
PP_AARG = 62
PP_AARGH = 63
PP_AARGHH = 64
PP_AARGHHH = 65
PP_BARG = 66
PP_BARGH = 67
PP_BARGHH = 68
PP_BARGHHH = 69
SP#P9 = 70
_AEXP = 71
_BEXP = 72
_FP_FLAGS = 73
_FP_TEMP = 74
_SIGN = 75
Hx711Cnt = 76
Hx711CntH = 77
Hx711CntHH = 78
Hx711CntHHH = 79
_I = 80
gram = 81
gramH = 82
sonar_read = 83
sonar_readH = 84
distance = 85
distanceH = 86
distanceHH = 87
distanceHHH = 88
human = 89
_B#VR1 = 90
pos = 91
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define IR_butt PORTA,0
#define sonar_butt PORTA,1
#define weight_butt PORTA,2
#define IR_sensor PORTA,4
#define s_motor PORTA,5
#define buzzer PORTC,5
#define echo PORTC,6
#define Trigger PORTC,7
#define motor PORTB,0
#define dataa PORTC,4
#define clock PORTC,3
#define gate_flag _B#VR1,0
#define IR_mode _B#VR1,1
#define sonar_mode _B#VR1,2
#define weight_mode _B#VR1,3
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
        movwf 38
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
        clrf 36
OUT@DECC
        movwf 45
        clrf 46
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
        movf 45,W
        goto SEND@IT
D@DIG
        movwf 41
        movf 46,W
        movwf 38
        movf 45,W
        movwf 37
        call D@VD
        movf 37,W
SEND@IT
        movwf 37
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 37,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
OUT@FLOAT
        movwf 71
        btfss 55,7
        goto $ + 3
        movlw 45
        call CH@SND
        incfsz 57,F
        goto $ + 6
        incfsz 56,F
        goto $ + 4
        incf 55,F
        btfsc 3,2
        incf 55,F
        clrf 62
        clrf 63
        clrf 64
        clrf 65
        bsf 55,7
        movlw 106
        addwf 54,F
        bcf 3,0
        rrf 55,F
        rrf 56,F
        rrf 57,F
        rrf 65,F
        rrf 64,F
        rrf 63,F
        rrf 62,F
        incfsz 54,F
        goto $ - 9
        movf 57,W
        subwf 54,W
        addwf 57,F
        subwf 54,F
        movf 56,W
        subwf 55,W
        addwf 56,F
        subwf 55,F
        clrf 36
        call OUT@DEC32
        movlw 46
        call CH@SND
FL@OUT
        clrf 72
        bcf 3,0
        rlf 62,W
        movwf 57
        rlf 63,W
        movwf 56
        rlf 64,W
        movwf 55
        rlf 65,W
        movwf 54
        rlf 72,F
        bcf 3,0
        rlf 57,F
        rlf 56,F
        rlf 55,F
        rlf 54,F
        rlf 72,F
        movf 62,W
        addwf 57,F
        movf 63,W
        btfsc 3,0
        incfsz 63,W
        addwf 56,F
        movf 64,W
        btfsc 3,0
        incfsz 64,W
        addwf 55,F
        movf 65,W
        btfsc 3,0
        incfsz 65,W
        addwf 54,F
        btfsc 3,0
        incfsz 72,F
        bcf 3,0
        rlf 57,F
        rlf 56,F
        rlf 55,F
        rlf 54,F
        rlf 72,F
        movf 72,W
        addlw 48
        call CH@SND
        movf 57,W
        movwf 62
        movf 56,W
        movwf 63
        movf 55,W
        movwf 64
        movf 54,W
        movwf 65
        decfsz 71,F
        goto FL@OUT
        bcf 3,0
        goto I@NT
OUT@DEC32
        bcf 32,3
        movf 36,W
        skpz
        goto $ + 4
        bsf 32,3
        movlw 10
        movwf 36
O@D32L1
        movf 57,W
        movwf 40
        movf 56,W
        movwf 39
        movf 55,W
        movwf 38
        movf 54,W
        movwf 37
        clrf 35
O@D32L2
        clrf 48
        clrf 47
        clrf 46
        movlw 10
        movwf 45
        call L@DIV
        incf 35,F
        movf 35,W
        subwf 36,W
        btfss 3,Z
        goto O@D32L2
        movf 45,W
        btfss 3,Z
        bcf 32,3
        btfss 32,3
        goto O@D32SKP
        decfsz 36,W
        goto O@D32L3
O@D32SKP
        movf 45,W
        addlw 48
        call CH@SND
O@D32L3
        decfsz 36,F
        goto O@D32L1
        goto I@NT
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
        movwf 38
        movlw 128
        call DLUS@W
        movlw 51
        movwf 49
        call PR@LP
        movlw 19
        movwf 38
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
        movwf 38
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
CH@SND
        btfsc 33,7
        goto PRINT
        return
P@OUT
        movwf 34
        xorlw 255
        bsf 4,7
        andwf 0,F
        movf 37,W
        iorwf 38,W
        skpnz
        goto I@NT
        call N@GT
        bcf 4,7
        movf 34,W
        xorwf 0,F
        goto $ + 1
        nop
        goto $ + 1
        incf 37,F
        skpnz
        incfsz 38,F
        goto $ - 6
        xorwf 0,F
        goto I@NT
P@IN
        movwf 34
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 41
        btfss 37,0
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
        movwf 37
        clrf 38
        movf 0,W
        andwf 34,W
        xorwf 41,W
        skpz
        return
        incf 37,F
        skpnz
        incfsz 38,F
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
        movwf 38
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 38
DLUS@W
        addlw 252
        movwf 37
        comf 38,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 37,F
        skpnc
        goto $ - 3
        addwf 37,F
        nop
        incfsz 38,F
        goto $ - 8
        return
L@DIV
L@MOD
        movf 40,W
        xorwf 48,W
        andlw 128
        movwf 50
        btfss 40,7
        goto DIVS@32X32SKIP1
        comf 37,F
        comf 38,F
        comf 39,F
        comf 40,F
        incf 37,F
        btfsc 3,2
        incf 38,F
        btfsc 3,2
        incf 39,F
        btfsc 3,2
        incf 40,F
DIVS@32X32SKIP1
        btfss 48,7
        goto DIVS@32X32SKIP2
        comf 45,F
        comf 46,F
        comf 47,F
        comf 48,F
        incf 45,F
        btfsc 3,2
        incf 46,F
        btfsc 3,2
        incf 47,F
        btfsc 3,2
        incf 48,F
DIVS@32X32SKIP2
        clrf 41
        clrf 42
        clrf 43
        clrf 44
        clrf 58
        clrf 59
        clrf 60
        clrf 61
        movf 48,W
        iorwf 47,W
        iorwf 46,W
        iorwf 45,W
        bz DIVS@32X32SKIP5
        movlw 32
        movwf 49
DIVS@32X32LOOP
        bcf 3,0
        rlf 37,F
        rlf 38,F
        rlf 39,F
        rlf 40,F
        rlf 58,F
        rlf 59,F
        rlf 60,F
        rlf 61,F
        movf 48,W
        subwf 61,W
        bnz DIVS@32X32SKIP3
        movf 47,W
        subwf 60,W
        bnz DIVS@32X32SKIP3
        movf 46,W
        subwf 59,W
        bnz DIVS@32X32SKIP3
        movf 45,W
        subwf 58,W
DIVS@32X32SKIP3
        bnc DIVS@32X32SKIP4
        movf 45,W
        subwf 58,F
        movf 46,W
        btfss 3,0
        incfsz 46,W
        subwf 59,F
        movf 47,W
        btfss 3,0
        incfsz 47,W
        subwf 60,F
        movf 48,W
        btfss 3,0
        incfsz 48,W
        subwf 61,F
        bsf 3,0
DIVS@32X32SKIP4
        rlf 41,F
        rlf 42,F
        rlf 43,F
        rlf 44,F
        decfsz 49,F
        goto DIVS@32X32LOOP
DIVS@32X32SKIP5
        btfss 50,7
        goto DIVS@32X32EXIT
        comf 41,F
        comf 42,F
        comf 43,F
        comf 44,F
        incf 41,F
        btfsc 3,2
        incf 42,F
        btfsc 3,2
        incf 43,F
        btfsc 3,2
        incf 44,F
DIVS@32X32EXIT
        movf 58,W
        movwf 45
        movf 59,W
        movwf 46
        movf 60,W
        movwf 47
        movf 61,W
        movwf 48
        movf 41,W
        movwf 37
        movf 42,W
        movwf 38
        movf 43,W
        movwf 39
        movf 44,W
        movwf 40
        goto I@NT
D@VD
        clrf 46
        clrf 45
D@VD2
        movlw 16
        movwf 49
        rlf 38,W
        rlf 45,F
        rlf 46,F
        movf 41,W
        subwf 45,F
        movf 42,W
        skpc
        incfsz 42,W
        subwf 46,F
        skpnc
        goto $ + 8
        movf 41,W
        addwf 45,F
        movf 42,W
        skpnc
        incfsz 42,W
        addwf 46,F
        bcf 3,0
        rlf 37,F
        rlf 38,F
        decfsz 49,F
        goto $ - 21
        movf 37,W
        return
N@GT
        comf 37,F
        comf 38,F
        incf 37,F
        skpnz
        incf 38,F
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
FPD@32
        movf 63,W
        movwf 60
        xorwf 67,W
        movwf 75
        movf 66,F
        btfsc 3,2
        goto FPD@DIV0
        movf 62,F
        btfsc 3,2
        goto FPD@RES0
        movf 66,W
        subwf 62,F
        movlw 127
        btfsc 3,0
        goto FPD@L7
        addwf 62,F
        btfss 3,0
        goto FPD@UNDERFLOW
        goto FPD@L12
FPD@L7
        addwf 62,F
        btfsc 3,0
        goto FPD@OVERFLOW
FPD@L12
        movf 65,W
        movwf 58
        movf 64,W
        movwf 59
        bsf 60,7
        bsf 67,7
        movlw 24
        movwf 74
        clrf 65
        clrf 64
        clrf 63
        goto FPD@START
FPD@LOOP
        btfsc 3,0
        goto FPD@SUBTRACT
FPD@START
        movf 69,W
        subwf 58,W
        movf 68,W
        btfss 3,0
        incfsz 68,W
        subwf 59,W
        movf 67,W
        btfss 3,0
        incfsz 67,W
        subwf 60,W
        btfss 3,0
        goto FPD@SKIP_SUB
FPD@SUBTRACT
        movf 69,W
        subwf 58,F
        movf 68,W
        btfss 3,0
        incfsz 68,W
        subwf 59,F
        movf 67,W
        btfss 3,0
        incfsz 67,W
        subwf 60,F
        bsf 3,0
FPD@SKIP_SUB
        rlf 65,F
        rlf 64,F
        rlf 63,F
        rlf 58,F
        rlf 59,F
        rlf 60,F
        decfsz 74,F
        goto FPD@LOOP
        btfsc 63,7
        goto FPD@L20
        movf 62,F
        btfsc 3,2
        goto FPD@UNDERFLOW
        rrf 75,F
        decf 62,F
        incf 74,F
        rlf 75,F
        goto FPD@LOOP
FPD@L20
        btfss 73,6
        goto FPD@L36
        btfsc 3,0
        goto FPD@ADD_1
        movf 69,W
        subwf 58,F
        movf 68,W
        btfss 3,0
        incfsz 68,W
        subwf 59,F
        movf 67,W
        btfss 3,0
        incfsz 67,W
        subwf 60,F
        btfss 3,0
        goto FPD@L36
FPD@ADD_1
        incfsz 65,F
        goto FPD@L36
        incfsz 64,F
        goto FPD@L36
        incfsz 63,F
        goto FPD@L36
        rrf 63,F
        rrf 64,F
        rrf 65,F
        incf 62,F
        btfsc 3,2
        goto FPD@OVERFLOW
FPD@L36
        goto FPD@SET_SIGN
FPD@DIV0
        bsf 73,3
        goto FPD@SATURATE
FPD@UNDERFLOW
        bsf 73,2
FPD@RES0
        clrf 62
        goto FPD@MANTISSA
FPD@OVERFLOW
        bsf 73,1
FPD@SATURATE
        movlw 255
        movwf 62
FPD@MANTISSA
        clrf 65
        clrf 64
        movlw 128
        movwf 63
FPD@SET_SIGN
        btfsc 75,7
        goto FPD@L38
        bcf 63,7
FPD@L38
        goto I@NT
FPM@32
        movf 63,W
        movwf 60
        xorwf 67,W
        movwf 75
        movf 62,W
        xorlw 0
        btfss 3,2
        movf 66,W
        xorlw 0
        btfsc 3,2
        goto FPM@RES0
        addwf 62,F
        movlw 126
        btfss 3,0
        goto FPM@L3
        subwf 62,F
        btfsc 3,0
        goto FPM@OVERFLOW
        goto FPM@L8
FPM@L3
        subwf 62,F
        btfss 3,0
        goto FPM@UNDERFLOW
FPM@L8
        movf 65,W
        movwf 58
        movf 64,W
        movwf 59
        bsf 60,7
        bsf 67,7
        clrf 65
        clrf 64
        clrf 63
        movlw 24
        movwf 74
FPM@L9
        rrf 60,F
        rrf 59,F
        rrf 58,F
        btfss 3,0
        goto FPM@L12
        movf 69,W
        addwf 65,F
        movf 68,W
        btfsc 3,0
        incfsz 68,W
        addwf 64,F
        movf 67,W
        btfsc 3,0
        incfsz 67,W
        addwf 63,F
FPM@L12
        rrf 63,F
        rrf 64,F
        rrf 65,F
        decfsz 74,F
        goto FPM@L9
        btfsc 63,7
        goto FPM@L14
        rlf 65,F
        rlf 64,F
        rlf 63,F
        movf 62,F
        btfsc 3,2
        goto FPM@UNDERFLOW
        decf 62,F
        rlf 60,W
FPM@L14
        btfss 73,6
        goto FPM@L28
        btfss 3,0
        goto FPM@L28
        incfsz 65,F
        goto FPM@L28
        incfsz 64,F
        goto FPM@L28
        incfsz 63,F
        goto FPM@L28
        bsf 3,0
        rrf 63,F
        rrf 64,F
        rrf 65,F
        incf 62,F
        btfsc 3,2
        goto FPM@OVERFLOW
FPM@L28
        goto FPM@SET_SIGN
FPM@UNDERFLOW
        bsf 73,2
FPM@RES0
        clrf 62
        goto FPM@MANTISSA
FPM@OVERFLOW
        bsf 73,1
        movlw 255
        movwf 62
FPM@MANTISSA
        clrf 65
        clrf 64
        movlw 128
        movwf 63
FPM@SET_SIGN
        btfsc 75,7
        goto FPM@L30
        bcf 63,7
FPM@L30
        goto I@NT
INT16@TOFL32
        clrf 64
        clrf 65
INT32@TOFL32
        movlw 150
        movwf 74
        bcf 75,7
        btfss 65,7
        goto IF@L5
        comf 65,F
        comf 64,F
        comf 63,F
        comf 62,F
        incfsz 62,F
        goto IF@L4
        incfsz 63,F
        goto IF@L4
        incf 64,F
        btfsc 3,2
        incf 65,F
IF@L4
        bsf 75,7
IF@L5
        movf 65,F
        btfsc 3,2
        goto IF@L7
        btfss 73,6
        goto IF@L17
        btfss 65,7
        goto IF@L17
        incfsz 63,F
        goto IF@L17
        incfsz 64,F
        goto IF@L17
        incfsz 65,F
        goto IF@L17
        bsf 3,0
        rrf 65,F
        rrf 64,F
        rrf 63,F
        incf 74,F
IF@L17
        movlw 8
        addwf 74,F
        movf 63,W
        movwf 62
        movf 64,W
        movwf 63
        movf 65,W
        movwf 64
        goto IF@L18
IF@L7
        movf 64,F
        btfss 3,2
        goto IF@L18
        movlw 8
        subwf 74,F
        movf 63,W
        btfss 3,2
        goto IF@L20
        movlw 8
        subwf 74,F
        movf 62,W
        btfss 3,2
        goto IF@L22
        movf 65,W
        movwf 74
        goto IF@EXIT
IF@L22
        clrf 62
IF@L20
        movwf 64
        movf 62,W
        movwf 63
        clrf 62
IF@L18
        btfsc 64,7
        goto IF@L24
        bcf 3,0
        rlf 62,F
        rlf 63,F
        rlf 64,F
        decf 74,F
        goto IF@L18
IF@L24
        btfss 75,7
        bcf 64,7
IF@EXIT
        movf 62,W
        movwf 65
        movf 74,W
        movwf 62
        movf 64,W
        movwf 74
        movf 63,W
        movwf 64
        movf 74,W
        movwf 63
        goto I@NT
proton#main#start
        clrf 3
        movlw 64
        movwf 73
        clrf 32
F2_SOF equ $ ; SHIP.PRP
F2_EOF equ $ ; SHIP.PRP
F1_SOF equ $ ; SHIP.BAS
F1_000017 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000018 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000019 equ $ ; IN [SHIP.BAS] ALL_DIGITAL = 1
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000032 equ $ ; IN [SHIP.BAS] INPUT DATAA : OUTPUT CLOCK
        bsf TRISC,4
        bcf TRISC,3
F1_000033 equ $ ; IN [SHIP.BAS] INPUT IR_BUTT : INPUT SONAR_BUTT
        bsf TRISA,0
        bsf TRISA,1
F1_000034 equ $ ; IN [SHIP.BAS] INPUT WEIGHT_BUTT : INPUT IR_SENSOR
        bsf TRISA,2
        bsf TRISA,4
F1_000035 equ $ ; IN [SHIP.BAS] OUTPUT S_MOTOR : OUTPUT BUZZER
        bcf TRISA,5
        bcf TRISC,5
F1_000036 equ $ ; IN [SHIP.BAS] INPUT ECHO : OUTPUT TRIGGER
        bsf TRISC,6
        bcf TRISC,7
F1_000037 equ $ ; IN [SHIP.BAS] OUTPUT MOTOR : CLEAR PORTC
        bcf TRISB,0
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000050 equ $ ; IN [SHIP.BAS] CLEAR
        movf _FP_FLAGS,W
        movwf 32
        movlw 33
        movwf FSR
        movlw 97
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
        movf 32,W
        movwf _FP_FLAGS
        clrf 32
F1_000052 equ $ ; IN [SHIP.BAS] GOSUB GATE_OPEN
        call gate_open
main
F1_000055 equ $ ; IN [SHIP.BAS] IF IR_MODE = 1 THEN
        btfss _B#VR1,1
        goto BC@LL2
F1_000056 equ $ ; IN [SHIP.BAS] GOSUB CHECK_IR
        call check_IR
        goto BC@LL3
BC@LL2
F1_000057 equ $ ; IN [SHIP.BAS] ELSE
F1_000058 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "-OFF-"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 45
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
        movlw 45
        call PRINT
F1_000059 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL3
F1_000061 equ $ ; IN [SHIP.BAS] IF SONAR_MODE = 1 THEN
        btfss _B#VR1,2
        goto BC@LL5
F1_000062 equ $ ; IN [SHIP.BAS] GOSUB CHECK_SONAR
        call check_sonar
        goto BC@LL6
BC@LL5
F1_000063 equ $ ; IN [SHIP.BAS] ELSE
F1_000064 equ $ ; IN [SHIP.BAS] PRINT AT 1,1, "SONAR SYSTEM OFF"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        movlw 97
        call PRINT
        movlw 114
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000065 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL6
F1_000067 equ $ ; IN [SHIP.BAS] IF WEIGHT_MODE = 1 THEN
        btfss _B#VR1,3
        goto BC@LL8
F1_000068 equ $ ; IN [SHIP.BAS] GOSUB CHECK_WEIGHT
        call check_weight
        goto BC@LL9
BC@LL8
F1_000069 equ $ ; IN [SHIP.BAS] ELSE
F1_000070 equ $ ; IN [SHIP.BAS] PRINT AT 2,7, "WEIGHT OFF"
        movlw 128
        movwf BPFH
        movlw 198
        call LCD@CRS
        movlw 87
        call PRINT
        movlw 101
        call PRINT
        movlw 105
        call PRINT
        movlw 103
        call PRINT
        movlw 104
        call PRINT
        movlw 116
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000071 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL9
F1_000073 equ $ ; IN [SHIP.BAS] GOSUB MODE_SENSE
        call mode_sense
F1_000074 equ $ ; IN [SHIP.BAS] GOTO MAIN
        goto main
mode_sense
F1_000077 equ $ ; IN [SHIP.BAS] IF IR_BUTT = 1 THEN
        btfss PORTA,0
        goto BC@LL11
F1_000078 equ $ ; IN [SHIP.BAS] IR_MODE = ~IR_MODE
        movlw 2
        xorwf _B#VR1,F
F1_000079 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000080 equ $ ; IN [SHIP.BAS] IF IR_MODE = 1 THEN
        btfss _B#VR1,1
        goto BC@LL13
F1_000081 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "IR SYSTEM ON"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 73
        call PRINT
        movlw 82
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
F1_000082 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
        goto BC@LL14
BC@LL13
F1_000083 equ $ ; IN [SHIP.BAS] ELSE
F1_000084 equ $ ; IN [SHIP.BAS] HUMAN = 0
        clrf human
F1_000085 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "IR SYSTEM OFF"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 73
        call PRINT
        movlw 82
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000086 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000087 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL14
F1_000088 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000089 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL11
F1_000090 equ $ ; IN [SHIP.BAS] IF SONAR_BUTT = 1 THEN
        btfss PORTA,1
        goto BC@LL16
F1_000091 equ $ ; IN [SHIP.BAS] SONAR_MODE = ~SONAR_MODE
        movlw 4
        xorwf _B#VR1,F
F1_000092 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000093 equ $ ; IN [SHIP.BAS] IF SONAR_MODE = 1 THEN
        btfss _B#VR1,2
        goto BC@LL18
F1_000094 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "SONAR SYSTEM ON"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        movlw 97
        call PRINT
        movlw 114
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
F1_000095 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
        goto BC@LL19
BC@LL18
F1_000096 equ $ ; IN [SHIP.BAS] ELSE
F1_000097 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "SONAR SYSTEM OFF"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 111
        call PRINT
        movlw 110
        call PRINT
        movlw 97
        call PRINT
        movlw 114
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000098 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000099 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL19
F1_000100 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000101 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL16
F1_000102 equ $ ; IN [SHIP.BAS] IF WEIGHT_BUTT = 1 THEN
        btfss PORTA,2
        goto BC@LL21
F1_000103 equ $ ; IN [SHIP.BAS] WEIGHT_MODE = ~WEIGHT_MODE
        movlw 8
        xorwf _B#VR1,F
F1_000104 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000105 equ $ ; IN [SHIP.BAS] IF WEIGHT_MODE = 1 THEN
        btfss _B#VR1,3
        goto BC@LL23
F1_000106 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "WEIGHT SYSTEM ON"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 87
        call PRINT
        movlw 101
        call PRINT
        movlw 105
        call PRINT
        movlw 103
        call PRINT
        movlw 104
        call PRINT
        movlw 116
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
F1_000107 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
        goto BC@LL24
BC@LL23
F1_000108 equ $ ; IN [SHIP.BAS] ELSE
F1_000109 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "WEIGHT SYSTEMOFF"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 87
        call PRINT
        movlw 101
        call PRINT
        movlw 105
        call PRINT
        movlw 103
        call PRINT
        movlw 104
        call PRINT
        movlw 116
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 121
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 109
        call PRINT
        movlw 79
        call PRINT
        movlw 70
        call PRINT
        call PRINT
F1_000110 equ $ ; IN [SHIP.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000111 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL24
F1_000112 equ $ ; IN [SHIP.BAS] CLS
        call LCD@CLS
F1_000113 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL21
F1_000114 equ $ ; IN [SHIP.BAS] RETURN
        return
check_weight
F1_000117 equ $ ; IN [SHIP.BAS] DATAA = 1
        bsf PORTC,4
F1_000118 equ $ ; IN [SHIP.BAS] CLOCK = 0
        bcf PORTC,3
F1_000119 equ $ ; IN [SHIP.BAS] HX711CNT = 0
        clrf Hx711CntHHH
        clrf Hx711CntHH
        clrf Hx711CntH
        clrf Hx711Cnt
F1_000120 equ $ ; IN [SHIP.BAS] WHILE DATAA = 1 : WEND
BC@LL25
        btfss PORTC,4
        goto BC@LL26
ram_bank = 0
        goto BC@LL25
BC@LL26
F1_000121 equ $ ; IN [SHIP.BAS] FOR I = 0 TO 23
        clrf _I
FR@LB28
        movlw 24
        subwf _I,W
        btfsc STATUS,0
        goto NX@LB29
F1_000122 equ $ ; IN [SHIP.BAS] HIGH CLOCK
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000123 equ $ ; IN [SHIP.BAS] HX711CNT = HX711CNT << 1
        bcf STATUS,0
        rlf Hx711Cnt,F
        rlf Hx711CntH,F
        rlf Hx711CntHH,F
        rlf Hx711CntHHH,F
F1_000124 equ $ ; IN [SHIP.BAS] LOW CLOCK
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000125 equ $ ; IN [SHIP.BAS] IF DATAA = 1 THEN INC HX711CNT
        btfss PORTC,4
        goto BC@LL31
        movlw 1
        addwf Hx711Cnt,F
        clrw
        btfsc STATUS,0
        movlw 1
        addwf Hx711CntH,F
        clrw
        btfsc STATUS,0
        movlw 1
        addwf Hx711CntHH,F
        clrw
        btfsc STATUS,0
        movlw 1
        addwf Hx711CntHHH,F
BC@LL31
CT@LB30
F1_000126 equ $ ; IN [SHIP.BAS] NEXT
        movlw 1
        addwf _I,F
        btfss STATUS,0
        goto FR@LB28
NX@LB29
F1_000127 equ $ ; IN [SHIP.BAS] HIGH CLOCK
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,3
F1_000128 equ $ ; IN [SHIP.BAS] HX711CNT = HX711CNT ^ 0X800000
        movlw 0
        xorwf Hx711Cnt,W
        movwf Hx711Cnt
        movlw 0
        xorwf Hx711CntH,W
        movwf Hx711CntH
        movlw 128
        xorwf Hx711CntHH,W
        movwf Hx711CntHH
        movlw 0
        xorwf Hx711CntHHH,W
        movwf Hx711CntHHH
F1_000129 equ $ ; IN [SHIP.BAS] GRAM = 8388608 - HX711CNT
        movf Hx711Cnt,W
        sublw 0
        movwf gram
        movf Hx711CntH,W
        btfss STATUS,0
        addlw 1
        sublw 0
        movwf gramH
F1_000131 equ $ ; IN [SHIP.BAS] LOW CLOCK
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,3
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,3
F1_000132 equ $ ; IN [SHIP.BAS] PRINT AT 2,7, DEC GRAM, "GRAM  "
        movlw 128
        movwf BPFH
        movlw 198
        call LCD@CRS
        clrf GEN4H
        movf gramH,W
        movwf PP2H
        movf gram,W
        movwf PP2
        call OUT@DEC
        movlw 103
        call PRINT
        movlw 114
        call PRINT
        movlw 97
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        call PRINT
F1_000133 equ $ ; IN [SHIP.BAS] RETURN
        return
check_IR
F1_000136 equ $ ; IN [SHIP.BAS] IF IR_SENSOR = 0 AND HUMAN < 30 THEN
        movlw 1
        btfsc PORTA,4
        movlw 0
        movwf SP#P9
        movlw 30
        subwf human,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL33
F1_000137 equ $ ; IN [SHIP.BAS] INC HUMAN
        incf human,F
F1_000138 equ $ ; IN [SHIP.BAS] BUZZER = 1
        bsf PORTC,5
F1_000139 equ $ ; IN [SHIP.BAS] DELAYMS 100
        movlw 100
        call DL@MS
F1_000140 equ $ ; IN [SHIP.BAS] BUZZER = 0
        bcf PORTC,5
F1_000141 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL33
F1_000142 equ $ ; IN [SHIP.BAS] PRINT AT 2,1, "P: ", DEC HUMAN
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 80
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movf human,W
        call OUT@DECB
F1_000143 equ $ ; IN [SHIP.BAS] IF HUMAN < 30 AND GATE_FLAG = 1 THEN GATE_FLAG = 0 : GOSUB GATE_OPEN
        movlw 30
        subwf human,W
        movlw 1
        btfsc STATUS,0
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,0
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL35
        bcf _B#VR1,0
        call gate_open
BC@LL35
F1_000144 equ $ ; IN [SHIP.BAS] IF HUMAN = 30 AND GATE_FLAG = 0 THEN
        movlw 30
        subwf human,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,0
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL37
F1_000145 equ $ ; IN [SHIP.BAS] GATE_FLAG = 1
        bsf _B#VR1,0
F1_000146 equ $ ; IN [SHIP.BAS] GOSUB GATE_LOCK
        call gate_lock
F1_000147 equ $ ; IN [SHIP.BAS] GOSUB ALARM
        call alarm
F1_000148 equ $ ; IN [SHIP.BAS] ENDIF
BC@LL37
F1_000149 equ $ ; IN [SHIP.BAS] RETURN
        return
check_sonar
F1_000152 equ $ ; IN [SHIP.BAS] PULSOUT TRIGGER, 10, HIGH
        clrf PP0H
        movlw 10
        movwf PP0
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,7
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,7
        movlw 7
        movwf FSR
        movlw 128
        call P@OUT
F1_000153 equ $ ; IN [SHIP.BAS] SONAR_READ = PULSIN ECHO, 1
        movlw 1
        movwf PP0
        movlw 7
        movwf FSR
        movlw 64
        call P@IN
        movf PP0H,W
        movwf sonar_readH
        movf PP0,W
        movwf sonar_read
F1_000154 equ $ ; IN [SHIP.BAS] DELAYMS 10
        movlw 10
        call DL@MS
F1_000155 equ $ ; IN [SHIP.BAS] DISTANCE = (SONAR_READ * 2) / 58
        movf sonar_read,W
        movwf PP_AARG
        movf sonar_readH,W
        movwf PP_AARGH
        call INT16@TOFL32
        clrf PP_BARGHHH
        clrf PP_BARGHH
        clrf PP_BARGH
        movlw 128
        movwf PP_BARG
        call FPM@32
        movf PP_AARGHHH,W
        movwf PP7HHH
        movf PP_AARGHH,W
        movwf PP7HH
        movf PP_AARGH,W
        movwf PP7H
        movf PP_AARG,W
        movwf PP7
        clrf PP_BARGHHH
        clrf PP_BARGHH
        movlw 104
        movwf PP_BARGH
        movlw 132
        movwf PP_BARG
        movf PP7HHH,W
        movwf PP_AARGHHH
        movf PP7HH,W
        movwf PP_AARGHH
        movf PP7H,W
        movwf PP_AARGH
        movf PP7,W
        movwf PP_AARG
        call FPD@32
        movf PP_AARGHHH,W
        movwf distanceHHH
        movf PP_AARGHH,W
        movwf distanceHH
        movf PP_AARGH,W
        movwf distanceH
        movf PP_AARG,W
        movwf distance
F1_000156 equ $ ; IN [SHIP.BAS] PRINT AT 1,1, "DISTANCE:", DEC1 DISTANCE, "CM  "
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 68
        call PRINT
        movlw 105
        call PRINT
        movlw 115
        call PRINT
        movlw 116
        call PRINT
        movlw 97
        call PRINT
        movlw 110
        call PRINT
        movlw 99
        call PRINT
        movlw 101
        call PRINT
        movlw 58
        call PRINT
        movf distanceHHH,W
        movwf PP7HHH
        movf distanceHH,W
        movwf PP7HH
        movf distanceH,W
        movwf PP7H
        movf distance,W
        movwf PP7
        movlw 1
        call OUT@FLOAT
        movlw 99
        call PRINT
        movlw 109
        call PRINT
        movlw 32
        call PRINT
        call PRINT
F1_000157 equ $ ; IN [SHIP.BAS] RETURN
        return
gate_lock
F1_000160 equ $ ; IN [SHIP.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB39
        movlw 51
        subwf pos,W
        btfsc STATUS,0
        goto NX@LB40
F1_000161 equ $ ; IN [SHIP.BAS] S_MOTOR = 1
        bsf PORTA,5
F1_000162 equ $ ; IN [SHIP.BAS] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        call DLUS@W
F1_000163 equ $ ; IN [SHIP.BAS] S_MOTOR = 0
        bcf PORTA,5
F1_000164 equ $ ; IN [SHIP.BAS] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        call DLUS@W
CT@LB41
F1_000165 equ $ ; IN [SHIP.BAS] NEXT
        movlw 1
        addwf pos,F
        btfss STATUS,0
        goto FR@LB39
NX@LB40
F1_000166 equ $ ; IN [SHIP.BAS] RETURN
        return
gate_open
F1_000169 equ $ ; IN [SHIP.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB42
        movlw 51
        subwf pos,W
        btfsc STATUS,0
        goto NX@LB43
F1_000170 equ $ ; IN [SHIP.BAS] S_MOTOR = 1
        bsf PORTA,5
F1_000171 equ $ ; IN [SHIP.BAS] DELAYUS 3000
        movlw 11
        movwf PP0H
        movlw 184
        call DLUS@W
F1_000172 equ $ ; IN [SHIP.BAS] S_MOTOR = 0
        bcf PORTA,5
F1_000173 equ $ ; IN [SHIP.BAS] DELAYUS 17000
        movlw 66
        movwf PP0H
        movlw 104
        call DLUS@W
CT@LB44
F1_000174 equ $ ; IN [SHIP.BAS] NEXT
        movlw 1
        addwf pos,F
        btfss STATUS,0
        goto FR@LB42
NX@LB43
F1_000175 equ $ ; IN [SHIP.BAS] RETURN
        return
alarm
F1_000178 equ $ ; IN [SHIP.BAS] BUZZER = 1
        bsf PORTC,5
F1_000179 equ $ ; IN [SHIP.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
F1_000180 equ $ ; IN [SHIP.BAS] BUZZER = 0
        bcf PORTC,5
F1_000181 equ $ ; IN [SHIP.BAS] RETURN
        return
F1_EOF equ $ ; SHIP.BAS
PB@LB45
        goto PB@LB45
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
