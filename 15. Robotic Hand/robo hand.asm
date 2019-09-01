;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F72, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
EEDATL equ 0X010C
PMDATL equ 0X010C
EEADRL equ 0X010D
PMADRL equ 0X010D
EEDATLH equ 0X010E
PMDATLH equ 0X010E
EEDATH equ 0X010E
PMDATH equ 0X010E
EEADRH equ 0X010F
PMADRH equ 0X010F
EECON1 equ 0X018C
PMCON1 equ 0X018C
_I2C_SCL_PORT=TRISC
_I2C_SCL_PIN=3
_I2C_SDA_PORT=TRISC
_I2C_SDA_PIN=4
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
TMR0IE=5
T0IE=5
INTE=4
RBIE=3
TMR0IF=2
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
SMP=7
CKE=6
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
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09, 0X0D, 0X18-0X1D
  __BADRAM 0X88-0X89, 0X8D, 0X8F-0X91, 0X95-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BOREN_ON equ 0X3FFF
BODEN_ON equ 0X3FFF
BOREN_OFF equ 0X3FBF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
CP_OFF equ 0X3FFF
PWRTEN_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTEN_ON equ 0X3FF7
PWRTE_ON equ 0X3FF7
WDTEN_ON equ 0X3FFF
WDTEN_OFF equ 0X3FFB
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F72 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 128
#define _RAM_END 0X0080
#define _MAXMEM 2048
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 1
#define _BANKS 3
#define RAM_BANKS 3
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00BF
#define BANK2_START 0X01A0
#define BANK2_END 0X01BF
#define BANK3_START 0X01A0
#define BANK3_END 0X01BF
#define _SYSTEM_VARIABLE_COUNT 5
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
if((pVarin & 384) == 384)
if(ram_bank == 0)
        bsf 3,5
        bsf 3,6
endif
if(ram_bank == 1)
        bsf 3,6
endif
if(ram_bank == 2)
        bsf 3,5
endif
ram_bank = 3
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
SP#P9 = 36
_X = 37
_XH = 38
delay = 39
delayH = 40
_B#VR1 = 41
#define Motor1_L PORTB,0
#define Motor1_R PORTB,1
#define Motor2_L PORTB,2
#define Motor2_R PORTB,3
#define Motor3_L PORTB,4
#define Motor3_R PORTB,5
#define Motor4_L PORTB,6
#define Motor4_R PORTB,7
#define Motor5_L PORTC,1
#define Motor5_R PORTC,2
#define IR PORTA,0
#define IR_mode PORTC,3
#define open_key PORTC,4
#define close_key PORTC,5
#define flag _B#VR1,0
#define flag2 _B#VR1,1
#define __XTAL 20
proton#code#start
        org 0
        goto proton#main#start
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
        movlw 3
        movwf 33
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 33
DLUS@W
        addlw 252
        movwf 32
        comf 33,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 32,F
        skpnc
        goto $ - 3
        addwf 32,F
        nop
        incfsz 33,F
        goto $ - 8
        return
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
F1_000004 equ $ ; IN [ANTOR] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000023 equ $ ; IN [ANTOR] OUTPUT PORTB
        clrf TRISB
F1_000024 equ $ ; IN [ANTOR] TRISC = %11111000
        movlw 248
        movwf TRISC
F1_000025 equ $ ; IN [ANTOR] INPUT IR
        bsf TRISA,0
F1_000032 equ $ ; IN [ANTOR] FLAG = 0
        bcf STATUS,5
ram_bank = 0
        bcf _B#VR1,0
F1_000033 equ $ ; IN [ANTOR] FLAG2 = 0
        bcf _B#VR1,1
F1_000035 equ $ ; IN [ANTOR] PORTB = 0 : PORTC = 0
        clrf PORTB
        clrf PORTC
F1_000036 equ $ ; IN [ANTOR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
F1_000038 equ $ ; IN [ANTOR] WHILE 1 = 1
BC@LL1
F1_000040 equ $ ; IN [ANTOR] IF CLOSE_KEY = 1 AND FLAG = 0 THEN
        movlw 0
        btfsc PORTC,5
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,0
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL4
F1_000042 equ $ ; IN [ANTOR] GOSUB MOTOR1_CLOSE
        call Motor1_close
F1_000043 equ $ ; IN [ANTOR] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        call DLY@W
F1_000044 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000046 equ $ ; IN [ANTOR] GOSUB MOTOR2_CLOSE
        call Motor2_close
F1_000047 equ $ ; IN [ANTOR] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        call DLY@W
F1_000048 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000050 equ $ ; IN [ANTOR] GOSUB MOTOR3_CLOSE
        call Motor3_close
F1_000051 equ $ ; IN [ANTOR] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        call DLY@W
F1_000052 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000054 equ $ ; IN [ANTOR] GOSUB MOTOR4_CLOSE
        call Motor4_close
F1_000055 equ $ ; IN [ANTOR] DELAYMS 3200
        movlw 12
        movwf PP1H
        movlw 128
        call DLY@W
F1_000056 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000058 equ $ ; IN [ANTOR] GOSUB MOTOR5_CLOSE
        call Motor5_close
F1_000059 equ $ ; IN [ANTOR] DELAYMS 3000
        movlw 11
        movwf PP1H
        movlw 184
        call DLY@W
F1_000060 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000062 equ $ ; IN [ANTOR] FLAG = 1
        bsf _B#VR1,0
F1_000064 equ $ ; IN [ANTOR] ENDIF
BC@LL4
F1_000066 equ $ ; IN [ANTOR] IF OPEN_KEY = 1 AND FLAG = 1 THEN
        movlw 0
        btfsc PORTC,4
        movlw 1
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,0
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL6
F1_000068 equ $ ; IN [ANTOR] GOSUB MOTOR5_OPEN
        call Motor5_open
F1_000069 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000070 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000072 equ $ ; IN [ANTOR] GOSUB MOTOR4_OPEN
        call Motor4_open
F1_000073 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000074 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000076 equ $ ; IN [ANTOR] GOSUB MOTOR3_OPEN
        call Motor3_open
F1_000077 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000078 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000080 equ $ ; IN [ANTOR] GOSUB MOTOR2_OPEN
        call Motor2_open
F1_000081 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000082 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000084 equ $ ; IN [ANTOR] GOSUB MOTOR1_OPEN
        call Motor1_open
F1_000085 equ $ ; IN [ANTOR] DELAYMS 2500
        movlw 9
        movwf PP1H
        movlw 196
        call DLY@W
F1_000086 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000088 equ $ ; IN [ANTOR] FLAG = 0
        bcf _B#VR1,0
F1_000089 equ $ ; IN [ANTOR] FLAG2 = 0
        bcf _B#VR1,1
F1_000091 equ $ ; IN [ANTOR] ENDIF
BC@LL6
F1_000093 equ $ ; IN [ANTOR] IF OPEN_KEY = 1 AND FLAG2 = 1 THEN
        movlw 0
        btfsc PORTC,4
        movlw 1
        movwf SP#P9
        movlw 0
        btfsc _B#VR1,1
        movlw 1
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL8
F1_000095 equ $ ; IN [ANTOR] GOSUB MOTOR5_OPEN
        call Motor5_open
F1_000096 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000097 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000099 equ $ ; IN [ANTOR] GOSUB MOTOR4_OPEN
        call Motor4_open
F1_000100 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000101 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000103 equ $ ; IN [ANTOR] GOSUB MOTOR3_OPEN
        call Motor3_open
F1_000104 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000105 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000107 equ $ ; IN [ANTOR] GOSUB MOTOR2_OPEN
        call Motor2_open
F1_000108 equ $ ; IN [ANTOR] DELAYMS 2800
        movlw 10
        movwf PP1H
        movlw 240
        call DLY@W
F1_000109 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000111 equ $ ; IN [ANTOR] GOSUB MOTOR1_OPEN
        call Motor1_open
F1_000112 equ $ ; IN [ANTOR] DELAYMS 2500
        movlw 9
        movwf PP1H
        movlw 196
        call DLY@W
F1_000113 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000115 equ $ ; IN [ANTOR] FLAG2 = 0
        bcf _B#VR1,1
F1_000117 equ $ ; IN [ANTOR] ENDIF
BC@LL8
F1_000119 equ $ ; IN [ANTOR] IF IR_MODE = 1 AND FLAG2 = 0 THEN
        movlw 0
        btfsc PORTC,3
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc _B#VR1,1
        movlw 0
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL10
F1_000120 equ $ ; IN [ANTOR] IF IR = 0 THEN
        btfsc PORTA,0
        goto BC@LL12
F1_000121 equ $ ; IN [ANTOR] FOR X = 0 TO 3000
        clrf _XH
        clrf _X
FR@LB14
        movlw 11
        subwf _XH,W
        btfss STATUS,0
        goto CP@LB2
        btfss STATUS,2
        goto NX@LB15
        movlw 185
        subwf _X,W
        btfsc STATUS,0
        goto NX@LB15
CP@LB2
F1_000122 equ $ ; IN [ANTOR] GOSUB MOTOR5_CLOSE
        call Motor5_close
F1_000123 equ $ ; IN [ANTOR] GOSUB MOTOR4_CLOSE
        call Motor4_close
F1_000124 equ $ ; IN [ANTOR] GOSUB MOTOR3_CLOSE
        call Motor3_close
F1_000125 equ $ ; IN [ANTOR] GOSUB MOTOR2_CLOSE
        call Motor2_close
F1_000126 equ $ ; IN [ANTOR] GOSUB MOTOR1_CLOSE
        call Motor1_close
F1_000127 equ $ ; IN [ANTOR] DELAYMS 1
        movlw 1
        call DL@MS
CT@LB16
F1_000128 equ $ ; IN [ANTOR] NEXT
        incf _X,F
        btfsc STATUS,2
        incfsz _XH,F
        goto FR@LB14
NX@LB15
F1_000129 equ $ ; IN [ANTOR] GOSUB CLEAR_ALL
        call clear_all
F1_000130 equ $ ; IN [ANTOR] FLAG2 = 1
        bsf _B#VR1,1
F1_000131 equ $ ; IN [ANTOR] ENDIF
BC@LL12
F1_000132 equ $ ; IN [ANTOR] ENDIF
BC@LL10
F1_000134 equ $ ; IN [ANTOR] WEND
        goto BC@LL1
BC@LL2
clear_all
F1_000137 equ $ ; IN [ANTOR] PORTB = 0
        clrf PORTB
F1_000138 equ $ ; IN [ANTOR] PORTC.1 = 0 : PORTC.2 = 0
        bcf PORTC,1
        bcf PORTC,2
F1_000139 equ $ ; IN [ANTOR] RETURN
        return
Motor1_close
F1_000142 equ $ ; IN [ANTOR] MOTOR1_L = 1
        bsf PORTB,0
F1_000143 equ $ ; IN [ANTOR] MOTOR1_R = 0
        bcf PORTB,1
F1_000144 equ $ ; IN [ANTOR] RETURN
        return
Motor1_open
F1_000147 equ $ ; IN [ANTOR] MOTOR1_L = 0
        bcf PORTB,0
F1_000148 equ $ ; IN [ANTOR] MOTOR1_R = 1
        bsf PORTB,1
F1_000149 equ $ ; IN [ANTOR] RETURN
        return
Motor2_close
F1_000152 equ $ ; IN [ANTOR] MOTOR2_L = 1
        bsf PORTB,2
F1_000153 equ $ ; IN [ANTOR] MOTOR2_R = 0
        bcf PORTB,3
F1_000154 equ $ ; IN [ANTOR] RETURN
        return
Motor2_open
F1_000157 equ $ ; IN [ANTOR] MOTOR2_L = 0
        bcf PORTB,2
F1_000158 equ $ ; IN [ANTOR] MOTOR2_R = 1
        bsf PORTB,3
F1_000159 equ $ ; IN [ANTOR] RETURN
        return
Motor3_close
F1_000162 equ $ ; IN [ANTOR] MOTOR3_L = 1
        bsf PORTB,4
F1_000163 equ $ ; IN [ANTOR] MOTOR3_R = 0
        bcf PORTB,5
F1_000164 equ $ ; IN [ANTOR] RETURN
        return
Motor3_open
F1_000167 equ $ ; IN [ANTOR] MOTOR3_L = 0
        bcf PORTB,4
F1_000168 equ $ ; IN [ANTOR] MOTOR3_R = 1
        bsf PORTB,5
F1_000169 equ $ ; IN [ANTOR] RETURN
        return
Motor4_close
F1_000172 equ $ ; IN [ANTOR] MOTOR4_L = 1
        bsf PORTB,6
F1_000173 equ $ ; IN [ANTOR] MOTOR4_R = 0
        bcf PORTB,7
F1_000174 equ $ ; IN [ANTOR] RETURN
        return
Motor4_open
F1_000177 equ $ ; IN [ANTOR] MOTOR4_L = 0
        bcf PORTB,6
F1_000178 equ $ ; IN [ANTOR] MOTOR4_R = 1
        bsf PORTB,7
F1_000179 equ $ ; IN [ANTOR] RETURN
        return
Motor5_close
F1_000182 equ $ ; IN [ANTOR] MOTOR5_L = 1
        bsf PORTC,1
F1_000183 equ $ ; IN [ANTOR] MOTOR5_R = 0
        bcf PORTC,2
F1_000184 equ $ ; IN [ANTOR] RETURN
        return
Motor5_open
F1_000187 equ $ ; IN [ANTOR] MOTOR5_L = 0
        bcf PORTC,1
F1_000188 equ $ ; IN [ANTOR] MOTOR5_R = 1
        bsf PORTC,2
F1_000189 equ $ ; IN [ANTOR] RETURN
        return
F1_EOF equ $ ; ANTOR
PB@LB17
        goto PB@LB17
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
