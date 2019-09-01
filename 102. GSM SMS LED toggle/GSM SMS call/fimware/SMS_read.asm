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
#define _SYSTEM_VARIABLE_COUNT 21
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
PBP#VAR1 = 40
PP0 = 41
PP0H = 42
PP1 = 43
PP1H = 44
PP2 = 45
PP2H = 46
PP3 = 47
PP3H = 48
PP4 = 49
PP6 = 50
PP6H = 51
PP7 = 52
num = 53
variable num#0=53,num#1=54,num#2=55,num#3=56
variable num#4=57,num#5=58,num#6=59,num#7=60
variable num#8=61,num#9=62,num#10=63
number = 64
variable number#0=64,number#1=65,number#2=66,number#3=67
variable number#4=68,number#5=69,number#6=70,number#7=71
variable number#8=72,number#9=73
message = 74
variable message#0=74,message#1=75,message#2=76,message#3=77
variable message#4=78,message#5=79,message#6=80,message#7=81
variable message#8=82,message#9=83,message#10=84,message#11=85
variable message#12=86,message#13=87,message#14=88,message#15=89
variable message#16=90,message#17=91,message#18=92,message#19=93
variable message#20=94,message#21=95,message#22=96,message#23=97
variable message#24=98,message#25=99,message#26=100,message#27=101
variable message#28=102,message#29=103,message#30=104,message#31=105
variable message#32=106,message#33=107,message#34=108,message#35=109
variable message#36=110,message#37=111,message#38=112,message#39=113
variable message#40=114,message#41=115,message#42=116,message#43=117
variable message#44=118,message#45=119,message#46=120,message#47=121
variable message#48=122,message#49=123,message#50=124,message#51=125
variable message#52=126,message#53=127,message#54=160,message#55=161
variable message#56=162,message#57=163,message#58=164,message#59=165
variable message#60=166,message#61=167,message#62=168,message#63=169
variable message#64=170,message#65=171,message#66=172,message#67=173
variable message#68=174,message#69=175,message#70=176,message#71=177
variable message#72=178,message#73=179,message#74=180,message#75=181
variable message#76=182,message#77=183,message#78=184,message#79=185
_X = 186
lock = 187
variable lock#0=187,lock#1=188,lock#2=189,lock#3=190
unlock = 191
variable unlock#0=191,unlock#1=192,unlock#2=193,unlock#3=194
variable unlock#4=195,unlock#5=196
#define butt PORTC,1
#define relay PORTC,2
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
        btfsc 48,7
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
        movwf 42
        movlw 48
        goto DLUS@W
SB@STROUT
        movwf 45
SB@STROUTLP
        movf 36,W
        skpnz
        goto I@NT
        movf 45,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 45,F
        decf 36,F
        goto SB@STROUTLP
PRINT
        movwf 48
        bcf PORTB,2
        bcf PORTB,3
        bsf 3,5
        bcf PORTB,2
        bcf PORTB,3
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 48,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 42
        movlw 128
        call DLUS@W
        movlw 51
        movwf 47
        call PR@LP
        movlw 19
        movwf 42
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 47
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 48,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 47
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,3
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 42
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
        movf 47,W
        andlw 240
        iorwf PORTB,F
        nop
        bcf PORTB,2
        swapf 47,F
        nop
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 48,W
        goto I@NT
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 41
        movf 38,W
        movwf 42
        clrf 43
        clrf 44
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        addwf 41,F
        skpc
        addwf 42,F
        skpc
        goto I@NT
        incfsz 43,W
        goto $ - 16
        incfsz 44,W
        goto $ - 17
        movlw 250
        movwf 43
        clrf 44
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
        movwf 42
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 42
DLUS@W
        addlw 252
        movwf 41
        comf 42,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 41,F
        skpnc
        goto $ - 3
        addwf 41,F
        nop
        incfsz 42,F
        goto $ - 8
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
PUT@ARRAY
        movwf 47
PUT@ARRAYW
        movf 36,W
        movwf 48
        addwf 37,W
        call FIND@ADDRESS
        movf 47,W
        movwf 0
        goto I@NT
GET@ARRAY
        movwf 47
GET@ARRAYW
        movf 35,W
        movwf 48
        movf 47,W
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
F2_SOF equ $ ; SMS_READ.PRP
F2_EOF equ $ ; SMS_READ.PRP
F1_SOF equ $ ; SMS_READ.BAS
F1_000019 equ $ ; IN [SMS_READ.BAS] INPUT BUTT : OUTPUT RELAY
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,1
        bcf TRISC,2
F1_000029 equ $ ; IN [SMS_READ.BAS] STR LOCK = "LOCK"
        movlw 76
        movwf lock#0
        movlw 79
        movwf lock#1
        movlw 67
        movwf lock#2
        movlw 75
        movwf lock#3
F1_000030 equ $ ; IN [SMS_READ.BAS] STR UNLOCK = "UNLOCK"
        movlw 85
        movwf unlock#0
        movlw 78
        movwf unlock#1
        movlw 76
        movwf unlock#2
        movlw 79
        movwf unlock#3
        movlw 67
        movwf unlock#4
        movlw 75
        movwf unlock#5
F1_000032 equ $ ; IN [SMS_READ.BAS] CLS
        bcf STATUS,5
ram_bank = 0
        f@call LCD@CLS
F1_000033 equ $ ; IN [SMS_READ.BAS] CLEAR PORTC : HIGH RELAY
        clrf PORTC
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,2
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,2
GSM_init
F1_000036 equ $ ; IN [SMS_READ.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000037 equ $ ; IN [SMS_READ.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000038 equ $ ; IN [SMS_READ.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
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
F1_000039 equ $ ; IN [SMS_READ.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000040 equ $ ; IN [SMS_READ.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000041 equ $ ; IN [SMS_READ.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000042 equ $ ; IN [SMS_READ.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000043 equ $ ; IN [SMS_READ.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000044 equ $ ; IN [SMS_READ.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000045 equ $ ; IN [SMS_READ.BAS] HSEROUT["AT+CPBF=\"A\"", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 67
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 66
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000046 equ $ ; IN [SMS_READ.BAS] HSERIN[WAIT("+88"), STR NUMBER]
PB@LB3
        f@call HRSIN
        sublw 43
        set@page PB@LB3
        btfss STATUS,2
        goto PB@LB3
        f@call HRSIN
        sublw 56
        set@page PB@LB3
        btfss STATUS,2
        goto PB@LB3
        f@call HRSIN
        sublw 56
        set@page PB@LB3
        btfss STATUS,2
        goto PB@LB3
        clrf PBP#VAR0
PB@LB6
        f@call HRSIN
        movf PBP#VAR0,W
        addlw number
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 10
        set@page PB@LB6
        btfss STATUS,2
        goto PB@LB6
F1_000048 equ $ ; IN [SMS_READ.BAS] WHILE 1 = 1
BC@LL6
F1_000049 equ $ ; IN [SMS_READ.BAS] GOSUB SMS_READ
        f@call SMS_read
F1_000050 equ $ ; IN [SMS_READ.BAS] GOSUB CALL_RECEIVE
        f@call CALL_receive
F1_000051 equ $ ; IN [SMS_READ.BAS] IF BUTT = 0 THEN GOSUB CALL_CONTACT
        set@page BC@LL9
        btfsc PORTC,1
        goto BC@LL9
        f@call CALL_contact
BC@LL9
F1_000052 equ $ ; IN [SMS_READ.BAS] WEND
        F@JUMP BC@LL6
BC@LL7
CALL_contact
F1_000055 equ $ ; IN [SMS_READ.BAS] HSEROUT["ATD+88",STR NUMBER, 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 68
        f@call HRSOUT
        movlw 43
        f@call HRSOUT
        movlw 56
        f@call HRSOUT
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 10
        movwf GEN4
        clrf PP2H
        movlw 64
        f@call SB@STROUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000056 equ $ ; IN [SMS_READ.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000057 equ $ ; IN [SMS_READ.BAS] RETURN
        return
CALL_receive
F1_000060 equ $ ; IN [SMS_READ.BAS] HSERIN 50, OVER1,[WAIT("RING")]
        clrf GENH
        movlw 50
        movwf GEN
PB@LB13
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 82
        set@page PB@LB13
        btfss STATUS,2
        goto PB@LB13
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 73
        set@page PB@LB13
        btfss STATUS,2
        goto PB@LB13
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 78
        set@page PB@LB13
        btfss STATUS,2
        goto PB@LB13
        f@call HRSIN2
        set@page over1
        btfss STATUS,0
        goto over1
        sublw 71
        set@page PB@LB13
        btfss STATUS,2
        goto PB@LB13
F1_000061 equ $ ; IN [SMS_READ.BAS] HSEROUT["ATA", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000062 equ $ ; IN [SMS_READ.BAS] HSERIN[WAIT("OK")]
PB@LB14
        f@call HRSIN
        sublw 79
        set@page PB@LB14
        btfss STATUS,2
        goto PB@LB14
        f@call HRSIN
        sublw 75
        set@page PB@LB14
        btfss STATUS,2
        goto PB@LB14
over1
F1_000064 equ $ ; IN [SMS_READ.BAS] RETURN
        return
SMS_read
F1_000067 equ $ ; IN [SMS_READ.BAS] X = 0
        bsf STATUS,5
ram_bank = 1
        clrf _X
F1_000068 equ $ ; IN [SMS_READ.BAS] CLEAR NUM
        movlw 11
        bcf STATUS,5
ram_bank = 0
        movwf PP0
        movlw 53
        movwf FSR
PB@LB15
        clrf INDF
        incf FSR,F
        decf PP0,F
        set@page PB@LB15
        btfss STATUS,2
        goto PB@LB15
F1_000069 equ $ ; IN [SMS_READ.BAS] CLEAR MESSAGE
        movlw 80
        movwf PP0
        clrf PP0H
PB@LB16
        movf PP0H,W
        movwf GEN4H
        movlw 74
        movwf GEN4
        movlw 0
        f@call PUT@ARRAY
        incf PP0H,F
        decf PP0,F
        set@page PB@LB16
        btfss STATUS,2
        goto PB@LB16
F1_000070 equ $ ; IN [SMS_READ.BAS] HSERIN 500, OVER2,[WAIT("+88"), STR NUM, WAIT(13, 10)]
        movlw 1
        movwf GENH
        movlw 244
        movwf GEN
PB@LB17
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        sublw 43
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        sublw 56
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        sublw 56
        set@page PB@LB17
        btfss STATUS,2
        goto PB@LB17
        clrf PBP#VAR0
PB@LB20
        bsf STATUS,0
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        movf PBP#VAR0,W
        addlw num
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 11
        set@page PB@LB20
        btfss STATUS,2
        goto PB@LB20
PB@LB21
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        sublw 13
        set@page PB@LB21
        btfss STATUS,2
        goto PB@LB21
        f@call HRSIN2
        set@page over2
        btfss STATUS,0
        goto over2
        sublw 10
        set@page PB@LB21
        btfss STATUS,2
        goto PB@LB21
F1_000071 equ $ ; IN [SMS_READ.BAS] WHILE MESSAGE[X - 1] != 13
BC@LL21
        bsf STATUS,5
ram_bank = 1
        decf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf PP3
        movlw 74
        movwf GEN3H
        f@call GET@ARRAYW
        movwf PBP#VAR0
        movlw 13
        subwf PBP#VAR0,W
        set@page BC@LL22
        btfsc STATUS,2
        goto BC@LL22
F1_000072 equ $ ; IN [SMS_READ.BAS] HSERIN[MESSAGE[X]]
        f@call HRSIN
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 74
        movwf GEN4
        movf RCREG,W
        f@call PUT@ARRAY
F1_000073 equ $ ; IN [SMS_READ.BAS] INC X
        bsf STATUS,5
ram_bank = 1
        incf _X,F
F1_000074 equ $ ; IN [SMS_READ.BAS] WEND
        bcf STATUS,5
ram_bank = 0
        F@JUMP BC@LL21
BC@LL22
F1_000075 equ $ ; IN [SMS_READ.BAS] MESSAGE[X - 1] = 0
        bsf STATUS,5
ram_bank = 1
        decf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 74
        movwf GEN4
        movlw 0
        f@call PUT@ARRAY
F1_000076 equ $ ; IN [SMS_READ.BAS] GOSUB SMS_ACTION
        f@call SMS_action
over2
F1_000078 equ $ ; IN [SMS_READ.BAS] RETURN
        return
SMS_action
F1_000081 equ $ ; IN [SMS_READ.BAS] FOR X = 0 TO 3
        bsf STATUS,5
ram_bank = 1
        clrf _X
FR@LB24
        bcf STATUS,5
ram_bank = 0
        movlw 4
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB25
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB25
F1_000082 equ $ ; IN [SMS_READ.BAS] IF MESSAGE[X] != LOCK[X] THEN BREAK
        movlw 74
        movwf GEN3H
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        bcf STATUS,5
ram_bank = 0
        f@call GET@ARRAY
        movwf PBP#VAR0
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw lock
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        set@page BC@LL27
        btfsc STATUS,2
        goto BC@LL27
        F@JUMP NX@LB25
BC@LL27
F1_000083 equ $ ; IN [SMS_READ.BAS] LOW RELAY
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,2
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,2
CT@LB26
F1_000084 equ $ ; IN [SMS_READ.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB24
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB24
NX@LB25
F1_000085 equ $ ; IN [SMS_READ.BAS] FOR X = 0 TO 5
        bsf STATUS,5
ram_bank = 1
        clrf _X
FR@LB29
        bcf STATUS,5
ram_bank = 0
        movlw 6
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB30
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB30
F1_000086 equ $ ; IN [SMS_READ.BAS] IF MESSAGE[X] != UNLOCK[X] THEN BREAK
        movlw 74
        movwf GEN3H
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        bcf STATUS,5
ram_bank = 0
        f@call GET@ARRAY
        movwf PBP#VAR0
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw unlock
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        movf PBP#VAR0,W
        subwf PBP#VAR1,W
        set@page BC@LL32
        btfsc STATUS,2
        goto BC@LL32
        F@JUMP NX@LB30
BC@LL32
F1_000087 equ $ ; IN [SMS_READ.BAS] HIGH RELAY
        bsf STATUS,5
ram_bank = 1
        bcf TRISC,2
        bcf STATUS,5
ram_bank = 0
        bsf PORTC,2
CT@LB31
F1_000088 equ $ ; IN [SMS_READ.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB29
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB29
NX@LB30
F1_000089 equ $ ; IN [SMS_READ.BAS] RETURN
        return
F1_EOF equ $ ; SMS_READ.BAS
PB@LB34
        F@JUMP PB@LB34
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
