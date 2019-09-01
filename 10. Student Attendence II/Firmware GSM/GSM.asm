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
#define _SYSTEM_VARIABLE_COUNT 30
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
GEN = 34
GEN3H = 35
GEN4 = 36
GEN4H = 37
GENH = 38
GPR = 39
PP0 = 40
PP0H = 41
PP0HH = 42
PP0HHH = 43
PP1 = 44
PP1H = 45
PP2 = 46
PP2H = 47
PP2HH = 48
PP2HHH = 49
PP3 = 50
PP3H = 51
PP4 = 52
PP6 = 53
PP6H = 54
PP7 = 55
PPZ = 56
PPZH = 57
PPZHH = 58
PPZHHH = 59
RPFH = 60
SP#P9 = 61
rec_number = 62
variable rec_number#0=62,rec_number#1=63,rec_number#2=64,rec_number#3=65
variable rec_number#4=66,rec_number#5=67,rec_number#6=68,rec_number#7=69
variable rec_number#8=70,rec_number#9=71,rec_number#10=72
dta = 73
#define __RSIN_PORT PORTB
#define GSM_OK PORTC,4
#define F0 dta,0
#define F1 dta,1
#define F2 dta,2
#define F3 dta,3
#define __XTAL 20
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
#define __RSIN_PIN 0
#define __SERIAL_BAUD 2400
#define __RSIN_TIMEOUT 1000
HSERIAL_SPBRG = 32
HSERIAL_TXSTA = 32
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 53
        clrf 54
        rlf 54,F
        movlw 0
        subwf 54,W
        movlw 128
        skpnz
        subwf 53,W
        skpc
        goto FA@EXT
        btfsc 51,7
        goto FA@EXT
        movlw 32
        addwf 53,F
FA@EXT
        movf 53,W
        movwf 4
        return
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 41
        movlw 48
        goto DLUS@W
IN@DEC32
        clrf 46
        clrf 47
        clrf 48
        clrf 49
        bcf 39,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 39,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 44
        clrf 43
        clrf 42
        clrf 41
        movlw 10
        movwf 40
        call AL@MUL
        movf 44,W
        addwf 40,W
        movwf 46
        movf 41,W
        movwf 47
        clrw
        skpnc
        movlw 1
        addwf 47,F
        movf 42,W
        movwf 48
        clrw
        skpnc
        movlw 1
        addwf 48,F
        movf 43,W
        movwf 49
        clrw
        skpnc
        movlw 1
        addwf 49,F
        decf 37,F
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
        btfss 39,5
        goto $ + 12
        comf 46,F
        comf 47,F
        comf 48,F
        comf 49,F
        incf 46,F
        skpnz
        incf 47,F
        skpnz
        incf 48,F
        skpnz
        incf 49,F
        movf 46,W
        setc
        goto I@NT
SB@STROUT
        movwf 46
SB@STROUTLP
        movf 36,W
        skpnz
        goto I@NT
        movf 46,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 46,F
        decf 36,F
        goto SB@STROUTLP
PRINT
        movwf 51
        bcf PORTB,2
        bcf PORTB,3
        bsf 3,5
        bcf PORTB,2
        bcf PORTB,3
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 51,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 41
        movlw 128
        call DLUS@W
        movlw 51
        movwf 50
        call PR@LP
        movlw 19
        movwf 41
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 50
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 51,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 50
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,3
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 41
        movlw 208
        call DLUS@W
        bsf 3,0
        return
PRIT@SKP
        bsf 32,0
        sublw 254
        skpnz
        goto PR@EX
        bsf PORTB,3
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,2
        movlw 15
        andwf PORTB,F
        movf 50,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,2
        swapf 50,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 51,W
        goto I@NT
RSIN_PORT = PORTB
RSIN_PIN = 0
RSIN_MODE = 1
SERIAL_BAUD = 2400
RSIN2
        movlw 232
        movwf 40
        movlw 3
        movwf 41
        clrf 44
        bsf 3,5
        bsf PORTB,0
        bcf 3,5
        nop
        btfsc PORTB,0
        goto RSIN@ST
        movlw 255
        addwf 44,F
        skpc
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        incf 44,W
        movlw 250
        skpnz
        movwf 44
        nop
        goto $ + 1
        goto $ - 17
RSIN@ST
        clrf 41
        movlw 103
        call DLUS@W
        movlw 8
        movwf 45
        call SR@DLY
        bcf 3,0
        btfss PORTB,0
        bsf 3,0
        rrf 44,F
        nop
        goto $ + 1
        decfsz 45,F
        goto $ - 8
        call SR@DLY
        bsf 3,0
        movf 44,W
        goto I@NT
SR@DLY
        movlw 1
        movwf 41
        movlw 157
        goto DLUS@W
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 40
        movf 38,W
        movwf 41
        clrf 44
        clrf 45
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 44,F
        skpc
        addwf 45,F
        skpc
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        incfsz 44,W
        goto $ - 16
        incfsz 45,W
        goto $ - 17
        movlw 250
        movwf 44
        clrf 45
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
HRSOUT
        btfss 12,PP_TXIF
        goto $ - 1
        movwf 25
        bsf 3,0
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        btfsc 33,2
        goto HRSOUT
        return
CH@RCV
        movf 60,F
        skpnz
        goto HRSIN2
        decf 60,W
        skpnz
        goto HRSIN
        movf 60,W
        xorlw 6
        skpnz
        goto RSIN2
DL@MS
        clrf 45
DLY@W
        movwf 44
DLY@P
        movlw 255
        addwf 44,F
        skpc
        addwf 45,F
        skpc
        goto I@NT
        movlw 3
        movwf 41
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 41
DLUS@W
        addlw 252
        movwf 40
        comf 41,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 40,F
        skpnc
        goto $ - 3
        addwf 40,F
        nop
        incfsz 41,F
        goto $ - 8
        return
AL@MUL
        movlw 32
        movwf 50
        clrf 56
        clrf 57
        clrf 58
        clrf 59
MLT32@LP
        clrc
        btfss 40,0
        goto MLT32@BR
        movf 46,W
        addwf 56,F
        movf 47,W
        skpnc
        incfsz 47,W
        addwf 57,F
        movf 48,W
        skpnc
        incfsz 48,W
        addwf 58,F
        movf 49,W
        skpnc
        incfsz 49,W
        addwf 59,F
MLT32@BR
        rrf 59,F
        rrf 58,F
        rrf 57,F
        rrf 56,F
        rrf 43,F
        rrf 42,F
        rrf 41,F
        rrf 40,F
        decfsz 50,F
        goto MLT32@LP
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
GET@ARRAY
        movwf 50
GET@ARRAYW
        movf 35,W
        movwf 51
        movf 50,W
        addwf 35,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
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
        clrf 32
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
#define RSIN_MODE_INVERTED
F1_000023 equ $ ; IN [ABRAR] OUTPUT GSM_OK : CLEAR GSM_OK
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,4
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,4
F1_000025 equ $ ; IN [ABRAR] TRISB = %00000001
        movlw 1
        bsf STATUS,5
ram_bank = 1
        movwf TRISB
F1_000026 equ $ ; IN [ABRAR] CLEAR PORTB
        bcf STATUS,5
ram_bank = 0
        clrf PORTB
F1_000033 equ $ ; IN [ABRAR] DTA = 0
        clrf dta
F1_000035 equ $ ; IN [ABRAR] CLS
        f@call LCD@CLS
F1_000036 equ $ ; IN [ABRAR] GOSUB GSM_INIT
        f@call GSM_init
main
F1_000039 equ $ ; IN [ABRAR] RSIN {TIMEOUT}, WAIT("Z"), DEC DTA
PB@LB2
        f@call RSIN2
        set@page timeout
        btfss STATUS,0
        goto timeout
        sublw 90
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        movlw 6
        movwf RPFH
        clrf GEN4H
        f@call IN@DEC32
        set@page timeout
        btfss STATUS,0
        goto timeout
        movwf dta
F1_000040 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 0 AND F1 = 0 AND F0 = 1 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc dta,1
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL3
        btfsc STATUS,2
        goto BC@LL3
F1_000041 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000042 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000043 equ $ ; IN [ABRAR] ENDIF
BC@LL3
F1_000044 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 0 AND F1 = 1 AND F0 = 0 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,1
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc dta,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL5
        btfsc STATUS,2
        goto BC@LL5
F1_000045 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000046 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000047 equ $ ; IN [ABRAR] ENDIF
BC@LL5
F1_000048 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 0 AND F1 = 1 AND F0 = 1 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,1
        movlw 1
        andwf SP#P9,F
        movlw 0
        btfsc dta,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL7
        btfsc STATUS,2
        goto BC@LL7
F1_000049 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000050 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000051 equ $ ; IN [ABRAR] ENDIF
BC@LL7
F1_000052 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 1 AND F1 = 0 AND F0 = 0 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc dta,2
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc dta,1
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc dta,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL9
        btfsc STATUS,2
        goto BC@LL9
F1_000053 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000054 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000055 equ $ ; IN [ABRAR] ENDIF
BC@LL9
F1_000056 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 1 AND F1 = 0 AND F0 = 1 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc dta,2
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc dta,1
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL11
        btfsc STATUS,2
        goto BC@LL11
F1_000057 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000058 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000059 equ $ ; IN [ABRAR] ENDIF
BC@LL11
F1_000060 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 1 AND F1 = 1 AND F0 = 0 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc dta,2
        movlw 1
        andwf SP#P9,F
        movlw 0
        btfsc dta,1
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc dta,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL13
        btfsc STATUS,2
        goto BC@LL13
F1_000061 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000062 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000063 equ $ ; IN [ABRAR] ENDIF
BC@LL13
F1_000064 equ $ ; IN [ABRAR] IF F3 = 0 AND F2 = 1 AND F1 = 1 AND F0 = 1 THEN
        movlw 1
        btfsc dta,3
        movlw 0
        movwf SP#P9
        movlw 0
        btfsc dta,2
        movlw 1
        andwf SP#P9,F
        movlw 0
        btfsc dta,1
        movlw 1
        andwf SP#P9,F
        movlw 0
        btfsc dta,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL15
        btfsc STATUS,2
        goto BC@LL15
F1_000065 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000066 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000067 equ $ ; IN [ABRAR] ENDIF
BC@LL15
F1_000068 equ $ ; IN [ABRAR] IF F3 = 1 AND F2 = 0 AND F1 = 0 AND F0 = 0 THEN
        movlw 0
        btfsc dta,3
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc dta,1
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc dta,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL17
        btfsc STATUS,2
        goto BC@LL17
F1_000069 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000070 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000071 equ $ ; IN [ABRAR] ENDIF
BC@LL17
F1_000072 equ $ ; IN [ABRAR] IF F3 = 1 AND F2 = 0 AND F1 = 0 AND F0 = 1 THEN
        movlw 0
        btfsc dta,3
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 1
        btfsc dta,1
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,0
        movlw 1
        andwf SP#P9,F
        set@page BC@LL19
        btfsc STATUS,2
        goto BC@LL19
F1_000073 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000074 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000075 equ $ ; IN [ABRAR] ENDIF
BC@LL19
F1_000076 equ $ ; IN [ABRAR] IF F3 = 1 AND F2 = 0 AND F1 = 1 AND F0 = 0 THEN
        movlw 0
        btfsc dta,3
        movlw 1
        movwf SP#P9
        movlw 1
        btfsc dta,2
        movlw 0
        andwf SP#P9,F
        movlw 0
        btfsc dta,1
        movlw 1
        andwf SP#P9,F
        movlw 1
        btfsc dta,0
        movlw 0
        andwf SP#P9,F
        set@page BC@LL21
        btfsc STATUS,2
        goto BC@LL21
F1_000077 equ $ ; IN [ABRAR] STR REC_NUMBER = "01708339608"
        movlw 48
        movwf rec_number#0
        movlw 49
        movwf rec_number#1
        movlw 55
        movwf rec_number#2
        movlw 48
        movwf rec_number#3
        movlw 56
        movwf rec_number#4
        movlw 51
        movwf rec_number#5
        movwf rec_number#6
        movlw 57
        movwf rec_number#7
        movlw 54
        movwf rec_number#8
        movlw 48
        movwf rec_number#9
        movlw 56
        movwf rec_number#10
F1_000078 equ $ ; IN [ABRAR] GOSUB SEND_SMS
        f@call Send_SMS
F1_000079 equ $ ; IN [ABRAR] ENDIF
BC@LL21
timeout
F1_000081 equ $ ; IN [ABRAR] GOTO MAIN
        F@JUMP main
GSM_init
F1_000084 equ $ ; IN [ABRAR] GSM_OK = 1
        bsf PORTC,4
F1_000085 equ $ ; IN [ABRAR] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000086 equ $ ; IN [ABRAR] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB23
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB23
        btfss STATUS,2
        goto PB@LB23
F1_000087 equ $ ; IN [ABRAR] HSEROUT["ATE0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 69
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000088 equ $ ; IN [ABRAR] HSEROUT["AT + CMGF = 1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000089 equ $ ; IN [ABRAR] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 50
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000090 equ $ ; IN [ABRAR] GSM_OK = 0
        bcf PORTC,4
F1_000091 equ $ ; IN [ABRAR] RETURN
        return
Send_SMS
F1_000094 equ $ ; IN [ABRAR] GSM_OK = 1
        bsf PORTC,4
F1_000095 equ $ ; IN [ABRAR] HSEROUT["AT+CMGF=1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000096 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000097 equ $ ; IN [ABRAR] HSEROUT["AT+CMGS=",34, STR REC_NUMBER, 34,13,10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 77
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 11
        movwf GEN4
        clrf PP2H
        movlw 62
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000098 equ $ ; IN [ABRAR] DELAYMS 200
        movlw 200
        f@call DL@MS
F1_000099 equ $ ; IN [ABRAR] HSEROUT["10DAYS ARRIVED YOUR CHILD NOT PRESENT IN SCHOOL.", $1A, 13, 10]
        movlw 49
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 114
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 32
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000100 equ $ ; IN [ABRAR] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000101 equ $ ; IN [ABRAR] GSM_OK = 0
        bcf PORTC,4
F1_000102 equ $ ; IN [ABRAR] RETURN
        return
F1_EOF equ $ ; ABRAR
PB@LB26
        F@JUMP PB@LB26
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
