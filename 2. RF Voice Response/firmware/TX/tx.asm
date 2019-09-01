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
#define XTAL 8
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
#define _SYSTEM_VARIABLE_COUNT 13
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
BPF = 32
BPFH = 33
GEN4 = 34
GEN4H = 35
GPR = 36
PP0 = 37
PP0H = 38
PP1 = 39
PP1H = 40
PP2 = 41
PP2H = 42
PP3 = 43
SP#P9 = 44
dta = 45
flag = 46
#define __RSOUT_PORT PORTC
#define butt1 PORTC,0
#define butt2 PORTC,1
#define butt3 PORTC,2
#define butt4 PORTC,3
#define light PORTB,2
#define fan PORTB,1
#define AC PORTB,0
#define help PORTC,7
#define _A dta,0
#define _B dta,1
#define _C dta,2
#define _D dta,3
#define _E dta,4
#define _X flag,0
#define _Y flag,1
#define _Z flag,2
#define __XTAL 8
#define __RSOUT_PIN 4
#define __RSOUT_MODE 1
#define __RSOUT_PACE 5
#define __SERIAL_BAUD 2400
proton#code#start
        org 0
        goto proton#main#start
OUT@DECB
        clrf 35
OUT@DECC
        movwf 41
        clrf 42
OUT@DEC
        bcf 32,3
        movf 35,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 34
        movlw 39
        movwf 40
        movlw 16
        call D@DIG
        movlw 3
        movwf 40
        movlw 232
        call D@DIG
        clrf 40
        movlw 100
        call D@DIG
        clrf 40
        movlw 10
        call D@DIG
        movf 41,W
        goto SEND@IT
D@DIG
        movwf 39
        movf 42,W
        movwf 38
        movf 41,W
        movwf 37
        call D@VD
        movf 37,W
SEND@IT
        movwf 37
        decf 34,F
        skpnz
        bcf 32,3
        movf 35,W
        skpnz
        goto $ + 4
        subwf 34,W
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
RSOUT_PORT = PORTC
RSOUT_PIN = 4
RSOUT_MODE = 1
SERIAL_BAUD = 2400
RSOUT
        movwf 36
        movwf 39
        bsf 3,5
        bcf PORTC,4
        bcf 3,5
        movlw 9
        movwf 40
        bcf 3,0
        call RSO@BIT
        rrf 39,F
        decfsz 40,F
        goto $ - 3
        bsf 3,0
        call RSO@BIT
        movlw 5
        call DL@US
        movf 36,W
        goto I@NT
RSO@BIT
        skpnc
        goto $ + 4
        nop
        bsf PORTC,4
        goto SR@DLY
        bcf PORTC,4
        goto SR@DLY
SR@DLY
        movlw 1
        movwf 38
        movlw 153
        goto DLUS@W
CH@SND
        btfsc 33,6
        goto RSOUT
        return
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
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 38
DLUS@W
        addlw 244
        movwf 37
        comf 38,F
        movlw 254
        skpc
        goto $ + 4
        addwf 37,F
        skpnc
        goto $ - 2
        addwf 37,F
        nop
        incfsz 38,F
        goto $ - 6
        nop
        btfsc 37,0
        goto $ + 1
        btfsc 37,0
        goto $ + 1
        return
D@VD
        clrf 42
        clrf 41
D@VD2
        movlw 16
        movwf 43
        rlf 38,W
        rlf 41,F
        rlf 42,F
        movf 39,W
        subwf 41,F
        movf 40,W
        skpc
        incfsz 40,W
        subwf 42,F
        skpnc
        goto $ + 8
        movf 39,W
        addwf 41,F
        movf 40,W
        skpnc
        incfsz 40,W
        addwf 42,F
        bcf 3,0
        rlf 37,F
        rlf 38,F
        decfsz 43,F
        goto $ - 21
        movf 37,W
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
F1_000017 equ $ ; IN [ANTOR] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000018 equ $ ; IN [ANTOR] LOW PORTC.4
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
F1_000030 equ $ ; IN [ANTOR] TRISB = %00000111
        bsf STATUS,5
ram_bank = 1
        movwf TRISB
F1_000031 equ $ ; IN [ANTOR] TRISC = %11001111
        movlw 207
        movwf TRISC
F1_000032 equ $ ; IN [ANTOR] PORTC = 0
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000045 equ $ ; IN [ANTOR] DTA = 0 : FLAG = 0
        clrf dta
        clrf flag
Main
F1_000048 equ $ ; IN [ANTOR] IF BUTT1 = 1 THEN DELAYMS 300 : A = ~A
        set@page BC@LL2
        btfss PORTC,0
        goto BC@LL2
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 1
        xorwf dta,F
BC@LL2
F1_000049 equ $ ; IN [ANTOR] IF BUTT2 = 1 THEN DELAYMS 300 : B = ~B
        set@page BC@LL4
        btfss PORTC,1
        goto BC@LL4
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 2
        xorwf dta,F
BC@LL4
F1_000050 equ $ ; IN [ANTOR] IF BUTT3 = 1 THEN DELAYMS 300 : C = ~C
        set@page BC@LL6
        btfss PORTC,2
        goto BC@LL6
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 4
        xorwf dta,F
BC@LL6
F1_000051 equ $ ; IN [ANTOR] IF BUTT4 = 1 THEN DELAYMS 300 : D = ~D
        set@page BC@LL8
        btfss PORTC,3
        goto BC@LL8
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
        movlw 8
        xorwf dta,F
BC@LL8
F1_000052 equ $ ; IN [ANTOR] IF HELP = 1 THEN E = 1
        set@page BC@LL10
        btfss PORTC,7
        goto BC@LL10
        bsf dta,4
BC@LL10
F1_000053 equ $ ; IN [ANTOR] IF HELP = 0 THEN E = 0
        set@page BC@LL12
        btfsc PORTC,7
        goto BC@LL12
        bcf dta,4
BC@LL12
F1_000055 equ $ ; IN [ANTOR] IF LIGHT = 1 AND X = 0 THEN X =~ X : A = 1
        movlw 0
        btfsc PORTB,2
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc flag,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL14
        btfsc STATUS,2
        goto BC@LL14
        movlw 1
        xorwf flag,F
        bsf dta,0
BC@LL14
F1_000056 equ $ ; IN [ANTOR] IF LIGHT = 0 AND X = 1 THEN X =~ X : A = 0
        movlw 1
        btfsc PORTB,2
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc flag,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL16
        btfsc STATUS,2
        goto BC@LL16
        movlw 1
        xorwf flag,F
        bcf dta,0
BC@LL16
F1_000058 equ $ ; IN [ANTOR] IF FAN = 1 AND Y = 0 THEN Y =~ Y : B = 1
        movlw 0
        btfsc PORTB,1
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc flag,1
        movlw 0
        andwf SP#P9,F
        set@page BC@LL18
        btfsc STATUS,2
        goto BC@LL18
        movlw 2
        xorwf flag,F
        bsf dta,1
BC@LL18
F1_000059 equ $ ; IN [ANTOR] IF FAN = 0 AND Y = 1 THEN Y =~ Y : B = 0
        movlw 1
        btfsc PORTB,1
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc flag,1
        movlw 1
        andwf SP#P9,F
        set@page BC@LL20
        btfsc STATUS,2
        goto BC@LL20
        movlw 2
        xorwf flag,F
        bcf dta,1
BC@LL20
F1_000061 equ $ ; IN [ANTOR] IF AC = 1 AND Z = 0 THEN Z =~ Z : C = 1
        movlw 0
        btfsc PORTB,0
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc flag,2
        movlw 0
        andwf SP#P9,F
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
        movlw 4
        xorwf flag,F
        bsf dta,2
BC@LL22
F1_000062 equ $ ; IN [ANTOR] IF AC = 0 AND Z = 1 THEN Z =~ Z : C = 0
        movlw 1
        btfsc PORTB,0
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc flag,2
        movlw 1
        andwf SP#P9,F
        set@page BC@LL24
        btfsc STATUS,2
        goto BC@LL24
        movlw 4
        xorwf flag,F
        bcf dta,2
BC@LL24
F1_000064 equ $ ; IN [ANTOR] RSOUT "Z", DEC DTA, "A", 13
        movlw 90
        f@call RSOUT
        movlw 64
        movwf BPFH
        movf dta,W
        f@call OUT@DECB
        movlw 65
        f@call RSOUT
        movlw 13
        f@call RSOUT
F1_000065 equ $ ; IN [ANTOR] GOTO MAIN
        F@JUMP Main
F1_EOF equ $ ; ANTOR
PB@LB26
        F@JUMP PB@LB26
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
