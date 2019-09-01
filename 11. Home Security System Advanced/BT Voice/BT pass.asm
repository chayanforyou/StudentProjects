;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F73, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
PIR2 equ 0X000D
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
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRES equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
ADCON1 equ 0X009F
EEDATL equ 0X010C
PMDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
PMDATA equ 0X010C
EEADR equ 0X010D
PMADR equ 0X010D
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
T0IE=5
INTE=4
RBIE=3
T0IF=2
INTF=1
RBIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CCP2IF=0
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
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
CCP2Y=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
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
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CCP2IE=0
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
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
BRGH=2
TRMT=1
TX9D=0
TXD8=0
PCFG2=2
PCFG1=1
PCFG0=0
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
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
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F73 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 3
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define BANK2_START 0X0110
#define BANK2_END 0X0120
#define BANK3_START 0X0190
#define BANK3_END 0X01A0
#define _SYSTEM_VARIABLE_COUNT 14
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
#define LCD#TYPE 0
f@call macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        call PDEST
        endm
F@JUMP macro PDEST
if(PDEST < 1)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
else
if((PDEST & 6144) == 0)
        clrf 10
else
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
endif
endif
endif
        goto PDEST
        endm
set@page macro PDEST
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
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
GEN = 32
GEN4 = 33
GEN4H = 34
GENH = 35
PBP#VAR0 = 36
PP0 = 37
PP0H = 38
PP1 = 39
PP1H = 40
PP3 = 41
PP3H = 42
PP6 = 43
PP6H = 44
SP#P9 = 45
pass = 46
variable pass#0=46,pass#1=47,pass#2=48,pass#3=49
variable pass#4=50,pass#5=51,pass#6=52,pass#7=53
variable pass#8=54
time = 55
#define BT_sw PORTA,2
#define A1 PORTB,6
#define A2 PORTB,7
#define B1 PORTB,5
#define GSM_in PORTC,5
#define GSM_out PORTC,4
#define __XTAL 20
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
HSERIAL_SPBRG = 32
HSERIAL_TXSTA = 32
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 32,W
        movwf 37
        movf 35,W
        movwf 38
        clrf 39
        clrf 40
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 39,F
        skpc
        addwf 40,F
        skpc
        addwf 37,F
        skpc
        addwf 38,F
        skpc
        goto I@NT
        incfsz 39,W
        goto $ - 16
        incfsz 40,W
        goto $ - 17
        movlw 250
        movwf 39
        clrf 40
        goto HRSIN@LPT
HRSIN
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        btfss 12,PP_RCIF
        goto $ - 1
H@RSIN
        movf 26,W
        bsf 3,0
        goto I@NT
DL@MS
        clrf 40
DLY@W
        movwf 39
DLY@P
        movlw 255
        addwf 39,F
        skpc
        addwf 40,F
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
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        bsf 3,5
        movlw 32
        movwf 153
        movlw 32
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000008 equ $ ; IN [ABRAR] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000016 equ $ ; IN [ABRAR] INPUT GSM_IN : OUTPUT GSM_OUT
        bsf TRISC,5
        bcf TRISC,4
F1_000017 equ $ ; IN [ABRAR] OUTPUT A1 : OUTPUT A2
        bcf TRISB,6
        bcf TRISB,7
F1_000018 equ $ ; IN [ABRAR] INPUT BT_SW : INPUT B1
        bsf TRISA,2
        bsf TRISB,5
F1_000019 equ $ ; IN [ABRAR] PORTB = 0 : PORTC = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTB
        clrf PORTC
main
F1_000025 equ $ ; IN [ABRAR] A1 = 0 : A2 = 0
        bcf PORTB,6
        bcf PORTB,7
F1_000026 equ $ ; IN [ABRAR] IF BT_SW = 0 THEN A1 = 1 : GOSUB GET_VOICE
        set@page BC@LL2
        btfsc PORTA,2
        goto BC@LL2
        bsf PORTB,6
        f@call get_voice
BC@LL2
F1_000027 equ $ ; IN [ABRAR] IF GSM_IN = 0 THEN A1 = 1 : A2 = 1 : DELAYMS 2000
        set@page BC@LL4
        btfsc PORTC,5
        goto BC@LL4
        bsf PORTB,6
        bsf PORTB,7
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
BC@LL4
F1_000028 equ $ ; IN [ABRAR] IF B1 = 1 THEN
        set@page BC@LL6
        btfss PORTB,5
        goto BC@LL6
F1_000029 equ $ ; IN [ABRAR] GSM_OUT = 1
        bsf PORTC,4
        F@JUMP BC@LL7
BC@LL6
F1_000030 equ $ ; IN [ABRAR] ELSE
F1_000031 equ $ ; IN [ABRAR] GSM_OUT = 0
        bcf PORTC,4
F1_000032 equ $ ; IN [ABRAR] ENDIF
BC@LL7
F1_000033 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
get_voice
F1_000036 equ $ ; IN [ABRAR] FOR TIME = 0 TO 15
        clrf time
FR@LB9
        movlw 16
        subwf time,W
        set@page NX@LB10
        btfsc STATUS,0
        goto NX@LB10
F1_000037 equ $ ; IN [ABRAR] HSERIN 1000, TIMEOUT,[WAIT("*"), STR PASS]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB12
        f@call HRSIN2
        set@page timeout
        btfss STATUS,0
        goto timeout
        sublw 42
        set@page PB@LB12
        btfss STATUS,2
        goto PB@LB12
        clrf PBP#VAR0
PB@LB15
        bsf STATUS,0
        f@call HRSIN2
        set@page timeout
        btfss STATUS,0
        goto timeout
        movf PBP#VAR0,W
        addlw pass
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 9
        set@page PB@LB15
        btfss STATUS,2
        goto PB@LB15
timeout
F1_000039 equ $ ; IN [ABRAR] IF PASS[0] = "O" AND PASS[8] = "R" THEN
        movf pass#0,W
        movwf PBP#VAR0
        movlw 79
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        movwf SP#P9
        movf pass#8,W
        movwf PBP#VAR0
        movlw 114
        subwf PBP#VAR0,W
        movlw 1
        btfss STATUS,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL16
        btfsc STATUS,2
        goto BC@LL16
F1_000040 equ $ ; IN [ABRAR] A2 = 1
        bsf PORTB,7
F1_000041 equ $ ; IN [ABRAR] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000042 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
F1_000043 equ $ ; IN [ABRAR] ENDIF
BC@LL16
CT@LB11
F1_000044 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf time,F
        set@page FR@LB9
        btfss STATUS,0
        goto FR@LB9
NX@LB10
F1_000045 equ $ ; IN [ABRAR] A1 = 0 : A2 = 0
        bcf PORTB,6
        bcf PORTB,7
F1_000046 equ $ ; IN [ABRAR] CLEAR PASS
        movlw 9
        movwf PP0
        movlw 46
        movwf FSR
PB@LB18
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB18
        btfss STATUS,2
        goto PB@LB18
F1_000047 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB19
        F@JUMP PB@LB19
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
