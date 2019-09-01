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
#define _SYSTEM_VARIABLE_COUNT 23
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
CSTR#CT = 34
GEN = 35
GEN3H = 36
GEN4 = 37
GEN4H = 38
GENH = 39
PBP#VAR0 = 40
PBP#VAR1 = 41
PBP#VAR2 = 42
PP0 = 43
PP0H = 44
PP1 = 45
PP1H = 46
PP2 = 47
PP2H = 48
PP3 = 49
PP3H = 50
PP4 = 51
PP5 = 52
PP6 = 53
PP6H = 54
location = 55
variable location#0=55,location#1=56,location#2=57,location#3=58
variable location#4=59,location#5=60,location#6=61,location#7=62
variable location#8=63,location#9=64,location#10=65,location#11=66
variable location#12=67,location#13=68,location#14=69,location#15=70
variable location#16=71,location#17=72,location#18=73,location#19=74
variable location#20=75,location#21=76,location#22=77,location#23=78
variable location#24=79,location#25=80,location#26=81,location#27=82
variable location#28=83,location#29=84,location#30=85,location#31=86
variable location#32=87,location#33=88,location#34=89,location#35=90
variable location#36=91,location#37=92,location#38=93,location#39=94
temp = 95
variable temp#0=95,temp#1=96,temp#2=97,temp#3=98
variable temp#4=99,temp#5=100,temp#6=101,temp#7=102
variable temp#8=103,temp#9=104,temp#10=105,temp#11=106
latitude = 107
variable latitude#0=107,latitude#1=108,latitude#2=109,latitude#3=110
variable latitude#4=111,latitude#5=112,latitude#6=113,latitude#7=114
variable latitude#8=115,latitude#9=116,latitude#10=117,latitude#11=118
longitude = 119
variable longitude#0=119,longitude#1=120,longitude#2=121,longitude#3=122
variable longitude#4=123,longitude#5=124,longitude#6=125,longitude#7=126
variable longitude#8=127,longitude#9=160,longitude#10=161,longitude#11=162
number = 163
variable number#0=163,number#1=164,number#2=165,number#3=166
variable number#4=167,number#5=168,number#6=169,number#7=170
variable number#8=171,number#9=172,number#10=173
_X = 174
time = 175
timeH = 176
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define __XTAL 20
#define __HSERIAL_BAUD 49664
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
HSERIAL_SPBRG = 10
HSERIAL_TXSTA = 36
HSERIAL_RCSTA = 144
HSERIAL_BAUD = 115200
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
        btfsc 50,7
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
        movwf 44
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
SB@STROUT
        movwf 47
SB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 47,W
        movwf 4
        movf 0,W
        skpnz
        goto I@NT
        call CH@SND
        incf 47,F
        decf 37,F
        goto SB@STROUTLP
MB@STROUT
        movwf 47
        clrf 38
MB@STROUTLP
        movf 37,W
        skpnz
        goto I@NT
        movf 47,W
        movwf 36
        movf 38,W
        call GET@ARRAY
        skpnz
        goto I@NT
        call CH@SND
        incf 38,F
        decf 37,F
        goto MB@STROUTLP
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
        movwf 44
        movlw 128
        call DLUS@W
        movlw 51
        movwf 49
        call PR@LP
        movlw 19
        movwf 44
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
        movwf 44
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
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 35,W
        movwf 43
        movf 39,W
        movwf 44
        clrf 45
        clrf 46
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 45,F
        skpc
        addwf 46,F
        skpc
        addwf 43,F
        skpc
        addwf 44,F
        skpc
        goto I@NT
        incfsz 45,W
        goto $ - 16
        incfsz 46,W
        goto $ - 17
        movlw 250
        movwf 45
        clrf 46
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
C@STROUT
        movwf 37
C@STROUTW
        clrf 34
C@STROUTLP
        movf 37,W
        bsf 3,6
        movwf 269
        bcf 3,6
        movf 38,W
        bsf 3,6
        movwf 271
        call C@READ
        skpnz
        goto I@NT
        call CH@SND
        incf 37,F
        skpnz
        incf 38,F
        incfsz 34,F
        goto C@STROUTLP
        goto I@NT
C@READ
        bsf 3,5
        bsf 3,6
        bsf 396,PP_RD
        nop
        nop
        bcf 3,5
        movf 268,W
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 46
DLY@W
        movwf 45
DLY@P
        movlw 255
        addwf 45,F
        skpc
        addwf 46,F
        skpc
        goto I@NT
        movlw 3
        movwf 44
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 44
DLUS@W
        addlw 252
        movwf 43
        comf 44,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 43,F
        skpnc
        goto $ - 3
        addwf 43,F
        nop
        incfsz 44,F
        goto $ - 8
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
PUT@ARRAY
        movwf 49
PUT@ARRAYW
        movf 37,W
        movwf 50
        addwf 38,W
        call FIND@ADDRESS
        movf 49,W
        movwf 0
        goto I@NT
GET@ARRAY
        movwf 49
GET@ARRAYW
        movf 36,W
        movwf 50
        movf 49,W
        addwf 36,W
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
F2_SOF equ $ ; WILD ANIMAL.PRP
F2_EOF equ $ ; WILD ANIMAL.PRP
F1_SOF equ $ ; WILD ANIMAL.BAS
F1_000020 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000021 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000030 equ $ ; IN [WILD ANIMAL.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        f@call CL@R
        movlw 160
        movwf FSR
        movlw 96
        f@call CL@R
GSM_init
F1_000033 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 1,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB1)
        movwf GEN4H
        movlw low (STR@LB1)
        f@call C@STROUT
F1_000034 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        f@call DLY@W
F1_000035 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000036 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 1,1, "CONTACTING GSM.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB2)
        movwf GEN4H
        movlw low (STR@LB2)
        f@call C@STROUT
F1_000037 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT", 13, 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000038 equ $ ; IN [WILD ANIMAL.BAS] HSERIN 1000, GSM_INIT,[WAIT("OK")]
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
F1_000039 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["ATE0", 13, 10]
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
F1_000040 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000041 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000042 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000043 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CNMI=1,2,0,0,0", 13, 10]
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
F1_000044 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000045 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 2,1, "GSM OK.."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB3)
        movwf GEN4H
        movlw low (STR@LB3)
        f@call C@STROUT
F1_000046 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000047 equ $ ; IN [WILD ANIMAL.BAS] GOSUB CHECK_LOCATION
        f@call Check_location
main
F1_000050 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 1,1, "LA: ", STR LATITUDE, " "
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw 76
        f@call PRINT
        movlw 97
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 12
        movwf GEN4
        clrf PP2H
        movlw 107
        f@call SB@STROUT
        movlw 32
        f@call PRINT
F1_000051 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 2,1, "LO: ", STR LONGITUDE, " "
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw 76
        f@call PRINT
        movlw 111
        f@call PRINT
        movlw 58
        f@call PRINT
        movlw 32
        f@call PRINT
        movlw 12
        movwf GEN4
        movlw 119
        f@call MB@STROUT
        movlw 32
        f@call PRINT
F1_000052 equ $ ; IN [WILD ANIMAL.BAS] GOSUB RECEIVE_SMS
        f@call Receive_SMS
F1_000053 equ $ ; IN [WILD ANIMAL.BAS] INC TIME
        bsf STATUS,5
ram_bank = 1
        incf time,F
        btfsc STATUS,2
        incf timeH,F
F1_000054 equ $ ; IN [WILD ANIMAL.BAS] IF TIME = 300 THEN TIME = 0 : GOSUB CHECK_LOCATION
        movf timeH,W
        xorlw 1
        movlw 44
        btfsc STATUS,2
        xorwf time,W
        set@page BC@LL7
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,2
        goto BC@LL7
        bsf STATUS,5
ram_bank = 1
        clrf timeH
        clrf time
        bcf STATUS,5
ram_bank = 0
        f@call Check_location
BC@LL7
F1_000055 equ $ ; IN [WILD ANIMAL.BAS] GOTO MAIN
        F@JUMP main
Check_location
F1_000058 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000059 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 1,1, "GPS POWER UP.."
        movlw 128
        movwf BPFH
        f@call LCD@CRS
        movlw high (STR@LB4)
        movwf GEN4H
        movlw low (STR@LB4)
        f@call C@STROUT
F1_000060 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSPWR=1", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 87
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000061 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
recheck
F1_000063 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000065 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 2,1, "FINDING LOCATION"
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB5)
        movwf GEN4H
        movlw low (STR@LB5)
        f@call C@STROUT
F1_000066 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSSTATUS?", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 85
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 63
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000067 equ $ ; IN [WILD ANIMAL.BAS] HSERIN 1000, RECHECK,[WAIT("D FIX")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB9
        f@call HRSIN2
        set@page recheck
        btfss STATUS,0
        goto recheck
        sublw 68
        set@page PB@LB9
        btfss STATUS,2
        goto PB@LB9
        f@call HRSIN2
        set@page recheck
        btfss STATUS,0
        goto recheck
        sublw 32
        set@page PB@LB9
        btfss STATUS,2
        goto PB@LB9
        f@call HRSIN2
        set@page recheck
        btfss STATUS,0
        goto recheck
        sublw 70
        set@page PB@LB9
        btfss STATUS,2
        goto PB@LB9
        f@call HRSIN2
        set@page recheck
        btfss STATUS,0
        goto recheck
        sublw 105
        set@page PB@LB9
        btfss STATUS,2
        goto PB@LB9
        f@call HRSIN2
        set@page recheck
        btfss STATUS,0
        goto recheck
        sublw 120
        set@page PB@LB9
        btfss STATUS,2
        goto PB@LB9
F1_000068 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000069 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 2,1, "LOCATION FIXED."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB6)
        movwf GEN4H
        movlw low (STR@LB6)
        f@call C@STROUT
F1_000070 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000071 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000072 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSINF=0", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 73
        f@call HRSOUT
        movlw 78
        f@call HRSOUT
        movlw 70
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000073 equ $ ; IN [WILD ANIMAL.BAS] HSERIN 100, ERROR1,[STR LOCATION]
        clrf GENH
        movlw 100
        movwf GEN
        clrf PBP#VAR0
PB@LB12
        bsf STATUS,0
        f@call HRSIN2
        set@page error1
        btfss STATUS,0
        goto error1
        movf PBP#VAR0,W
        addlw location
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR0,F
        movf PBP#VAR0,W
        sublw 40
        set@page PB@LB12
        btfss STATUS,2
        goto PB@LB12
F1_000075 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSRST=0", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000076 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000078 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSRST=1", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 49
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000079 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000081 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CGPSPWR=0", 13, 10]
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
        movlw 80
        f@call HRSOUT
        movlw 83
        f@call HRSOUT
        movlw 80
        f@call HRSOUT
        movlw 87
        f@call HRSOUT
        movlw 82
        f@call HRSOUT
        movlw 61
        f@call HRSOUT
        movlw 48
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000082 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000084 equ $ ; IN [WILD ANIMAL.BAS] FOR X = 15 TO 25
        movlw 15
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB13
        bcf STATUS,5
ram_bank = 0
        movlw 26
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB14
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB14
F1_000085 equ $ ; IN [WILD ANIMAL.BAS] TEMP[X - 15] = LOCATION[X]
        movlw 15
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR0
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw location
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        movf PBP#VAR0,W
        addlw temp
        movwf FSR
        movf PBP#VAR1,W
        movwf INDF
CT@LB15
F1_000086 equ $ ; IN [WILD ANIMAL.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB13
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB13
NX@LB14
F1_000087 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[0] = TEMP[0]
        movf temp#0,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        movwf latitude#0
F1_000088 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[1] = TEMP[1]
        movf temp#1,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        movwf latitude#1
F1_000089 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[2] = "."
        movlw 46
        movwf latitude#2
F1_000090 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[3] = TEMP[2]
        movf temp#2,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        movwf latitude#3
F1_000091 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[4] = TEMP[3]
        movf temp#3,W
        movwf PBP#VAR1
        movf PBP#VAR1,W
        movwf latitude#4
F1_000092 equ $ ; IN [WILD ANIMAL.BAS] FOR X = 5 TO 10
        movlw 5
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB16
        bcf STATUS,5
ram_bank = 0
        movlw 11
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB17
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB17
F1_000093 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[X] = TEMP[X]
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw temp
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw latitude
        movwf FSR
        bcf STATUS,5
ram_bank = 0
        movf PBP#VAR1,W
        movwf INDF
CT@LB18
F1_000094 equ $ ; IN [WILD ANIMAL.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB16
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB16
NX@LB17
F1_000095 equ $ ; IN [WILD ANIMAL.BAS] LATITUDE[11] = 0
        clrf latitude#11
F1_000097 equ $ ; IN [WILD ANIMAL.BAS] FOR X = 27 TO 37
        movlw 27
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB19
        bcf STATUS,5
ram_bank = 0
        movlw 38
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB20
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB20
F1_000098 equ $ ; IN [WILD ANIMAL.BAS] TEMP[X - 27] = LOCATION[X]
        movlw 27
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR1
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw location
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        movf PBP#VAR1,W
        addlw temp
        movwf FSR
        movf PBP#VAR2,W
        movwf INDF
CT@LB21
F1_000099 equ $ ; IN [WILD ANIMAL.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB19
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB19
NX@LB20
F1_000100 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[0] = TEMP[0]
        movf temp#0,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        movwf longitude#0
F1_000101 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[1] = TEMP[1]
        movf temp#1,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        movwf longitude#1
F1_000102 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[2] = "."
        movlw 46
        movwf longitude#2
F1_000103 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[3] = TEMP[2]
        movf temp#2,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        movwf longitude#3
F1_000104 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[4] = TEMP[3]
        movf temp#3,W
        movwf PBP#VAR2
        movf PBP#VAR2,W
        movwf longitude#4
F1_000105 equ $ ; IN [WILD ANIMAL.BAS] FOR X = 5 TO 10
        movlw 5
        bsf STATUS,5
ram_bank = 1
        movwf _X
FR@LB22
        bcf STATUS,5
ram_bank = 0
        movlw 11
        bsf STATUS,5
ram_bank = 1
        subwf _X,W
        set@page NX@LB23
        bcf STATUS,5
ram_bank = 0
        btfsc STATUS,0
        goto NX@LB23
F1_000106 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[X] = TEMP[X]
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        addlw temp
        movwf FSR
        movf INDF,W
        bcf STATUS,5
ram_bank = 0
        movwf PBP#VAR2
        bsf STATUS,5
ram_bank = 1
        movf _X,W
        bcf STATUS,5
ram_bank = 0
        movwf GEN4H
        movlw 119
        movwf GEN4
        movf PBP#VAR2,W
        f@call PUT@ARRAY
CT@LB24
F1_000107 equ $ ; IN [WILD ANIMAL.BAS] NEXT
        movlw 1
        bsf STATUS,5
ram_bank = 1
        addwf _X,F
        set@page FR@LB22
        bcf STATUS,5
ram_bank = 0
        btfss STATUS,0
        goto FR@LB22
NX@LB23
F1_000108 equ $ ; IN [WILD ANIMAL.BAS] LONGITUDE[11] = 0
        bsf STATUS,5
ram_bank = 1
        clrf longitude#11
error1
        bcf STATUS,5
ram_bank = 0
F1_000110 equ $ ; IN [WILD ANIMAL.BAS] RETURN
        return
Receive_SMS
F1_000113 equ $ ; IN [WILD ANIMAL.BAS] HSERIN 1000, OVER,[WAIT("+88"), STR NUMBER, WAIT("LOCATION")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB25
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 43
        set@page PB@LB25
        btfss STATUS,2
        goto PB@LB25
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB25
        btfss STATUS,2
        goto PB@LB25
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 56
        set@page PB@LB25
        btfss STATUS,2
        goto PB@LB25
        clrf PBP#VAR2
PB@LB28
        bsf STATUS,0
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        movf PBP#VAR2,W
        addlw number
        movwf FSR
        movf RCREG,W
        movwf INDF
        incf PBP#VAR2,F
        movf PBP#VAR2,W
        sublw 11
        set@page PB@LB28
        btfss STATUS,2
        goto PB@LB28
PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 76
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 79
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 67
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 65
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 84
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 73
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 79
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
        f@call HRSIN2
        set@page over
        btfss STATUS,0
        goto over
        sublw 78
        set@page PB@LB29
        btfss STATUS,2
        goto PB@LB29
F1_000115 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
F1_000116 equ $ ; IN [WILD ANIMAL.BAS] PRINT AT 2,1, "SMS SENDING..."
        movlw 128
        movwf BPFH
        movlw 192
        f@call LCD@CRS
        movlw high (STR@LB7)
        movwf GEN4H
        movlw low (STR@LB7)
        f@call C@STROUT
F1_000117 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CMGF=1", 13, 10]
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
F1_000118 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000119 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["AT+CMGS=",34, STR NUMBER, 34,13,10]
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
        movlw 163
        f@call SB@STROUT
        movlw 34
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000120 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000121 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["LATITUDE:", STR LATITUDE, 13]
        movlw 76
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 12
        movwf GEN4
        clrf PP2H
        movlw 107
        f@call SB@STROUT
        movlw 13
        f@call HRSOUT
F1_000122 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["LONGITUDE:", STR LONGITUDE, 13]
        movlw 76
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        movlw 110
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 105
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        movlw 117
        f@call HRSOUT
        movlw 100
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 12
        movwf GEN4
        movlw 119
        f@call MB@STROUT
        movlw 13
        f@call HRSOUT
F1_000123 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT["HTTPS://WWW.GOOGLE.COM/MAPS/PLACE/", STR LATITUDE, ",",STR LONGITUDE, 13]
        movlw 104
        f@call HRSOUT
        movlw 116
        f@call HRSOUT
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 58
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        f@call HRSOUT
        movlw 119
        f@call HRSOUT
        f@call HRSOUT
        f@call HRSOUT
        movlw 46
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 111
        f@call HRSOUT
        f@call HRSOUT
        movlw 103
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 101
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
        movlw 109
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 115
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 112
        f@call HRSOUT
        movlw 108
        f@call HRSOUT
        movlw 97
        f@call HRSOUT
        movlw 99
        f@call HRSOUT
        movlw 101
        f@call HRSOUT
        movlw 47
        f@call HRSOUT
        movlw 4
        movwf BPFH
        movlw 12
        movwf GEN4
        clrf PP2H
        movlw 107
        f@call SB@STROUT
        movlw 44
        f@call HRSOUT
        movlw 12
        movwf GEN4
        movlw 119
        f@call MB@STROUT
        movlw 13
        f@call HRSOUT
F1_000124 equ $ ; IN [WILD ANIMAL.BAS] HSEROUT[$1A, 13, 10]
        movlw 26
        f@call HRSOUT
        movlw 13
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000125 equ $ ; IN [WILD ANIMAL.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
F1_000126 equ $ ; IN [WILD ANIMAL.BAS] CLS
        f@call LCD@CLS
over
F1_000128 equ $ ; IN [WILD ANIMAL.BAS] RETURN
        return
F1_EOF equ $ ; WILD ANIMAL.BAS
PB@LB40
        F@JUMP PB@LB40
STR@LB1
        de 80,108,101,97,115,101,32,119,97,105,116,46,46,0
STR@LB2
        de 67,111,110,116,97,99,116,105,110,103,32,71,83,77,46,46,0
STR@LB3
        de 71,83,77,32,79,75,46,46,0
STR@LB4
        de 71,80,83,32,80,111,119,101,114,32,85,80,46,46,0
STR@LB5
        de 70,105,110,100,105,110,103,32,76,111,99,97,116,105,111,110,0
STR@LB6
        de 76,111,99,97,116,105,111,110,32,70,105,120,101,100,46,0
STR@LB7
        de 83,77,83,32,83,101,110,100,105,110,103,46,46,46,0
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
