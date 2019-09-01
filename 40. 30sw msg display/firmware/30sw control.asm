;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F877A, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PORTD equ 0X0008
PORTE equ 0X0009
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
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
TRISD equ 0X0088
TRISE equ 0X0089
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPSTAT equ 0X0094
TXSTA equ 0X0098
SPBRG equ 0X0099
CMCON equ 0X009C
CVRCON equ 0X009D
ADRESL equ 0X009E
ADCON1 equ 0X009F
EEDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
EECON1 equ 0X018C
EECON2 equ 0X018D
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
TMR0IE=5
INTE=4
RBIE=3
T0IF=2
TMR0IF=2
INTF=1
RBIF=0
PSPIF=7
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
CMIF=6
EEIF=4
BCLIF=3
CCP2IF=0
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
T1SYNC=2
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
ADDEN=3
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
IBF=7
OBF=6
IBOV=5
PSPMODE=4
TRISE2=2
TRISE1=1
TRISE0=0
PSPIE=7
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
CMIE=6
EEIE=4
BCLIE=3
CCP2IE=0
NOT_POR=1
NOT_BO=0
NOT_BOR=0
GCEN=7
ACKSTAT=6
PP_ACKSTAT=6
ACKDT=5
PP_ACKDT=5
ACKEN=4
PP_ACKEN=4
RCEN=3
PP_RCEN=3
PEN=2
PP_PEN=2
RSEN=1
PP_RSEN=1
SEN=0
PP_SEN=0
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
C2OUT=7
C1OUT=6
C2INV=5
C1INV=4
CIS=3
CM2=2
CM1=1
CM0=0
CVREN=7
CVROE=6
CVRR=5
CVR3=3
CVR2=2
CVR1=1
CVR0=0
ADFM=7
ADCS2=6
PCFG3=3
PCFG2=2
PCFG1=1
PCFG0=0
EEPGD=7
PP_EEPGD=7
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X8F-0X90, 0X95-0X97, 0X9A-0X9B
  __BADRAM 0X105, 0X107-0X109
  __BADRAM 0X185, 0X187-0X189, 0X18E-0X18F
CP_ALL equ 0X1FFF
CP_OFF equ 0X3FFF
DEBUG_OFF equ 0X3FFF
DEBUG_ON equ 0X37FF
WRT_1FOURTH equ 0X3BFF
CPD_OFF equ 0X3FFF
CPD_ON equ 0X3EFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X3F7F
BODEN_ON equ 0X3FFF
BODEN_OFF equ 0X3FBF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
RC_OSC equ 0X3FFF
HS_OSC equ 0X3FFE
XT_OSC equ 0X3FFD
LP_OSC equ 0X3FFC
BOREN_OFF equ 0X3FBF
BOREN_ON equ 0X3FFF
CP_ON equ 0X1FFF
FOSC_EXTRC equ 0X3FFF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_XT equ 0X3FFD
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
WRT_1FOURTH equ 0X3BFF
WRT_256 equ 0X3DFF
WRT_HALF equ 0X39FF
WRT_OFF equ 0X3FFF
#define __16F877A 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 368
#define _RAM_END 0X0170
#define _MAXMEM 8192
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 4
#define _BANKS 3
#define RAM_BANKS 4
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 8
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0110
#define BANK2_END 0X016F
#define BANK3_START 0X0190
#define BANK3_END 0X01EF
#define _SYSTEM_VARIABLE_COUNT 7
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
endif
else
if(PDEST > $)
if((PDEST & 2048) == 0)
        bcf 10,3
else
        bsf 10,3
endif
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
if((PDEST & 4096) == 0)
        bcf 10,4
else
        bsf 10,4
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
PP0 = 34
PP0H = 35
PP1 = 36
PP1H = 37
PP4 = 38
cmd = 39
#define butt_1 PORTA,0
#define butt_2 PORTA,1
#define butt_3 PORTA,2
#define butt_4 PORTA,3
#define butt_5 PORTA,4
#define butt_6 PORTA,5
#define butt_7 PORTE,0
#define butt_8 PORTE,1
#define butt_9 PORTE,2
#define butt_10 PORTC,0
#define butt_11 PORTC,1
#define butt_12 PORTC,2
#define butt_13 PORTC,3
#define butt_14 PORTD,0
#define butt_15 PORTD,1
#define butt_16 PORTD,2
#define butt_17 PORTD,3
#define butt_18 PORTC,4
#define butt_19 PORTC,5
#define butt_20 PORTD,4
#define butt_21 PORTD,5
#define butt_22 PORTD,6
#define butt_23 PORTD,7
#define butt_24 PORTB,0
#define butt_25 PORTB,1
#define butt_26 PORTB,2
#define butt_27 PORTB,3
#define butt_28 PORTB,4
#define butt_29 PORTB,5
#define butt_30 PORTB,6
#define __XTAL 20
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 129
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 9600
proton#code#start
        org 0
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
HRSOUT
        btfss 12,PP_TXIF
        goto $ - 1
        movwf 25
        bsf 3,0
        goto I@NT
DL@MS
        clrf 37
DLY@W
        movwf 36
DLY@P
        movlw 255
        addwf 36,F
        skpc
        addwf 37,F
        skpc
        goto I@NT
        movlw 3
        movwf 35
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 35
DLUS@W
        addlw 252
        movwf 34
        comf 35,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 34,F
        skpnc
        goto $ - 3
        addwf 34,F
        nop
        incfsz 35,F
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
        movlw 129
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; 30SW CONTROL.PRP
F2_EOF equ $ ; 30SW CONTROL.PRP
F1_SOF equ $ ; 30SW CONTROL.BAS
F1_000040 equ $ ; IN [30SW CONTROL.BAS] ADCON1 = 7
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000041 equ $ ; IN [30SW CONTROL.BAS] TRISA = $FF
        movlw 255
        movwf TRISA
F1_000042 equ $ ; IN [30SW CONTROL.BAS] TRISB = $FF
        movwf TRISB
F1_000043 equ $ ; IN [30SW CONTROL.BAS] TRISD = $FF
        movwf TRISD
F1_000044 equ $ ; IN [30SW CONTROL.BAS] TRISC = $BF
        movlw 191
        movwf TRISC
F1_000047 equ $ ; IN [30SW CONTROL.BAS] CMD = 0
        bcf STATUS,5
ram_bank = 0
        clrf cmd
F1_000049 equ $ ; IN [30SW CONTROL.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000050 equ $ ; IN [30SW CONTROL.BAS] HSEROUT["0", 10]
        movlw 48
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
main
F1_000053 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_1 = 1 THEN HSEROUT["1", 10] : DELAYMS 500
        set@page BC@LL2
        btfss PORTA,0
        goto BC@LL2
        movlw 49
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL2
F1_000054 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_2 = 1 THEN HSEROUT["2", 10] : DELAYMS 500
        set@page BC@LL4
        btfss PORTA,1
        goto BC@LL4
        movlw 50
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL4
F1_000055 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_3 = 1 THEN HSEROUT["3", 10] : DELAYMS 500
        set@page BC@LL6
        btfss PORTA,2
        goto BC@LL6
        movlw 51
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL6
F1_000056 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_4 = 1 THEN HSEROUT["4", 10] : DELAYMS 500
        set@page BC@LL8
        btfss PORTA,3
        goto BC@LL8
        movlw 52
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL8
F1_000057 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_5 = 1 THEN HSEROUT["5", 10] : DELAYMS 500
        set@page BC@LL10
        btfss PORTA,4
        goto BC@LL10
        movlw 53
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL10
F1_000058 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_6 = 1 THEN HSEROUT["6", 10] : DELAYMS 500
        set@page BC@LL12
        btfss PORTA,5
        goto BC@LL12
        movlw 54
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL12
F1_000059 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_7 = 1 THEN HSEROUT["7", 10] : DELAYMS 500
        set@page BC@LL14
        btfss PORTE,0
        goto BC@LL14
        movlw 55
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL14
F1_000060 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_8 = 1 THEN HSEROUT["8", 10] : DELAYMS 500
        set@page BC@LL16
        btfss PORTE,1
        goto BC@LL16
        movlw 56
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL16
F1_000061 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_9 = 1 THEN HSEROUT["9", 10] : DELAYMS 500
        set@page BC@LL18
        btfss PORTE,2
        goto BC@LL18
        movlw 57
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL18
F1_000062 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_10 = 1 THEN HSEROUT["10", 10] : DELAYMS 500
        set@page BC@LL20
        btfss PORTC,0
        goto BC@LL20
        movlw 49
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL20
F1_000063 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_11 = 1 THEN HSEROUT["11", 10] : DELAYMS 500
        set@page BC@LL22
        btfss PORTC,1
        goto BC@LL22
        movlw 49
        f@call HRSOUT
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL22
F1_000064 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_12 = 1 THEN HSEROUT["12", 10] : DELAYMS 500
        set@page BC@LL24
        btfss PORTC,2
        goto BC@LL24
        movlw 49
        f@call HRSOUT
        movlw 50
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL24
F1_000065 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_13 = 1 THEN HSEROUT["13", 10] : DELAYMS 500
        set@page BC@LL26
        btfss PORTC,3
        goto BC@LL26
        movlw 49
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL26
F1_000066 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_14 = 1 THEN HSEROUT["14", 10] : DELAYMS 500
        set@page BC@LL28
        btfss PORTD,0
        goto BC@LL28
        movlw 49
        f@call HRSOUT
        movlw 52
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL28
F1_000067 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_15 = 1 THEN HSEROUT["15", 10] : DELAYMS 500
        set@page BC@LL30
        btfss PORTD,1
        goto BC@LL30
        movlw 49
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL30
F1_000068 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_16 = 1 THEN HSEROUT["16", 10] : DELAYMS 500
        set@page BC@LL32
        btfss PORTD,2
        goto BC@LL32
        movlw 49
        f@call HRSOUT
        movlw 54
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL32
F1_000069 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_17 = 1 THEN HSEROUT["17", 10] : DELAYMS 500
        set@page BC@LL34
        btfss PORTD,3
        goto BC@LL34
        movlw 49
        f@call HRSOUT
        movlw 55
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL34
F1_000070 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_18 = 1 THEN HSEROUT["18", 10] : DELAYMS 500
        set@page BC@LL36
        btfss PORTC,4
        goto BC@LL36
        movlw 49
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL36
F1_000071 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_19 = 1 THEN HSEROUT["19", 10] : DELAYMS 500
        set@page BC@LL38
        btfss PORTC,5
        goto BC@LL38
        movlw 49
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL38
F1_000072 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_20 = 1 THEN HSEROUT["20", 10] : DELAYMS 500
        set@page BC@LL40
        btfss PORTD,4
        goto BC@LL40
        movlw 50
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL40
F1_000073 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_21 = 1 THEN HSEROUT["21", 10] : DELAYMS 500
        set@page BC@LL42
        btfss PORTD,5
        goto BC@LL42
        movlw 50
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL42
F1_000074 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_22 = 1 THEN HSEROUT["22", 10] : DELAYMS 500
        set@page BC@LL44
        btfss PORTD,6
        goto BC@LL44
        movlw 50
        f@call HRSOUT
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL44
F1_000075 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_23 = 1 THEN HSEROUT["23", 10] : DELAYMS 500
        set@page BC@LL46
        btfss PORTD,7
        goto BC@LL46
        movlw 50
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL46
F1_000076 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_24 = 1 THEN HSEROUT["24", 10] : DELAYMS 500
        set@page BC@LL48
        btfss PORTB,0
        goto BC@LL48
        movlw 50
        f@call HRSOUT
        movlw 52
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL48
F1_000077 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_25 = 1 THEN HSEROUT["25", 10] : DELAYMS 500
        set@page BC@LL50
        btfss PORTB,1
        goto BC@LL50
        movlw 50
        f@call HRSOUT
        movlw 53
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL50
F1_000078 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_26 = 1 THEN HSEROUT["26", 10] : DELAYMS 500
        set@page BC@LL52
        btfss PORTB,2
        goto BC@LL52
        movlw 50
        f@call HRSOUT
        movlw 54
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL52
F1_000079 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_27 = 1 THEN HSEROUT["27", 10] : DELAYMS 500
        set@page BC@LL54
        btfss PORTB,3
        goto BC@LL54
        movlw 50
        f@call HRSOUT
        movlw 55
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL54
F1_000080 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_28 = 1 THEN HSEROUT["28", 10] : DELAYMS 500
        set@page BC@LL56
        btfss PORTB,4
        goto BC@LL56
        movlw 50
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL56
F1_000081 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_29 = 1 THEN HSEROUT["29", 10] : DELAYMS 500
        set@page BC@LL58
        btfss PORTB,5
        goto BC@LL58
        movlw 50
        f@call HRSOUT
        movlw 57
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL58
F1_000082 equ $ ; IN [30SW CONTROL.BAS] IF BUTT_30 = 1 THEN HSEROUT["30", 10] : DELAYMS 500
        set@page BC@LL60
        btfss PORTB,6
        goto BC@LL60
        movlw 51
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
        movlw 1
        movwf PP1H
        movlw 244
        f@call DLY@W
BC@LL60
F1_000083 equ $ ; IN [30SW CONTROL.BAS] GOTO MAIN
        F@JUMP main
F1_EOF equ $ ; 30SW CONTROL.BAS
PB@LB62
        F@JUMP PB@LB62
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_OFF&LVP_OFF&CPD_OFF&WRT_OFF&DEBUG_OFF&CP_ON
        end
