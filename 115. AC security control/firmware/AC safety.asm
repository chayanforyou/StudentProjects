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
#define _SYSTEM_VARIABLE_COUNT 19
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
GEN4 = 35
GEN4H = 36
GPR = 37
PP0 = 38
PP0H = 39
PP1 = 40
PP1H = 41
PP2 = 42
PP2H = 43
PP3 = 44
PP3H = 45
PP4 = 46
PP5 = 47
PP7 = 48
PP7H = 49
SP#P9 = 50
adc = 51
signal = 52
ac_volt = 53
time = 54
cnt = 55
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define Relay PORTC,0
#define Buzz PORTC,1
#define up PORTC,2
#define down PORTC,3
#define __XTAL 8
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
proton#code#start
        org 0
        goto proton#main#start
T@LEB
        clrf 39
T@LEW
        clrf 41
T@LE
        movwf 40
        movlw 6
T@ST
        movwf 37
        movf 41,W
        subwf 39,W
        skpz
        goto $ + 3
        movf 40,W
        subwf 38,W
        movlw 4
        skpnc
        movlw 1
        skpnz
        movlw 2
        andwf 37,W
        skpz
        movlw 1
        goto I@NT
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 39
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 47
        movlw 254
        call CH@SND
        movf 47,W
        goto CH@SND
OUT@DECB
        clrf 36
OUT@DECC
        movwf 42
        clrf 43
OUT@DEC
        bcf 32,3
        movf 36,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 35
        movlw 39
        movwf 41
        movlw 16
        call D@DIG
        movlw 3
        movwf 41
        movlw 232
        call D@DIG
        clrf 41
        movlw 100
        call D@DIG
        clrf 41
        movlw 10
        call D@DIG
        movf 42,W
        goto SEND@IT
D@DIG
        movwf 40
        movf 43,W
        movwf 39
        movf 42,W
        movwf 38
        call D@VD
        movf 38,W
SEND@IT
        movwf 38
        decf 35,F
        skpnz
        bcf 32,3
        movf 36,W
        skpnz
        goto $ + 4
        subwf 35,W
        skpnc
        goto EX@SEND@IT
        movf 38,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
PRINT
        movwf 45
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 45,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 39
        movlw 128
        call DLUS@W
        movlw 51
        movwf 44
        call PR@LP
        movlw 19
        movwf 39
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 44
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 45,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 44
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 39
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
        movf 44,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 44,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 45,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 8
RD@AD
        movwf 44
        rlf 44,F
        rlf 44,F
        rlf 44,W
        andlw 56
        iorlw 193
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        clrf 49
        movf 30,W
        movwf 48
        goto I@NT
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 41
DLY@W
        movwf 40
DLY@P
        movlw 255
        addwf 40,F
        skpc
        addwf 41,F
        skpc
        goto I@NT
        movlw 3
        movwf 39
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 39
DLUS@W
        addlw 244
        movwf 38
        comf 39,F
        movlw 254
        skpc
        goto $ + 4
        addwf 38,F
        skpnc
        goto $ - 2
        addwf 38,F
        nop
        incfsz 39,F
        goto $ - 6
        nop
        btfsc 38,0
        goto $ + 1
        btfsc 38,0
        goto $ + 1
        return
D@VD
        clrf 43
        clrf 42
D@VD2
        movlw 16
        movwf 44
        rlf 39,W
        rlf 42,F
        rlf 43,F
        movf 40,W
        subwf 42,F
        movf 41,W
        skpc
        incfsz 41,W
        subwf 43,F
        skpnc
        goto $ + 8
        movf 40,W
        addwf 42,F
        movf 41,W
        skpnc
        incfsz 41,W
        addwf 43,F
        bcf 3,0
        rlf 38,F
        rlf 39,F
        decfsz 44,F
        goto $ - 21
        movf 38,W
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
F2_SOF equ $ ; AC SAFETY.PRP
F2_EOF equ $ ; AC SAFETY.PRP
F1_SOF equ $ ; AC SAFETY.BAS
F1_000008 equ $ ; IN [AC SAFETY.BAS] CLS
        call LCD@CLS
F1_000014 equ $ ; IN [AC SAFETY.BAS] INPUT UP : INPUT DOWN
        bsf STATUS,5
ram_bank = 1
        bsf TRISC,2
        bsf TRISC,3
F1_000015 equ $ ; IN [AC SAFETY.BAS] OUTPUT RELAY : OUTPUT BUZZ
        bcf TRISC,0
        bcf TRISC,1
F1_000022 equ $ ; IN [AC SAFETY.BAS] CLEAR
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
F1_000024 equ $ ; IN [AC SAFETY.BAS] AC_VOLT = 220
        movlw 220
        movwf ac_volt
Restart
F1_000027 equ $ ; IN [AC SAFETY.BAS] CLS
        call LCD@CLS
F1_000028 equ $ ; IN [AC SAFETY.BAS] RELAY = 0 : BUZZ = 0
        bcf PORTC,0
        bcf PORTC,1
F1_000029 equ $ ; IN [AC SAFETY.BAS] PRINT AT 1,1, "PLEASE WAIT.."
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 80
        call PRINT
        movlw 108
        call PRINT
        movlw 101
        call PRINT
        movlw 97
        call PRINT
        movlw 115
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        movlw 119
        call PRINT
        movlw 97
        call PRINT
        movlw 105
        call PRINT
        movlw 116
        call PRINT
        movlw 46
        call PRINT
        call PRINT
F1_000030 equ $ ; IN [AC SAFETY.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        call DLY@W
F1_000031 equ $ ; IN [AC SAFETY.BAS] CLS
        call LCD@CLS
main
F1_000034 equ $ ; IN [AC SAFETY.BAS] RELAY = 0 : BUZZ = 0
        bcf PORTC,0
        bcf PORTC,1
F1_000035 equ $ ; IN [AC SAFETY.BAS] GOSUB CHECK_LOAD
        call check_load
F1_000036 equ $ ; IN [AC SAFETY.BAS] IF SIGNAL = 0 THEN
        movf signal,F
        btfss STATUS,2
        goto BC@LL2
F1_000037 equ $ ; IN [AC SAFETY.BAS] PRINT AT 2,1, "  LOAD: ----  "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 32
        call PRINT
        call PRINT
        movlw 76
        call PRINT
        movlw 111
        call PRINT
        movlw 97
        call PRINT
        movlw 100
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 45
        call PRINT
        call PRINT
        call PRINT
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        goto BC@LL3
BC@LL2
F1_000038 equ $ ; IN [AC SAFETY.BAS] ELSE
F1_000039 equ $ ; IN [AC SAFETY.BAS] PRINT AT 2,1, "LOAD: ", DEC2 SIGNAL, " WATT "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 111
        call PRINT
        movlw 97
        call PRINT
        movlw 100
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 2
        movwf GEN4H
        movf signal,W
        call OUT@DECC
        movlw 32
        call PRINT
        movlw 87
        call PRINT
        movlw 97
        call PRINT
        movlw 116
        call PRINT
        call PRINT
        movlw 32
        call PRINT
F1_000040 equ $ ; IN [AC SAFETY.BAS] ENDIF
BC@LL3
F1_000041 equ $ ; IN [AC SAFETY.BAS] IF UP = 1 THEN INC AC_VOLT
        btfss PORTC,2
        goto BC@LL5
        incf ac_volt,F
BC@LL5
F1_000042 equ $ ; IN [AC SAFETY.BAS] IF DOWN = 1 THEN DEC AC_VOLT
        btfss PORTC,3
        goto BC@LL7
        decf ac_volt,F
BC@LL7
F1_000043 equ $ ; IN [AC SAFETY.BAS] IF AC_VOLT >= 230 THEN GOSUB HIGH_VOLT
        movlw 230
        subwf ac_volt,W
        btfss STATUS,0
        goto BC@LL9
        call high_volt
BC@LL9
F1_000044 equ $ ; IN [AC SAFETY.BAS] IF AC_VOLT <= 190 THEN GOSUB LOW_VOLT
        movlw 191
        subwf ac_volt,W
        btfsc STATUS,0
        goto BC@LL11
        call low_volt
BC@LL11
F1_000045 equ $ ; IN [AC SAFETY.BAS] IF SIGNAL = 45 THEN GOSUB OVERLOAD
        movlw 45
        subwf signal,W
        btfss STATUS,2
        goto BC@LL13
        call overload
BC@LL13
F1_000046 equ $ ; IN [AC SAFETY.BAS] GOTO MAIN
        goto main
high_volt
F1_000049 equ $ ; IN [AC SAFETY.BAS] RELAY = 1
        bsf PORTC,0
F1_000050 equ $ ; IN [AC SAFETY.BAS] GOSUB CHECK_LOAD
        call check_load
F1_000051 equ $ ; IN [AC SAFETY.BAS] PRINT AT 2,1, "-HIGH VOLTAGE-"
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 45
        call PRINT
        movlw 72
        call PRINT
        movlw 105
        call PRINT
        movlw 103
        call PRINT
        movlw 104
        call PRINT
        movlw 32
        call PRINT
        movlw 86
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 116
        call PRINT
        movlw 97
        call PRINT
        movlw 103
        call PRINT
        movlw 101
        call PRINT
        movlw 45
        call PRINT
F1_000052 equ $ ; IN [AC SAFETY.BAS] IF UP = 1 THEN INC AC_VOLT
        btfss PORTC,2
        goto BC@LL15
        incf ac_volt,F
BC@LL15
F1_000053 equ $ ; IN [AC SAFETY.BAS] IF DOWN = 1 THEN DEC AC_VOLT
        btfss PORTC,3
        goto BC@LL17
        decf ac_volt,F
BC@LL17
F1_000054 equ $ ; IN [AC SAFETY.BAS] IF AC_VOLT < 230 THEN GOSUB RESTART
        movlw 230
        subwf ac_volt,W
        btfsc STATUS,0
        goto BC@LL19
        call Restart
BC@LL19
F1_000055 equ $ ; IN [AC SAFETY.BAS] BUZZ = ~BUZZ
        movlw 2
        xorwf PORTC,F
F1_000056 equ $ ; IN [AC SAFETY.BAS] GOTO HIGH_VOLT
        goto high_volt
low_volt
F1_000059 equ $ ; IN [AC SAFETY.BAS] RELAY = 1
        bsf PORTC,0
F1_000060 equ $ ; IN [AC SAFETY.BAS] GOSUB CHECK_LOAD
        call check_load
F1_000061 equ $ ; IN [AC SAFETY.BAS] PRINT AT 2,1, "-LOW VOLTAGE- "
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 45
        call PRINT
        movlw 76
        call PRINT
        movlw 111
        call PRINT
        movlw 119
        call PRINT
        movlw 32
        call PRINT
        movlw 86
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 116
        call PRINT
        movlw 97
        call PRINT
        movlw 103
        call PRINT
        movlw 101
        call PRINT
        movlw 45
        call PRINT
        movlw 32
        call PRINT
F1_000062 equ $ ; IN [AC SAFETY.BAS] IF UP = 1 THEN INC AC_VOLT
        btfss PORTC,2
        goto BC@LL21
        incf ac_volt,F
BC@LL21
F1_000063 equ $ ; IN [AC SAFETY.BAS] IF DOWN = 1 THEN DEC AC_VOLT
        btfss PORTC,3
        goto BC@LL23
        decf ac_volt,F
BC@LL23
F1_000064 equ $ ; IN [AC SAFETY.BAS] IF AC_VOLT > 190 THEN GOSUB RESTART
        movlw 191
        subwf ac_volt,W
        btfss STATUS,0
        goto BC@LL25
        call Restart
BC@LL25
F1_000065 equ $ ; IN [AC SAFETY.BAS] BUZZ = ~BUZZ
        movlw 2
        xorwf PORTC,F
F1_000066 equ $ ; IN [AC SAFETY.BAS] GOTO LOW_VOLT
        goto low_volt
overload
F1_000069 equ $ ; IN [AC SAFETY.BAS] CLS
        call LCD@CLS
F1_000070 equ $ ; IN [AC SAFETY.BAS] PRINT AT 1,1, "!!OVER-LOAD!!"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 33
        call PRINT
        call PRINT
        movlw 79
        call PRINT
        movlw 86
        call PRINT
        movlw 69
        call PRINT
        movlw 82
        call PRINT
        movlw 45
        call PRINT
        movlw 76
        call PRINT
        movlw 79
        call PRINT
        movlw 65
        call PRINT
        movlw 68
        call PRINT
        movlw 33
        call PRINT
        call PRINT
F1_000071 equ $ ; IN [AC SAFETY.BAS] FOR CNT = 0 TO 10
        clrf cnt
FR@LB27
        movlw 11
        subwf cnt,W
        btfsc STATUS,0
        goto NX@LB28
F1_000072 equ $ ; IN [AC SAFETY.BAS] BUZZ = ~BUZZ
        movlw 2
        xorwf PORTC,F
F1_000073 equ $ ; IN [AC SAFETY.BAS] DELAYMS 100
        movlw 100
        call DL@MS
CT@LB29
F1_000074 equ $ ; IN [AC SAFETY.BAS] NEXT
        movlw 1
        addwf cnt,F
        btfss STATUS,0
        goto FR@LB27
NX@LB28
F1_000075 equ $ ; IN [AC SAFETY.BAS] RELAY = 1
        bsf PORTC,0
F1_000076 equ $ ; IN [AC SAFETY.BAS] BUZZ = 0
        bcf PORTC,1
F1_000077 equ $ ; IN [AC SAFETY.BAS] PRINT AT 2,1, "PRESS ANY KEY..."
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 112
        call PRINT
        movlw 114
        call PRINT
        movlw 101
        call PRINT
        movlw 115
        call PRINT
        call PRINT
        movlw 32
        call PRINT
        movlw 97
        call PRINT
        movlw 110
        call PRINT
        movlw 121
        call PRINT
        movlw 32
        call PRINT
        movlw 107
        call PRINT
        movlw 101
        call PRINT
        movlw 121
        call PRINT
        movlw 46
        call PRINT
        call PRINT
        call PRINT
F1_000078 equ $ ; IN [AC SAFETY.BAS] WHILE 1 = 1
BC@LL29
F1_000079 equ $ ; IN [AC SAFETY.BAS] IF UP = 1 THEN GOSUB RESTART
        btfss PORTC,2
        goto BC@LL32
        call Restart
BC@LL32
F1_000080 equ $ ; IN [AC SAFETY.BAS] IF DOWN = 1 THEN GOSUB RESTART
        btfss PORTC,3
        goto BC@LL34
        call Restart
BC@LL34
F1_000081 equ $ ; IN [AC SAFETY.BAS] WEND
        goto BC@LL29
BC@LL30
check_load
F1_000084 equ $ ; IN [AC SAFETY.BAS] PRINT AT 1,1, "AC VOLT: ",DEC3 AC_VOLT, "V"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 65
        call PRINT
        movlw 67
        call PRINT
        movlw 32
        call PRINT
        movlw 86
        call PRINT
        movlw 111
        call PRINT
        movlw 108
        call PRINT
        movlw 116
        call PRINT
        movlw 58
        call PRINT
        movlw 32
        call PRINT
        movlw 3
        movwf GEN4H
        movf ac_volt,W
        call OUT@DECC
        movlw 118
        call PRINT
F1_000085 equ $ ; IN [AC SAFETY.BAS] GOSUB GET_SENSE
        call get_sense
F1_000086 equ $ ; IN [AC SAFETY.BAS] RETURN
        return
get_sense
F1_000089 equ $ ; IN [AC SAFETY.BAS] ADC = ADIN 0
        movlw 0
        call RD@AD
        movwf adc
F1_000091 equ $ ; IN [AC SAFETY.BAS] IF ADC > 160 THEN SIGNAL = 0
        movlw 161
        subwf adc,W
        btfss STATUS,0
        goto BC@LL36
        clrf signal
BC@LL36
F1_000092 equ $ ; IN [AC SAFETY.BAS] IF ADC >= 145 AND ADC <= 150 THEN SIGNAL = 15
        movlw 145
        subwf adc,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf adc,W
        movwf PP0
        movlw 150
        call T@LEB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL38
        movlw 15
        movwf signal
BC@LL38
F1_000093 equ $ ; IN [AC SAFETY.BAS] IF ADC >= 130 AND ADC <= 140 THEN SIGNAL = 30
        movlw 130
        subwf adc,W
        movlw 0
        btfsc STATUS,0
        movlw 1
        movwf SP#P9
        movf adc,W
        movwf PP0
        movlw 140
        call T@LEB
        andwf SP#P9,F
        btfsc STATUS,2
        goto BC@LL40
        movlw 30
        movwf signal
BC@LL40
F1_000094 equ $ ; IN [AC SAFETY.BAS] IF ADC < 125 THEN SIGNAL = 45
        movlw 125
        subwf adc,W
        btfsc STATUS,0
        goto BC@LL42
        movlw 45
        movwf signal
BC@LL42
F1_000095 equ $ ; IN [AC SAFETY.BAS] DELAYMS 500
        movlw 1
        movwf PP1H
        movlw 244
        call DLY@W
F1_000096 equ $ ; IN [AC SAFETY.BAS] RETURN
        return
F1_EOF equ $ ; AC SAFETY.BAS
PB@LB44
        goto PB@LB44
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
