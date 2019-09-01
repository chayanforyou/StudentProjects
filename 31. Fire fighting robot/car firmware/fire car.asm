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
#define _SYSTEM_VARIABLE_COUNT 12
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
PP0 = 35
PP0H = 36
PP1 = 37
PP1H = 38
PP3 = 39
PP3H = 40
PP4 = 41
PP5 = 42
SP#P9 = 43
speed = 44
speedH = 45
_B#VR1 = 46
cmd = 47
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define rx_0 PORTA,0
#define rx_1 PORTA,1
#define rx_2 PORTA,2
#define rx_3 PORTA,3
#define IR_path PORTC,5
#define IR_fire PORTC,6
#define motorL_2 PORTC,0
#define motorL_1 PORTC,1
#define motorR_2 PORTC,2
#define motorR_1 PORTC,3
#define motor_PWM PORTC,7
#define pump PORTB,0
#define smoke _B#VR1,0
#define flame _B#VR1,1
#define __XTAL 8
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
        movwf 36
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 42
        movlw 254
        call CH@SND
        movf 42,W
        goto CH@SND
PRINT
        movwf 40
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 40,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 36
        movlw 128
        call DLUS@W
        movlw 51
        movwf 39
        call PR@LP
        movlw 19
        movwf 36
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 39
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 40,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 39
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 36
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
        movf 39,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 39,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 40,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
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
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        clrf 32
F2_SOF equ $ ; FIRE CAR.PRP
F2_EOF equ $ ; FIRE CAR.PRP
F1_SOF equ $ ; FIRE CAR.BAS
F1_000012 equ $ ; IN [FIRE CAR.BAS] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000023 equ $ ; IN [FIRE CAR.BAS] INPUT RX_0 : INPUT RX_1
        bsf TRISA,0
        bsf TRISA,1
F1_000024 equ $ ; IN [FIRE CAR.BAS] INPUT RX_2 : INPUT RX_3
        bsf TRISA,2
        bsf TRISA,3
F1_000034 equ $ ; IN [FIRE CAR.BAS] OUTPUT MOTORL_1 : OUTPUT MOTORL_2
        bcf TRISC,1
        bcf TRISC,0
F1_000035 equ $ ; IN [FIRE CAR.BAS] OUTPUT MOTORR_1 : OUTPUT MOTORR_2
        bcf TRISC,3
        bcf TRISC,2
F1_000036 equ $ ; IN [FIRE CAR.BAS] OUTPUT MOTOR_PWM : OUTPUT PUMP
        bcf TRISC,7
        bcf TRISB,0
F1_000037 equ $ ; IN [FIRE CAR.BAS] INPUT IR_FIRE : INPUT IR_PATH
        bsf TRISC,6
        bsf TRISC,5
F1_000043 equ $ ; IN [FIRE CAR.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        bcf STATUS,5
ram_bank = 0
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
F1_000044 equ $ ; IN [FIRE CAR.BAS] CLS
        call LCD@CLS
Main
F1_000047 equ $ ; IN [FIRE CAR.BAS] SPEED = 10000
        movlw 39
        movwf speedH
        movlw 16
        movwf speed
F1_000048 equ $ ; IN [FIRE CAR.BAS] GOSUB RF_RECEIVE
        call RF_receive
F1_000049 equ $ ; IN [FIRE CAR.BAS] IF SMOKE = 0 THEN
        btfsc _B#VR1,0
        goto BC@LL2
F1_000050 equ $ ; IN [FIRE CAR.BAS] PRINT AT 1,1,"NO SMOKE"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 78
        call PRINT
        movlw 111
        call PRINT
        movlw 32
        call PRINT
        movlw 83
        call PRINT
        movlw 109
        call PRINT
        movlw 111
        call PRINT
        movlw 107
        call PRINT
        movlw 101
        call PRINT
        goto BC@LL3
BC@LL2
F1_000051 equ $ ; IN [FIRE CAR.BAS] ELSE
F1_000052 equ $ ; IN [FIRE CAR.BAS] PRINT AT 1,1,"-SMOKE!-"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 45
        call PRINT
        movlw 83
        call PRINT
        movlw 77
        call PRINT
        movlw 79
        call PRINT
        movlw 75
        call PRINT
        movlw 69
        call PRINT
        movlw 33
        call PRINT
        movlw 45
        call PRINT
F1_000053 equ $ ; IN [FIRE CAR.BAS] GOSUB AUTO_BOT
        call auto_bot
F1_000054 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL3
F1_000055 equ $ ; IN [FIRE CAR.BAS] IF FLAME = 0 THEN
        btfsc _B#VR1,1
        goto BC@LL5
F1_000056 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,1,"NO FIRE"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 78
        call PRINT
        movlw 111
        call PRINT
        movlw 32
        call PRINT
        movlw 70
        call PRINT
        movlw 105
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        goto BC@LL6
BC@LL5
F1_000057 equ $ ; IN [FIRE CAR.BAS] ELSE
F1_000058 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,1,"-FIRE!-"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 45
        call PRINT
        movlw 70
        call PRINT
        movlw 73
        call PRINT
        movlw 82
        call PRINT
        movlw 69
        call PRINT
        movlw 33
        call PRINT
        movlw 45
        call PRINT
F1_000059 equ $ ; IN [FIRE CAR.BAS] GOSUB AUTO_BOT
        call auto_bot
F1_000060 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL6
F1_000062 equ $ ; IN [FIRE CAR.BAS] PRINT AT 1,10,"RF CMD:"
        movlw 128
        movwf BPFH
        movlw 137
        call LCD@CRS
        movlw 82
        call PRINT
        movlw 70
        call PRINT
        movlw 32
        call PRINT
        movlw 99
        call PRINT
        movlw 109
        call PRINT
        movlw 100
        call PRINT
        movlw 58
        call PRINT
F1_000063 equ $ ; IN [FIRE CAR.BAS] IF CMD = 0 THEN
        movf cmd,F
        btfss STATUS,2
        goto BC@LL8
F1_000064 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"NONE "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 78
        call PRINT
        movlw 79
        call PRINT
        movlw 78
        call PRINT
        movlw 69
        call PRINT
        movlw 32
        call PRINT
F1_000065 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 0 : MOTORL_2 = 0
        bcf PORTC,1
        bcf PORTC,0
F1_000066 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 0 : MOTORR_2 = 0
        bcf PORTC,3
        bcf PORTC,2
F1_000067 equ $ ; IN [FIRE CAR.BAS] PUMP = 0
        bcf PORTB,0
F1_000068 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL8
F1_000069 equ $ ; IN [FIRE CAR.BAS] IF CMD = 1 THEN
        movlw 1
        subwf cmd,W
        btfss STATUS,2
        goto BC@LL10
F1_000070 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"UP   "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 85
        call PRINT
        movlw 80
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        call PRINT
F1_000071 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 1 : MOTORL_2 = 0
        bsf PORTC,1
        bcf PORTC,0
F1_000072 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 1 : MOTORR_2 = 0
        bsf PORTC,3
        bcf PORTC,2
F1_000073 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000074 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL10
F1_000075 equ $ ; IN [FIRE CAR.BAS] IF CMD = 2 THEN
        movlw 2
        subwf cmd,W
        btfss STATUS,2
        goto BC@LL12
F1_000076 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"DOWN "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 68
        call PRINT
        movlw 79
        call PRINT
        movlw 87
        call PRINT
        movlw 78
        call PRINT
        movlw 32
        call PRINT
F1_000077 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 0 : MOTORL_2 = 1
        bcf PORTC,1
        bsf PORTC,0
F1_000078 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 0 : MOTORR_2 = 1
        bcf PORTC,3
        bsf PORTC,2
F1_000079 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000080 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL12
F1_000081 equ $ ; IN [FIRE CAR.BAS] IF CMD = 3 THEN
        movlw 3
        subwf cmd,W
        btfss STATUS,2
        goto BC@LL14
F1_000082 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"LEFT "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 69
        call PRINT
        movlw 70
        call PRINT
        movlw 84
        call PRINT
        movlw 32
        call PRINT
F1_000083 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 0 : MOTORL_2 = 0
        bcf PORTC,1
        bcf PORTC,0
F1_000084 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 1 : MOTORR_2 = 0
        bsf PORTC,3
        bcf PORTC,2
F1_000085 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000086 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL14
F1_000087 equ $ ; IN [FIRE CAR.BAS] IF CMD = 4 THEN
        movlw 4
        subwf cmd,W
        btfss STATUS,2
        goto BC@LL16
F1_000088 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"RIGHT"
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 82
        call PRINT
        movlw 73
        call PRINT
        movlw 71
        call PRINT
        movlw 72
        call PRINT
        movlw 84
        call PRINT
F1_000089 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 1 : MOTORL_2 = 0
        bsf PORTC,1
        bcf PORTC,0
F1_000090 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 0 : MOTORR_2 = 0
        bcf PORTC,3
        bcf PORTC,2
F1_000091 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000092 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL16
F1_000093 equ $ ; IN [FIRE CAR.BAS] IF CMD = 5 THEN
        movlw 5
        subwf cmd,W
        btfss STATUS,2
        goto BC@LL18
F1_000094 equ $ ; IN [FIRE CAR.BAS] PRINT AT 2,11,"PUMP "
        movlw 128
        movwf BPFH
        movlw 202
        call LCD@CRS
        movlw 80
        call PRINT
        movlw 85
        call PRINT
        movlw 77
        call PRINT
        movlw 80
        call PRINT
        movlw 32
        call PRINT
F1_000095 equ $ ; IN [FIRE CAR.BAS] PUMP = 1
        bsf PORTB,0
F1_000096 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL18
F1_000097 equ $ ; IN [FIRE CAR.BAS] GOTO MAIN
        goto Main
auto_bot
F1_000100 equ $ ; IN [FIRE CAR.BAS] SPEED = 5000
        movlw 19
        movwf speedH
        movlw 136
        movwf speed
F1_000101 equ $ ; IN [FIRE CAR.BAS] WHILE IR_PATH = 1
BC@LL19
        btfss PORTC,5
        goto BC@LL20
F1_000102 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 1 : MOTORL_2 = 0
        bsf PORTC,1
        bcf PORTC,0
F1_000103 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 0 : MOTORR_2 = 0
        bcf PORTC,3
        bcf PORTC,2
F1_000104 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000105 equ $ ; IN [FIRE CAR.BAS] GOSUB RF_RECEIVE
        call RF_receive
F1_000106 equ $ ; IN [FIRE CAR.BAS] WEND
        goto BC@LL19
BC@LL20
F1_000107 equ $ ; IN [FIRE CAR.BAS] SPEED = 10000
        movlw 39
        movwf speedH
        movlw 16
        movwf speed
F1_000108 equ $ ; IN [FIRE CAR.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        call DLY@W
F1_000109 equ $ ; IN [FIRE CAR.BAS] WHILE IR_FIRE = 1
BC@LL21
        btfss PORTC,6
        goto BC@LL22
F1_000110 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 1 : MOTORL_2 = 0
        bsf PORTC,1
        bcf PORTC,0
F1_000111 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 1 : MOTORR_2 = 0
        bsf PORTC,3
        bcf PORTC,2
F1_000112 equ $ ; IN [FIRE CAR.BAS] GOSUB CAR_SPEED
        call car_speed
F1_000113 equ $ ; IN [FIRE CAR.BAS] GOSUB RF_RECEIVE
        call RF_receive
F1_000114 equ $ ; IN [FIRE CAR.BAS] WEND
        goto BC@LL21
BC@LL22
F1_000115 equ $ ; IN [FIRE CAR.BAS] WHILE IR_FIRE = 0
BC@LL23
        btfsc PORTC,6
        goto BC@LL24
F1_000116 equ $ ; IN [FIRE CAR.BAS] MOTORL_1 = 0 : MOTORL_2 = 0
        bcf PORTC,1
        bcf PORTC,0
F1_000117 equ $ ; IN [FIRE CAR.BAS] MOTORR_1 = 0 : MOTORR_2 = 0
        bcf PORTC,3
        bcf PORTC,2
F1_000118 equ $ ; IN [FIRE CAR.BAS] PUMP = 1
        bsf PORTB,0
F1_000119 equ $ ; IN [FIRE CAR.BAS] GOSUB RF_RECEIVE
        call RF_receive
F1_000120 equ $ ; IN [FIRE CAR.BAS] WEND
        goto BC@LL23
BC@LL24
F1_000121 equ $ ; IN [FIRE CAR.BAS] PUMP = 0
        bcf PORTB,0
F1_000122 equ $ ; IN [FIRE CAR.BAS] WHILE SMOKE = 1 OR FLAME = 1
BC@LL25
        movlw 0
        btfsc _B#VR1,0
        movlw 1
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,1
        movlw 1
        iorwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL26
F1_000123 equ $ ; IN [FIRE CAR.BAS] GOSUB RF_RECEIVE
        call RF_receive
F1_000124 equ $ ; IN [FIRE CAR.BAS] WEND
        goto BC@LL25
BC@LL26
F1_000125 equ $ ; IN [FIRE CAR.BAS] GOTO AUTO_BOT
        goto auto_bot
RF_receive
F1_000131 equ $ ; IN [FIRE CAR.BAS] CMD = 0
        clrf cmd
F1_000132 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 0 AND RX_1 = 1 THEN
        movlw 1
        btfsc PORTA,0
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc PORTA,1
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL28
F1_000133 equ $ ; IN [FIRE CAR.BAS] IF RX_2 = 1 THEN
        btfss PORTA,2
        goto BC@LL30
F1_000134 equ $ ; IN [FIRE CAR.BAS] SMOKE = 1
        bsf _B#VR1,0
        goto BC@LL31
BC@LL30
F1_000135 equ $ ; IN [FIRE CAR.BAS] ELSE
F1_000136 equ $ ; IN [FIRE CAR.BAS] SMOKE = 0
        bcf _B#VR1,0
F1_000137 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL31
F1_000138 equ $ ; IN [FIRE CAR.BAS] IF RX_3 = 1 THEN
        btfss PORTA,3
        goto BC@LL33
F1_000139 equ $ ; IN [FIRE CAR.BAS] FLAME = 1
        bsf _B#VR1,1
        goto BC@LL34
BC@LL33
F1_000140 equ $ ; IN [FIRE CAR.BAS] ELSE
F1_000141 equ $ ; IN [FIRE CAR.BAS] FLAME = 0
        bcf _B#VR1,1
F1_000142 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL34
F1_000143 equ $ ; IN [FIRE CAR.BAS] ENDIF
BC@LL28
F1_000144 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 0 AND RX_1 = 0 AND RX_2 = 0 AND RX_3 = 0 THEN CMD = 0
        movlw 1
        btfsc PORTA,0
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc PORTA,1
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,2
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,3
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL36
        clrf cmd
BC@LL36
F1_000145 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 1 AND RX_1 = 0 AND RX_2 = 0 AND RX_3 = 1 THEN CMD = 1
        movlw 0
        btfsc PORTA,0
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc PORTA,1
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,2
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc PORTA,3
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL38
        movlw 1
        movwf cmd
BC@LL38
F1_000146 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 1 AND RX_1 = 0 AND RX_2 = 1 AND RX_3 = 0 THEN CMD = 2
        movlw 0
        btfsc PORTA,0
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc PORTA,1
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc PORTA,2
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,3
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL40
        movlw 2
        movwf cmd
BC@LL40
F1_000147 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 1 AND RX_1 = 0 AND RX_2 = 1 AND RX_3 = 1 THEN CMD = 3
        movlw 0
        btfsc PORTA,0
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc PORTA,1
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc PORTA,2
        movlw 1
        andwf SP#P9,F
        movlw 0
        btfsc PORTA,3
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL42
        movlw 3
        movwf cmd
BC@LL42
F1_000148 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 1 AND RX_1 = 1 AND RX_2 = 0 AND RX_3 = 0 THEN CMD = 4
        movlw 0
        btfsc PORTA,0
        movlw 1
        movwf SP#P9
        movlw 0
        btfsc PORTA,1
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,2
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,3
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL44
        movlw 4
        movwf cmd
BC@LL44
F1_000149 equ $ ; IN [FIRE CAR.BAS] IF RX_0 = 1 AND RX_1 = 1 AND RX_2 = 0 AND RX_3 = 1 THEN CMD = 5
        movlw 0
        btfsc PORTA,0
        movlw 1
        movwf SP#P9
        movlw 0
        btfsc PORTA,1
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc PORTA,2
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc PORTA,3
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL46
        movlw 5
        movwf cmd
BC@LL46
F1_000150 equ $ ; IN [FIRE CAR.BAS] RETURN
        return
car_speed
F1_000153 equ $ ; IN [FIRE CAR.BAS] MOTOR_PWM = 1
        bsf PORTC,7
F1_000154 equ $ ; IN [FIRE CAR.BAS] DELAYUS SPEED
        movf speedH,W
        movwf PP0H
        movf speed,W
        call DLUS@W
F1_000155 equ $ ; IN [FIRE CAR.BAS] MOTOR_PWM = 0
        bcf PORTC,7
F1_000156 equ $ ; IN [FIRE CAR.BAS] DELAYUS 20000 - SPEED
        movf speed,W
        sublw 32
        movwf PP0
        movf speedH,W
        btfss STATUS,0
        addlw 1
        sublw 78
        movwf PP0H
        movf PP0,W
        call DLUS@W
F1_000157 equ $ ; IN [FIRE CAR.BAS] RETURN
        return
F1_EOF equ $ ; FIRE CAR.BAS
PB@LB48
        goto PB@LB48
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
