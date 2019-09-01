;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16C73B, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
  __MAXRAM 0XFF
  __BADRAM 0X08-0X09
  __BADRAM 0X88-0X89, 0X8F-0X91, 0X95-0X97, 0X9A-0X9E
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
#define __16C73B 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 192
#define _RAM_END 0X00C0
#define _MAXMEM 4096
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 2
#define _BANKS 2
#define RAM_BANKS 2
#define _USART 1
#define _USB 0
#define _FLASH 0
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00FF
#define _SYSTEM_VARIABLE_COUNT 22
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
PBP#VAR0 = 39
PP0 = 40
PP0H = 41
PP1 = 42
PP1H = 43
PP2 = 44
PP2H = 45
PP3 = 46
PP3H = 47
PP4 = 48
PP5 = 49
PP6 = 50
PP6H = 51
PP7 = 52
PP7H = 53
rly1_status = 54
rly2_status = 55
rly3_status = 56
rly4_status = 57
msg = 58
variable msg#0=58,msg#1=59,msg#2=60,msg#3=61
temp = 62
_X = 63
_XH = 64
g_value = 65
v_value = 66
s_value = 67
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define sound_sense PORTC,0
#define vibrate_sense PORTC,1
#define relay_1 PORTC,2
#define relay_2 PORTC,3
#define relay_3 PORTC,4
#define relay_4 PORTC,5
#define __XTAL 20
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
#define __HSERIAL_BAUD 49664
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
HSERIAL_SPBRG = 10
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 115200
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 50
        clrf 51
        rlf 51,F
        movlw 0
        subwf 51,W
        movlw 128
        skpnz
        subwf 50,W
        skpc
        goto FA@EXT
        btfsc 47,7
        goto FA@EXT
        movlw 32
        addwf 50,F
FA@EXT
        movf 50,W
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
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 49
        movlw 254
        call CH@SND
        movf 49,W
        goto CH@SND
OUT@DECB
        clrf 37
OUT@DECC
        movwf 44
        clrf 45
OUT@DEC
        bcf 32,3
        movf 37,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 36
        movlw 39
        movwf 43
        movlw 16
        call D@DIG
        movlw 3
        movwf 43
        movlw 232
        call D@DIG
        clrf 43
        movlw 100
        call D@DIG
        clrf 43
        movlw 10
        call D@DIG
        movf 44,W
        goto SEND@IT
D@DIG
        movwf 42
        movf 45,W
        movwf 41
        movf 44,W
        movwf 40
        call D@VD
        movf 40,W
SEND@IT
        movwf 40
        decf 36,F
        skpnz
        bcf 32,3
        movf 37,W
        skpnz
        goto $ + 4
        subwf 36,W
        skpnc
        goto EX@SEND@IT
        movf 40,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
SB@STROUT
        movwf 44
SB@STROUTLP
        movf 36,W
        skpnz
        goto I@NT
        movf 44,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 44,F
        decf 36,F
        goto SB@STROUTLP
PRINT
        movwf 47
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 47,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 41
        movlw 128
        call DLUS@W
        movlw 51
        movwf 46
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
        movwf 46
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 47,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 46
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
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
        bsf PORTB,2
PRT@S
        btfss 32,0
PR@LP
        bcf 32,0
        bsf PORTB,3
        movlw 15
        andwf PORTB,F
        movf 46,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,3
        swapf 46,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 47,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 40
        movf 38,W
        movwf 41
        clrf 42
        clrf 43
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 42,F
        skpc
        addwf 43,F
        skpc
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        incfsz 42,W
        goto $ - 16
        incfsz 43,W
        goto $ - 17
        movlw 250
        movwf 42
        clrf 43
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
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 46
        rlf 46,F
        rlf 46,F
        rlf 46,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 53
        movf 30,W
        movwf 52
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
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
D@VD
        clrf 45
        clrf 44
D@VD2
        movlw 16
        movwf 46
        rlf 41,W
        rlf 44,F
        rlf 45,F
        movf 42,W
        subwf 44,F
        movf 43,W
        skpc
        incfsz 43,W
        subwf 45,F
        skpnc
        goto $ + 8
        movf 42,W
        addwf 44,F
        movf 43,W
        skpnc
        incfsz 43,W
        addwf 45,F
        bcf 3,0
        rlf 40,F
        rlf 41,F
        decfsz 46,F
        goto $ - 21
        movf 40,W
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
GET@ARRAY
        movwf 46
GET@ARRAYW
        movf 35,W
        movwf 47
        movf 46,W
        addwf 35,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
        bsf 3,5
        movlw 10
        movwf 153
        movlw 36
        movwf 152
        bcf 3,5
        movlw 144
        movwf 24
        clrf 32
F2_SOF equ $ ; IOTHOME.PRP
F2_EOF equ $ ; IOTHOME.PRP
F1_SOF equ $ ; IOTHOME.BAS
F1_000027 equ $ ; IN [IOTHOME.BAS] INPUT SOUND_SENSE : INPUT VIBRATE_SENSE
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,0
        bsf TRISC,1
F1_000028 equ $ ; IN [IOTHOME.BAS] OUTPUT RELAY_1 : OUTPUT RELAY_2
        bcf TRISC,2
        bcf TRISC,3
F1_000029 equ $ ; IN [IOTHOME.BAS] OUTPUT RELAY_3 : OUTPUT RELAY_4
        bcf TRISC,4
        bcf TRISC,5
F1_000043 equ $ ; IN [IOTHOME.BAS] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000044 equ $ ; IN [IOTHOME.BAS] PORTC = $FF
        movlw 255
        movwf PORTC
GSM_init
F1_000047 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 80
        f@call PRINT
        movlw 108
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 115
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 119
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
F1_000048 equ $ ; IN [IOTHOME.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000049 equ $ ; IN [IOTHOME.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000050 equ $ ; IN [IOTHOME.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000051 equ $ ; IN [IOTHOME.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000052 equ $ ; IN [IOTHOME.BAS] CLS
        f@call LCD@CLS
F1_000053 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,1, "CONTACTING GSM.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 67
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 99
        f@call PRINT
        movlw 116
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 103
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
F1_000054 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000055 equ $ ; IN [IOTHOME.BAS] HSERIN 100, GSM_INIT,[WAIT("OK")]
        clrf GENH
        movlw 100
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page GSM_init
        btfss STATUS,0
        goto GSM_init
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
F1_000056 equ $ ; IN [IOTHOME.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000057 equ $ ; IN [IOTHOME.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000058 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+CGATT=1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000059 equ $ ; IN [IOTHOME.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000060 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+SAPBR=3,1,",34,"CONTYPE",34,",",34,"GPRS",34, 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 66
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 51
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 79
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 89
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 69
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 71
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000061 equ $ ; IN [IOTHOME.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000062 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+SAPBR=1,1", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 66
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000063 equ $ ; IN [IOTHOME.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000064 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPINIT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000065 equ $ ; IN [IOTHOME.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000066 equ $ ; IN [IOTHOME.BAS] CLS
        f@call LCD@CLS
F1_000067 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,1, "GSM OK.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 71
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 77
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 79
        f@call PRINT
        movlw 75
        f@call PRINT
        movlw 46
        f@call PRINT
        f@call PRINT
F1_000068 equ $ ; IN [IOTHOME.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        f@call DLY@W
F1_000069 equ $ ; IN [IOTHOME.BAS] CLS
        f@call LCD@CLS
F1_000071 equ $ ; IN [IOTHOME.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
F1_000073 equ $ ; IN [IOTHOME.BAS] WHILE 1 = 1
BC@LL2
F1_000075 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,16, DEC1 TEMP
        movlw 128
        movwf BPFH
        movlw 143
        f@call LCD@CRS
        movlw 1
        movwf GEN4H
        movf temp,W
        f@call OUT@DECC
F1_000076 equ $ ; IN [IOTHOME.BAS] INC TEMP
        incf temp,F
F1_000077 equ $ ; IN [IOTHOME.BAS] IF TEMP = 10 THEN TEMP = 0
        movlw 10
        subwf temp,W
        set@page BC@LL5
        btfss STATUS,2
        goto BC@LL5
        clrf temp
BC@LL5
F1_000079 equ $ ; IN [IOTHOME.BAS] GOSUB READ_SERVER
        f@call read_server
F1_000080 equ $ ; IN [IOTHOME.BAS] GOSUB WRITE_SERVER
        f@call write_server
F1_000081 equ $ ; IN [IOTHOME.BAS] WEND
        F@JUMP BC@LL2
BC@LL3
check_sensor
F1_000084 equ $ ; IN [IOTHOME.BAS] G_VALUE = ADIN 0
        movlw 0
        f@call RD@AD
        movwf g_value
F1_000085 equ $ ; IN [IOTHOME.BAS] IF VIBRATE_SENSE = 0 THEN
        set@page BC@LL7
        btfsc PORTC,1
        goto BC@LL7
F1_000086 equ $ ; IN [IOTHOME.BAS] V_VALUE = 1
        movlw 1
        movwf v_value
        F@JUMP BC@LL8
BC@LL7
F1_000087 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000088 equ $ ; IN [IOTHOME.BAS] V_VALUE = 0
        clrf v_value
F1_000089 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL8
F1_000090 equ $ ; IN [IOTHOME.BAS] IF SOUND_SENSE = 0 THEN
        set@page BC@LL10
        btfsc PORTC,0
        goto BC@LL10
F1_000091 equ $ ; IN [IOTHOME.BAS] S_VALUE = 1
        movlw 1
        movwf s_value
        F@JUMP BC@LL11
BC@LL10
F1_000092 equ $ ; IN [IOTHOME.BAS] ELSE
F1_000093 equ $ ; IN [IOTHOME.BAS] S_VALUE = 0
        clrf s_value
F1_000094 equ $ ; IN [IOTHOME.BAS] ENDIF
BC@LL11
F1_000095 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,1, "SMOKE: ", DEC G_VALUE, " "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 83
        f@call PRINT
        movlw 109
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 107
        f@call PRINT
        movlw 101
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movf g_value,W
        f@call OUT@DECB
        movlw 32
        f@call PRINT
F1_000096 equ $ ; IN [IOTHOME.BAS] PRINT AT 2,1, "VIBR:", DEC1 V_VALUE,"   ", "SOUND:", DEC1 S_VALUE
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 86
        f@call PRINT
        movlw 105
        f@call PRINT
        movlw 98
        f@call PRINT
        movlw 114
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 1
        movwf GEN4H
        movf v_value,W
        f@call OUT@DECC
        movlw 32
        f@call PRINT
        f@call PRINT
        f@call PRINT
        movlw 83
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 117
        f@call PRINT
        movlw 110
        f@call PRINT
        movlw 100
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 1
        movwf GEN4H
        movf s_value,W
        f@call OUT@DECC
F1_000097 equ $ ; IN [IOTHOME.BAS] RETURN
        return
delay
F1_000100 equ $ ; IN [IOTHOME.BAS] FOR X = 0 TO 300
        clrf _XH
        clrf _X
FR@LB13
        movlw 1
        subwf _XH,W
        set@page CP@LB2
        btfss STATUS,0
        goto CP@LB2
        set@page NX@LB14
        btfss STATUS,2
        goto NX@LB14
        movlw 45
        subwf _X,W
        set@page NX@LB14
        btfsc STATUS,0
        goto NX@LB14
CP@LB2
F1_000101 equ $ ; IN [IOTHOME.BAS] GOSUB CHECK_SENSOR
        f@call check_sensor
F1_000102 equ $ ; IN [IOTHOME.BAS] DELAYMS 10
        movlw 10
        f@call DL@MS
CT@LB15
F1_000103 equ $ ; IN [IOTHOME.BAS] NEXT
        incf _X,F
        btfsc STATUS,2
        incf _XH,F
        set@page FR@LB13
        btfss STATUS,2
        goto FR@LB13
NX@LB14
F1_000104 equ $ ; IN [IOTHOME.BAS] RETURN
        return
read_server
F1_000107 equ $ ; IN [IOTHOME.BAS] CLEAR MSG
        movlw 4
        movwf PP0
        movlw 58
        movwf FSR
PB@LB16
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB16
        btfss STATUS,2
        goto PB@LB16
F1_000108 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPPARA=",34,"URL",34,",",34,"HTTP://JOYANTO.COM/EEELABS/UPDATE.PHP",34, 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 85
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 76
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        f@call HRSOUT
        movlw 106
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 109
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000109 equ $ ; IN [IOTHOME.BAS] GOSUB DELAY
        f@call delay
F1_000110 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPACTION=0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 79
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000111 equ $ ; IN [IOTHOME.BAS] GOSUB DELAY
        f@call delay
F1_000112 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPREAD", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 69
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000113 equ $ ; IN [IOTHOME.BAS] HSERIN 2000, OVER1,[WAIT("4",13, 10), STR MSG]
        movlw 7
        movwf GENH
        movlw 208
        movwf GEN
PB@LB17
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 52
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 13
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 10
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        clrf PBP#VAR0
PB@LB20
        bsf STATUS,0
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        movf PBP#VAR0,W
        addlw msg
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 4
        set@page PB@LB20
        btfss STATUS,2
        goto PB@LB20
F1_000114 equ $ ; IN [IOTHOME.BAS] PRINT AT 1,11, STR MSG
        movlw 128
        movwf BPFH
        movlw 138
        f@call LCD@CRS
        movlw 4
        movwf GEN4
        clrf PP2H
        movlw 58
        f@call SB@STROUT
F1_000116 equ $ ; IN [IOTHOME.BAS] IF MSG[0] = "0" THEN RELAY_1 = 1
        movf msg#0,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        set@page BC@LL23
        btfss STATUS,2
        goto BC@LL23
        bsf PORTC,2
BC@LL23
F1_000117 equ $ ; IN [IOTHOME.BAS] IF MSG[1] = "0" THEN RELAY_2 = 1
        movf msg#1,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        set@page BC@LL25
        btfss STATUS,2
        goto BC@LL25
        bsf PORTC,3
BC@LL25
F1_000118 equ $ ; IN [IOTHOME.BAS] IF MSG[2] = "0" THEN RELAY_3 = 1
        movf msg#2,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        set@page BC@LL27
        btfss STATUS,2
        goto BC@LL27
        bsf PORTC,4
BC@LL27
F1_000119 equ $ ; IN [IOTHOME.BAS] IF MSG[3] = "0" THEN RELAY_4 = 1
        movf msg#3,W
        movwf PBP#VAR0
        movlw 48
        subwf PBP#VAR0,W
        set@page BC@LL29
        btfss STATUS,2
        goto BC@LL29
        bsf PORTC,5
BC@LL29
F1_000120 equ $ ; IN [IOTHOME.BAS] IF MSG[0] = "1" THEN RELAY_1 = 0
        movf msg#0,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        set@page BC@LL31
        btfss STATUS,2
        goto BC@LL31
        bcf PORTC,2
BC@LL31
F1_000121 equ $ ; IN [IOTHOME.BAS] IF MSG[1] = "1" THEN RELAY_2 = 0
        movf msg#1,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        set@page BC@LL33
        btfss STATUS,2
        goto BC@LL33
        bcf PORTC,3
BC@LL33
F1_000122 equ $ ; IN [IOTHOME.BAS] IF MSG[2] = "1" THEN RELAY_3 = 0
        movf msg#2,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        set@page BC@LL35
        btfss STATUS,2
        goto BC@LL35
        bcf PORTC,4
BC@LL35
F1_000123 equ $ ; IN [IOTHOME.BAS] IF MSG[3] = "1" THEN RELAY_4 = 0
        movf msg#3,W
        movwf PBP#VAR0
        movlw 49
        subwf PBP#VAR0,W
        set@page BC@LL37
        btfss STATUS,2
        goto BC@LL37
        bcf PORTC,5
BC@LL37
over1
F1_000126 equ $ ; IN [IOTHOME.BAS] RETURN
        return
write_server
F1_000129 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPPARA=",34,"URL",34,",",34,"HTTP://JOYANTO.COM/EEELABS/CONNECT.PHP?G_VALUE=",DEC G_VALUE,"&V_VALUE=",DEC V_VALUE,"&S_VALUE=",DEC S_VALUE,34, 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 85
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 76
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 44
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        f@call HRSOUT
        movlw 106
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 121
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 109
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 98
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 104
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 63
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 95
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movf g_value,W
        f@call OUT@DECB
        movlw 38
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 95
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movf v_value,W
        f@call OUT@DECB
        movlw 38
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 95
        f@call HRSOUT
        movlw 118
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movf s_value,W
        f@call OUT@DECB
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000130 equ $ ; IN [IOTHOME.BAS] GOSUB DELAY
        f@call delay
F1_000131 equ $ ; IN [IOTHOME.BAS] HSEROUT["AT+HTTPACTION=0", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 72
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 79
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000132 equ $ ; IN [IOTHOME.BAS] GOSUB DELAY
        f@call delay
F1_000133 equ $ ; IN [IOTHOME.BAS] RETURN
        return
F1_EOF equ $ ; IOTHOME.BAS
PB@LB39
        F@JUMP PB@LB39
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end