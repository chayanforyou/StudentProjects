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
#define XTAL 4
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
#define _SYSTEM_VARIABLE_COUNT 15
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
GEN3H = 32
GEN4 = 33
GEN4H = 34
PBL#VAR0 = 35
PBL#VAR0H = 36
PBP#VAR0 = 37
PBP#VAR1 = 38
PBP#VAR1H = 39
PP0 = 40
PP0H = 41
PP3 = 42
PP3H = 43
PP6 = 44
PP6H = 45
PP7 = 46
ll = 47
indx = 48
adrss = 49
adrssH = 50
count1 = 51
count1H = 52
count2 = 53
count2H = 54
_I = 55
ref = 56
msg = 57
variable msg#0=57,msg#1=58,msg#2=59,msg#3=60
variable msg#4=61,msg#5=62,msg#6=63,msg#7=64
variable msg#8=65,msg#9=66,msg#10=67,msg#11=68
variable msg#12=69,msg#13=70,msg#14=71,msg#15=72
variable msg#16=73,msg#17=74,msg#18=75,msg#19=76
variable msg#20=77,msg#21=78,msg#22=79,msg#23=80
variable msg#24=81,msg#25=82,msg#26=83,msg#27=84
variable msg#28=85,msg#29=86,msg#30=87,msg#31=88
variable msg#32=89,msg#33=90,msg#34=91,msg#35=92
variable msg#36=93,msg#37=94,msg#38=95,msg#39=96
variable msg#40=97
movee = 98
variable movee#0=98,movee#1=99,movee#2=100,movee#3=101
variable movee#4=102,movee#5=103,movee#6=104,movee#7=105
variable movee#8=106,movee#9=107,movee#10=108,movee#11=109
variable movee#12=110,movee#13=111,movee#14=112,movee#15=113
variable movee#16=114,movee#17=115,movee#18=116,movee#19=117
variable movee#20=118,movee#21=119,movee#22=120,movee#23=121
variable movee#24=122,movee#25=123,movee#26=124,movee#27=125
variable movee#28=126,movee#29=127,movee#30=160,movee#31=161
variable movee#32=162,movee#33=163,movee#34=164,movee#35=165
variable movee#36=166,movee#37=167,movee#38=168,movee#39=169
variable movee#40=170
#define DS PORTC,0
#define SH PORTC,1
#define ST PORTC,2
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 32
proton#code#start
        org 0
        goto proton#main#start
FIND@ADDRESS
        bcf 3,7
        movwf 44
        clrf 45
        rlf 45,F
        movlw 0
        subwf 45,W
        movlw 128
        skpnz
        subwf 44,W
        skpc
        goto FA@EXT
        btfsc 43,7
        goto FA@EXT
        movlw 32
        addwf 44,F
FA@EXT
        movf 44,W
        movwf 4
        return
C@READ
        bsf 3,5
        bsf 3,6
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
DL@US
        clrf 41
DLUS@W
        addlw 232
        movwf 40
        comf 41,F
        movlw 252
        skpc
        goto $ + 4
        addwf 40,F
        skpnc
        goto $ - 2
        addwf 40,F
        nop
        incfsz 41,F
        goto $ - 6
        btfsc 40,0
        goto $ + 1
        btfss 40,1
        goto $ + 3
        nop
        goto $ + 1
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
PUT@ARRAY
        movwf 42
PUT@ARRAYW
        movf 33,W
        movwf 43
        addwf 34,W
        call FIND@ADDRESS
        movf 42,W
        movwf 0
        goto I@NT
GET@ARRAY
        movwf 42
GET@ARRAYW
        movf 32,W
        movwf 43
        movf 42,W
        addwf 32,W
        call FIND@ADDRESS
        movf 0,W
        goto I@NT
proton#main#start
        clrf 3
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000008 equ $ ; IN [ABRAR] TRISC = %10000000 : PORTC = 0
        movlw 128
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000009 equ $ ; IN [ABRAR] TRISB = 0 : PORTB = 0
        bsf STATUS,5
ram_bank = 1
        clrf TRISB
        bcf STATUS,5
ram_bank = 0
        clrf PORTB
F1_000026 equ $ ; IN [ABRAR] STR MSG = "HELLO WORLD", 0
        movlw 72
        movwf msg#0
        movlw 101
        movwf msg#1
        movlw 108
        movwf msg#2
        movwf msg#3
        movlw 111
        movwf msg#4
        movlw 32
        movwf msg#5
        movlw 87
        movwf msg#6
        movlw 111
        movwf msg#7
        movlw 114
        movwf msg#8
        movlw 108
        movwf msg#9
        movlw 100
        movwf msg#10
        clrf msg#11
show_matrix
F1_000030 equ $ ; IN [ABRAR] FOR LL = 0 TO 10
        clrf ll
FR@LB2
        movlw 11
        subwf ll,W
        set@page NX@LB3
        btfsc STATUS,0
        goto NX@LB3
F1_000031 equ $ ; IN [ABRAR] ADRSS = MSG[LL] - 32
        movf ll,W
        addlw msg
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        movlw 224
        addwf PBP#VAR0,W
        movwf adrss
        movlw 255
        btfsc STATUS,0
        addlw 1
        movwf adrssH
F1_000032 equ $ ; IN [ABRAR] ADRSS = ADRSS * 8
        movlw 3
        movwf PP0
M@LB1
        bcf STATUS,0
        rlf adrss,F
        rlf adrssH,F
        decf PP0,F
        set@page M@LB1
        btfss STATUS,2
        goto M@LB1
F1_000033 equ $ ; IN [ABRAR] FOR COUNT1 = ADRSS TO ADRSS+8
        movlw 8
        addwf adrss,W
        movwf PBL#VAR0
        movf adrssH,W
        btfsc STATUS,0
        addlw 1
        movwf PBL#VAR0H
        movf adrssH,W
        movwf count1H
        movf adrss,W
        movwf count1
FR@LB5
        movf count1H,W
        subwf PBL#VAR0H,W
        set@page NX@LB6
        btfss STATUS,0
        goto NX@LB6
        set@page CP@LB2
        btfss STATUS,2
        goto CP@LB2
        movf count1,W
        subwf PBL#VAR0,W
        set@page NX@LB6
        btfss STATUS,0
        goto NX@LB6
CP@LB2
F1_000034 equ $ ; IN [ABRAR] FOR COUNT2 = 0 TO 40
        clrf count2H
        clrf count2
FR@LB8
        movf count2H,F
        set@page NX@LB9
        btfss STATUS,2
        goto NX@LB9
        movlw 41
        subwf count2,W
        set@page NX@LB9
        btfsc STATUS,0
        goto NX@LB9
F1_000035 equ $ ; IN [ABRAR] MOVEE[COUNT2] = MOVEE[COUNT2 + 1]
        incf count2,W
        movwf PP3
        movlw 98
        movwf GEN3H
        f@call GET@ARRAYW
        movwf PBP#VAR0
        movf count2,W
        movwf GEN4H
        movlw 98
        movwf GEN4
        movf PBP#VAR0,W
        f@call PUT@ARRAY
CT@LB10
F1_000036 equ $ ; IN [ABRAR] NEXT
        incf count2,F
        btfsc STATUS,2
        incf count2H,F
        set@page FR@LB8
        btfss STATUS,2
        goto FR@LB8
NX@LB9
F1_000037 equ $ ; IN [ABRAR] MOVEE[40] = CREAD FONT_8X + COUNT2
        movlw ((font_8x >> 8) & 255)
        movwf PBP#VAR1H
        movlw (font_8x & 255)
        movwf PBP#VAR1
        movf PBP#VAR1,W
        addwf count2,W
        bsf STATUS,6
ram_bank = 2
        movwf EEADR
        bcf STATUS,6
ram_bank = 0
        movf PBP#VAR1H,W
        btfsc STATUS,0
        addlw 1
        addwf count2H,W
        bsf STATUS,6
ram_bank = 2
        movwf EEADRH
        bcf STATUS,6
ram_bank = 0
        f@call C@READ
        movwf PBP#VAR0
        movf PBP#VAR0,W
        bsf STATUS,5
ram_bank = 1
        movwf movee#40
F1_000038 equ $ ; IN [ABRAR] FOR REF = 0 TO 6
        bcf STATUS,5
ram_bank = 0
        clrf ref
FR@LB11
        movlw 7
        subwf ref,W
        set@page NX@LB12
        btfsc STATUS,0
        goto NX@LB12
F1_000039 equ $ ; IN [ABRAR] DS = 1 : SH = 0 : SH = 1 : ST = 0 : ST = 1
        bsf PORTC,0
        bcf PORTC,1
        bsf PORTC,1
        bcf PORTC,2
        bsf PORTC,2
F1_000040 equ $ ; IN [ABRAR] FOR I = 0 TO 40
        clrf _I
FR@LB14
        movlw 41
        subwf _I,W
        set@page NX@LB15
        btfsc STATUS,0
        goto NX@LB15
F1_000041 equ $ ; IN [ABRAR] PORTB = ~MOVEE[I]
        movlw 98
        movwf GEN3H
        movf _I,W
        f@call GET@ARRAY
        movwf PORTB
        comf PORTB,F
F1_000042 equ $ ; IN [ABRAR] DELAYUS 500
        movlw 1
        movwf PP0H
        movlw 244
        f@call DLUS@W
F1_000043 equ $ ; IN [ABRAR] DS = 0 : SH = 0 : SH = 1 : ST = 0 : ST = 1
        bcf PORTC,0
        bcf PORTC,1
        bsf PORTC,1
        bcf PORTC,2
        bsf PORTC,2
CT@LB16
F1_000044 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf _I,F
        set@page FR@LB14
        btfss STATUS,0
        goto FR@LB14
NX@LB15
CT@LB13
F1_000045 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf ref,F
        set@page FR@LB11
        btfss STATUS,0
        goto FR@LB11
NX@LB12
CT@LB7
F1_000046 equ $ ; IN [ABRAR] NEXT
        incf count1,F
        btfsc STATUS,2
        incf count1H,F
        set@page FR@LB5
        btfss STATUS,2
        goto FR@LB5
NX@LB6
CT@LB4
F1_000047 equ $ ; IN [ABRAR] NEXT
        movlw 1
        addwf ll,F
        set@page FR@LB2
        btfss STATUS,0
        goto FR@LB2
NX@LB3
F1_000048 equ $ ; IN [ABRAR] GOTO SHOW_MATRIX
        F@JUMP show_matrix
font_8x
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 6
        DATA 95
        DATA 95
        DATA 6
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 7
        DATA 7
        DATA 0
        DATA 7
        DATA 7
        DATA 0
        DATA 0
        DATA 20
        DATA 127
        DATA 127
        DATA 20
        DATA 127
        DATA 127
        DATA 20
        DATA 0
        DATA 36
        DATA 46
        DATA 107
        DATA 107
        DATA 58
        DATA 18
        DATA 0
        DATA 0
        DATA 70
        DATA 102
        DATA 48
        DATA 24
        DATA 12
        DATA 102
        DATA 98
        DATA 0
        DATA 48
        DATA 122
        DATA 79
        DATA 93
        DATA 55
        DATA 122
        DATA 72
        DATA 0
        DATA 4
        DATA 7
        DATA 3
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 28
        DATA 62
        DATA 99
        DATA 65
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 65
        DATA 99
        DATA 62
        DATA 28
        DATA 0
        DATA 0
        DATA 0
        DATA 8
        DATA 42
        DATA 62
        DATA 28
        DATA 28
        DATA 62
        DATA 42
        DATA 8
        DATA 8
        DATA 8
        DATA 62
        DATA 62
        DATA 8
        DATA 8
        DATA 0
        DATA 0
        DATA 0
        DATA 128
        DATA 224
        DATA 96
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 8
        DATA 8
        DATA 8
        DATA 8
        DATA 8
        DATA 8
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 96
        DATA 96
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 96
        DATA 48
        DATA 24
        DATA 12
        DATA 6
        DATA 3
        DATA 1
        DATA 0
        DATA 62
        DATA 127
        DATA 113
        DATA 89
        DATA 77
        DATA 127
        DATA 62
        DATA 0
        DATA 64
        DATA 66
        DATA 127
        DATA 127
        DATA 64
        DATA 64
        DATA 0
        DATA 0
        DATA 98
        DATA 115
        DATA 89
        DATA 73
        DATA 111
        DATA 102
        DATA 0
        DATA 0
        DATA 34
        DATA 99
        DATA 73
        DATA 73
        DATA 127
        DATA 54
        DATA 0
        DATA 0
        DATA 24
        DATA 28
        DATA 22
        DATA 83
        DATA 127
        DATA 127
        DATA 80
        DATA 0
        DATA 39
        DATA 103
        DATA 69
        DATA 69
        DATA 125
        DATA 57
        DATA 0
        DATA 0
        DATA 60
        DATA 126
        DATA 75
        DATA 73
        DATA 121
        DATA 48
        DATA 0
        DATA 0
        DATA 3
        DATA 3
        DATA 113
        DATA 121
        DATA 15
        DATA 7
        DATA 0
        DATA 0
        DATA 54
        DATA 127
        DATA 73
        DATA 73
        DATA 127
        DATA 54
        DATA 0
        DATA 0
        DATA 6
        DATA 79
        DATA 73
        DATA 105
        DATA 63
        DATA 30
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 102
        DATA 102
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 128
        DATA 230
        DATA 102
        DATA 0
        DATA 0
        DATA 0
        DATA 0
        DATA 8
        DATA 28
        DATA 54
        DATA 99
        DATA 65
        DATA 0
        DATA 0
        DATA 0
        DATA 36
        DATA 36
        DATA 36
        DATA 36
        DATA 36
        DATA 36
        DATA 0
        DATA 0
        DATA 0
        DATA 65
        DATA 99
        DATA 54
        DATA 28
        DATA 8
        DATA 0
        DATA 0
        DATA 2
        DATA 3
        DATA 81
        DATA 89
        DATA 15
        DATA 6
        DATA 0
        DATA 0
        DATA 62
        DATA 127
        DATA 65
        DATA 93
        DATA 93
        DATA 31
        DATA 30
        DATA 0
        DATA 124
        DATA 126
        DATA 19
        DATA 19
        DATA 126
        DATA 124
        DATA 0
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 73
        DATA 73
        DATA 127
        DATA 54
        DATA 0
        DATA 28
        DATA 62
        DATA 99
        DATA 65
        DATA 65
        DATA 99
        DATA 34
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 65
        DATA 99
        DATA 62
        DATA 28
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 73
        DATA 93
        DATA 65
        DATA 99
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 73
        DATA 29
        DATA 1
        DATA 3
        DATA 0
        DATA 28
        DATA 62
        DATA 99
        DATA 65
        DATA 81
        DATA 115
        DATA 114
        DATA 0
        DATA 127
        DATA 127
        DATA 8
        DATA 8
        DATA 127
        DATA 127
        DATA 0
        DATA 0
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 65
        DATA 0
        DATA 0
        DATA 0
        DATA 48
        DATA 112
        DATA 64
        DATA 65
        DATA 127
        DATA 63
        DATA 1
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 8
        DATA 28
        DATA 119
        DATA 99
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 65
        DATA 64
        DATA 96
        DATA 112
        DATA 0
        DATA 127
        DATA 127
        DATA 14
        DATA 28
        DATA 14
        DATA 127
        DATA 127
        DATA 0
        DATA 127
        DATA 127
        DATA 6
        DATA 12
        DATA 24
        DATA 127
        DATA 127
        DATA 0
        DATA 28
        DATA 62
        DATA 99
        DATA 65
        DATA 99
        DATA 62
        DATA 28
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 73
        DATA 9
        DATA 15
        DATA 6
        DATA 0
        DATA 30
        DATA 63
        DATA 33
        DATA 113
        DATA 127
        DATA 94
        DATA 0
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 9
        DATA 25
        DATA 127
        DATA 102
        DATA 0
        DATA 38
        DATA 111
        DATA 77
        DATA 89
        DATA 115
        DATA 50
        DATA 0
        DATA 0
        DATA 3
        DATA 65
        DATA 127
        DATA 127
        DATA 65
        DATA 3
        DATA 0
        DATA 0
        DATA 127
        DATA 127
        DATA 64
        DATA 64
        DATA 127
        DATA 127
        DATA 0
        DATA 0
        DATA 31
        DATA 63
        DATA 96
        DATA 96
        DATA 63
        DATA 31
        DATA 0
        DATA 0
        DATA 127
        DATA 127
        DATA 48
        DATA 24
        DATA 48
        DATA 127
        DATA 127
        DATA 0
        DATA 67
        DATA 103
        DATA 60
        DATA 24
        DATA 60
        DATA 103
        DATA 67
        DATA 0
        DATA 7
        DATA 79
        DATA 120
        DATA 120
        DATA 79
        DATA 7
        DATA 0
        DATA 0
        DATA 71
        DATA 99
        DATA 113
        DATA 89
        DATA 77
        DATA 103
        DATA 115
        DATA 0
        DATA 0
        DATA 127
        DATA 127
        DATA 65
        DATA 65
        DATA 0
        DATA 0
        DATA 0
        DATA 1
        DATA 3
        DATA 6
        DATA 12
        DATA 24
        DATA 48
        DATA 96
        DATA 0
        DATA 0
        DATA 65
        DATA 65
        DATA 127
        DATA 127
        DATA 0
        DATA 0
        DATA 0
        DATA 8
        DATA 12
        DATA 6
        DATA 3
        DATA 6
        DATA 12
        DATA 8
        DATA 0
        DATA 128
        DATA 128
        DATA 128
        DATA 128
        DATA 128
        DATA 128
        DATA 128
        DATA 128
        DATA 0
        DATA 0
        DATA 3
        DATA 7
        DATA 4
        DATA 0
        DATA 0
        DATA 0
        DATA 32
        DATA 116
        DATA 84
        DATA 84
        DATA 60
        DATA 120
        DATA 64
        DATA 0
        DATA 65
        DATA 127
        DATA 63
        DATA 72
        DATA 72
        DATA 120
        DATA 48
        DATA 0
        DATA 56
        DATA 124
        DATA 68
        DATA 68
        DATA 108
        DATA 40
        DATA 0
        DATA 0
        DATA 48
        DATA 120
        DATA 72
        DATA 73
        DATA 63
        DATA 127
        DATA 64
        DATA 0
        DATA 56
        DATA 124
        DATA 84
        DATA 84
        DATA 92
        DATA 24
        DATA 0
        DATA 0
        DATA 72
        DATA 126
        DATA 127
        DATA 73
        DATA 3
        DATA 2
        DATA 0
        DATA 0
        DATA 152
        DATA 188
        DATA 164
        DATA 164
        DATA 248
        DATA 124
        DATA 4
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 8
        DATA 4
        DATA 124
        DATA 120
        DATA 0
        DATA 0
        DATA 68
        DATA 125
        DATA 125
        DATA 64
        DATA 0
        DATA 0
        DATA 0
        DATA 96
        DATA 224
        DATA 128
        DATA 128
        DATA 253
        DATA 125
        DATA 0
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 16
        DATA 56
        DATA 108
        DATA 68
        DATA 0
        DATA 0
        DATA 65
        DATA 127
        DATA 127
        DATA 64
        DATA 0
        DATA 0
        DATA 0
        DATA 124
        DATA 124
        DATA 24
        DATA 56
        DATA 28
        DATA 124
        DATA 120
        DATA 0
        DATA 124
        DATA 124
        DATA 4
        DATA 4
        DATA 124
        DATA 120
        DATA 0
        DATA 0
        DATA 56
        DATA 124
        DATA 68
        DATA 68
        DATA 124
        DATA 56
        DATA 0
        DATA 0
        DATA 132
        DATA 252
        DATA 248
        DATA 164
        DATA 36
        DATA 60
        DATA 24
        DATA 0
        DATA 24
        DATA 60
        DATA 36
        DATA 164
        DATA 248
        DATA 252
        DATA 132
        DATA 0
        DATA 68
        DATA 124
        DATA 120
        DATA 76
        DATA 4
        DATA 28
        DATA 24
        DATA 0
        DATA 72
        DATA 92
        DATA 84
        DATA 84
        DATA 116
        DATA 36
        DATA 0
        DATA 0
        DATA 0
        DATA 4
        DATA 62
        DATA 127
        DATA 68
        DATA 36
        DATA 0
        DATA 0
        DATA 60
        DATA 124
        DATA 64
        DATA 64
        DATA 60
        DATA 124
        DATA 64
        DATA 0
        DATA 28
        DATA 60
        DATA 96
        DATA 96
        DATA 60
        DATA 28
        DATA 0
        DATA 0
        DATA 60
        DATA 124
        DATA 112
        DATA 56
        DATA 112
        DATA 124
        DATA 60
        DATA 0
        DATA 68
        DATA 108
        DATA 56
        DATA 16
        DATA 56
        DATA 108
        DATA 68
        DATA 0
        DATA 156
        DATA 188
        DATA 160
        DATA 160
        DATA 252
        DATA 124
        DATA 0
        DATA 0
        DATA 76
        DATA 100
        DATA 116
        DATA 92
        DATA 76
        DATA 100
        DATA 0
        DATA 0
F1_EOF equ $ ; ABRAR
PB@LB17
        F@JUMP PB@LB17
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
