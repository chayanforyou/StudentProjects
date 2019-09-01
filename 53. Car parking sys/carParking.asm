;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16C72A, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
#define __16C72A 1
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
#define _SYSTEM_VARIABLE_COUNT 13
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
PP0 = 35
PP0H = 36
PP1 = 37
PP1H = 38
PP2 = 39
PP2H = 40
PP3 = 41
PP3H = 42
PP4 = 43
PP5 = 44
pos = 45
car = 46
#define __LCD_RSPORT PORTB
#define __LCD_ENPORT PORTB
#define __LCD_DTPORT PORTB
#define motor PORTC,0
#define gate PORTC,1
#define slot1 PORTC,2
#define slot2 PORTC,3
#define slot3 PORTC,4
#define slot4 PORTC,5
#define slot5 PORTC,6
#define slot6 PORTC,7
#define __XTAL 8
#define __LCD_RSPIN 2
#define __LCD_ENPIN 3
#define __LCD_DTPIN 4
#define __LCD_INTERFACE 4
proton#code#start
        org 0
        goto proton#main#start
LCD@CLS
        movlw 128
        movwf 33
CLS
        movlw 254
        call CH@SND
        movlw 1
        call CH@SND
        movlw 117
        movwf 36
        movlw 48
        goto DLUS@W
LCD@CRS
        clrf 33
        bsf 33,7
CURS@
        movwf 44
        movlw 254
        call CH@SND
        movf 44,W
        goto CH@SND
PRINT
        movwf 42
        bcf PORTB,3
        bcf PORTB,2
        bsf 3,5
        bcf PORTB,3
        bcf PORTB,2
        movlw 15
        andwf PORTB,F
        bcf 3,5
        movf 42,W
        btfsc 32,1
        goto PRT@1
        movlw 62
        movwf 36
        movlw 128
        call DLUS@W
        movlw 51
        movwf 41
        call PR@LP
        movlw 19
        movwf 36
        movlw 136
        call DLUS@W
        call PR@LP
        movlw 100
        call DL@US
        call PR@LP
        movlw 100
        call DL@US
        movlw 34
        movwf 41
        call PR@LP
        movlw 40
        call PRT@C
        movlw 12
        call PRT@C
        movlw 6
        call PRT@C
        bsf 32,1
        movf 42,W
        goto PRT@1
PRT@C
        bsf 32,0
PRT@1
        movwf 41
        btfss 32,0
        goto PRIT@SKP
        bcf PORTB,2
        sublw 3
        skpc
        goto PRT@S
        call PRT@S
        movlw 7
        movwf 36
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
        movf 41,W
        andlw 240
        iorwf PORTB,F
        bcf PORTB,3
        swapf 41,F
        btfsc 32,0
        goto PR@LP
        movlw 50
        call DL@US
PR@EX
        movf 42,W
        goto I@NT
CH@SND
        btfsc 33,7
        goto PRINT
        return
CL@R
        clrf 0
        incf 4,F
        addlw 255
        skpz
        goto $ - 4
        goto I@NT
DL@MS
        clrf 38
DLY@W
        movwf 37
DLY@P
        movlw 255
        addwf 37,F
        skpc
        addwf 38,F
        skpc
        goto I@NT
        movlw 3
        movwf 36
        movlw 227
        call DLUS@W
        goto DLY@P
DL@US
        clrf 36
DLUS@W
        addlw 244
        movwf 35
        comf 36,F
        movlw 254
        skpc
        goto $ + 4
        addwf 35,F
        skpnc
        goto $ - 2
        addwf 35,F
        nop
        incfsz 36,F
        goto $ - 6
        nop
        btfsc 35,0
        goto $ + 1
        btfsc 35,0
        goto $ + 1
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
F2_SOF equ $ ; CARPARKING.PRP
F2_EOF equ $ ; CARPARKING.PRP
F1_SOF equ $ ; CARPARKING.BAS
F1_000025 equ $ ; IN [CARPARKING.BAS] TRISC = $FE
        movlw 254
        bsf STATUS,5
ram_bank = 1
        movwf TRISC
F1_000027 equ $ ; IN [CARPARKING.BAS] PRINT $FE, $40, 0,17,10,4,10,17,0,0
        bcf STATUS,5
ram_bank = 0
        call PRINT
        movlw 64
        call PRINT
        movlw 0
        call PRINT
        movlw 17
        call PRINT
        movlw 10
        call PRINT
        movlw 4
        call PRINT
        movlw 10
        call PRINT
        movlw 17
        call PRINT
        movlw 0
        call PRINT
        movlw 0
        call PRINT
F1_000028 equ $ ; IN [CARPARKING.BAS] PRINT $FE, $48, 1,2,20,9,2,20,8,0
        movlw 254
        call PRINT
        movlw 72
        call PRINT
        movlw 1
        call PRINT
        movlw 2
        call PRINT
        movlw 20
        call PRINT
        movlw 9
        call PRINT
        movlw 2
        call PRINT
        movlw 20
        call PRINT
        movlw 8
        call PRINT
        movlw 0
        call PRINT
F1_000032 equ $ ; IN [CARPARKING.BAS] CLEAR
        movlw 32
        movwf FSR
        movlw 96
        call CL@R
        movlw 160
        movwf FSR
        movlw 32
        call CL@R
F1_000033 equ $ ; IN [CARPARKING.BAS] CLS
        call LCD@CLS
main
F1_000036 equ $ ; IN [CARPARKING.BAS] PRINT AT 1,1, "1  2  3  4  5  6"
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 49
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        movlw 50
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        movlw 51
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        movlw 52
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        movlw 53
        call PRINT
        movlw 32
        call PRINT
        call PRINT
        movlw 54
        call PRINT
F1_000037 equ $ ; IN [CARPARKING.BAS] IF SLOT1 = 0 THEN
        btfsc PORTC,2
        goto BC@LL2
F1_000038 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,1, 1
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 1
        call PRINT
F1_000039 equ $ ; IN [CARPARKING.BAS] CAR.0 = 1
        bsf car,0
        goto BC@LL3
BC@LL2
F1_000040 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000041 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,1, 0
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 0
        call PRINT
F1_000042 equ $ ; IN [CARPARKING.BAS] CAR.0 = 0
        bcf car,0
F1_000043 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL3
F1_000044 equ $ ; IN [CARPARKING.BAS] IF SLOT2 = 0 THEN
        btfsc PORTC,3
        goto BC@LL5
F1_000045 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,4, 1
        movlw 128
        movwf BPFH
        movlw 195
        call LCD@CRS
        movlw 1
        call PRINT
F1_000046 equ $ ; IN [CARPARKING.BAS] CAR.1 = 1
        bsf car,1
        goto BC@LL6
BC@LL5
F1_000047 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000048 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,4, 0
        movlw 128
        movwf BPFH
        movlw 195
        call LCD@CRS
        movlw 0
        call PRINT
F1_000049 equ $ ; IN [CARPARKING.BAS] CAR.1 = 0
        bcf car,1
F1_000050 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL6
F1_000051 equ $ ; IN [CARPARKING.BAS] IF SLOT3 = 0 THEN
        btfsc PORTC,4
        goto BC@LL8
F1_000052 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,7, 1
        movlw 128
        movwf BPFH
        movlw 198
        call LCD@CRS
        movlw 1
        call PRINT
F1_000053 equ $ ; IN [CARPARKING.BAS] CAR.2 = 1
        bsf car,2
        goto BC@LL9
BC@LL8
F1_000054 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000055 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,7, 0
        movlw 128
        movwf BPFH
        movlw 198
        call LCD@CRS
        movlw 0
        call PRINT
F1_000056 equ $ ; IN [CARPARKING.BAS] CAR.2 = 0
        bcf car,2
F1_000057 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL9
F1_000058 equ $ ; IN [CARPARKING.BAS] IF SLOT4 = 0 THEN
        btfsc PORTC,5
        goto BC@LL11
F1_000059 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,10, 1
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        movlw 1
        call PRINT
F1_000060 equ $ ; IN [CARPARKING.BAS] CAR.3 = 1
        bsf car,3
        goto BC@LL12
BC@LL11
F1_000061 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000062 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,10, 0
        movlw 128
        movwf BPFH
        movlw 201
        call LCD@CRS
        movlw 0
        call PRINT
F1_000063 equ $ ; IN [CARPARKING.BAS] CAR.3 = 0
        bcf car,3
F1_000064 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL12
F1_000065 equ $ ; IN [CARPARKING.BAS] IF SLOT5 = 0 THEN
        btfsc PORTC,6
        goto BC@LL14
F1_000066 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,13, 1
        movlw 128
        movwf BPFH
        movlw 204
        call LCD@CRS
        movlw 1
        call PRINT
F1_000067 equ $ ; IN [CARPARKING.BAS] CAR.4 = 1
        bsf car,4
        goto BC@LL15
BC@LL14
F1_000068 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000069 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,13, 0
        movlw 128
        movwf BPFH
        movlw 204
        call LCD@CRS
        movlw 0
        call PRINT
F1_000070 equ $ ; IN [CARPARKING.BAS] CAR.4 = 0
        bcf car,4
F1_000071 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL15
F1_000072 equ $ ; IN [CARPARKING.BAS] IF SLOT6 = 0 THEN
        btfsc PORTC,7
        goto BC@LL17
F1_000073 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,16, 1
        movlw 128
        movwf BPFH
        movlw 207
        call LCD@CRS
        movlw 1
        call PRINT
F1_000074 equ $ ; IN [CARPARKING.BAS] CAR.5 = 1
        bsf car,5
        goto BC@LL18
BC@LL17
F1_000075 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000076 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,16, 0
        movlw 128
        movwf BPFH
        movlw 207
        call LCD@CRS
        movlw 0
        call PRINT
F1_000077 equ $ ; IN [CARPARKING.BAS] CAR.5 = 0
        bcf car,5
F1_000078 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL18
F1_000080 equ $ ; IN [CARPARKING.BAS] IF GATE = 0 THEN
        btfsc PORTC,1
        goto BC@LL20
F1_000081 equ $ ; IN [CARPARKING.BAS] IF CAR = 63 THEN
        movlw 63
        subwf car,W
        btfss STATUS,2
        goto BC@LL22
F1_000082 equ $ ; IN [CARPARKING.BAS] CLS
        call LCD@CLS
F1_000083 equ $ ; IN [CARPARKING.BAS] PRINT AT 1,1, "SLOT FULL..."
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 83
        call PRINT
        movlw 108
        call PRINT
        movlw 111
        call PRINT
        movlw 116
        call PRINT
        movlw 32
        call PRINT
        movlw 70
        call PRINT
        movlw 117
        call PRINT
        movlw 108
        call PRINT
        call PRINT
        movlw 46
        call PRINT
        call PRINT
        call PRINT
F1_000084 equ $ ; IN [CARPARKING.BAS] DELAYMS 2000
        movlw 7
        movwf PP1H
        movlw 208
        call DLY@W
F1_000085 equ $ ; IN [CARPARKING.BAS] CLS
        call LCD@CLS
        goto BC@LL23
BC@LL22
F1_000086 equ $ ; IN [CARPARKING.BAS] ELSE
F1_000087 equ $ ; IN [CARPARKING.BAS] GOSUB GATE_ACTIVE
        call gate_active
F1_000088 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL23
F1_000089 equ $ ; IN [CARPARKING.BAS] ENDIF
BC@LL20
F1_000090 equ $ ; IN [CARPARKING.BAS] GOTO MAIN
        goto main
gate_active
F1_000093 equ $ ; IN [CARPARKING.BAS] CLS
        call LCD@CLS
F1_000094 equ $ ; IN [CARPARKING.BAS] PRINT AT 1,1, "GATE OPENED.."
        movlw 128
        movwf BPFH
        call LCD@CRS
        movlw 71
        call PRINT
        movlw 97
        call PRINT
        movlw 116
        call PRINT
        movlw 101
        call PRINT
        movlw 32
        call PRINT
        movlw 79
        call PRINT
        movlw 112
        call PRINT
        movlw 101
        call PRINT
        movlw 110
        call PRINT
        movlw 101
        call PRINT
        movlw 100
        call PRINT
        movlw 46
        call PRINT
        call PRINT
F1_000095 equ $ ; IN [CARPARKING.BAS] GOSUB GATE_OPEN
        call gate_open
F1_000096 equ $ ; IN [CARPARKING.BAS] PRINT AT 2,1, "LOCK IN 10SEC.."
        movlw 128
        movwf BPFH
        movlw 192
        call LCD@CRS
        movlw 76
        call PRINT
        movlw 111
        call PRINT
        movlw 99
        call PRINT
        movlw 107
        call PRINT
        movlw 32
        call PRINT
        movlw 105
        call PRINT
        movlw 110
        call PRINT
        movlw 32
        call PRINT
        movlw 49
        call PRINT
        movlw 48
        call PRINT
        movlw 83
        call PRINT
        movlw 101
        call PRINT
        movlw 99
        call PRINT
        movlw 46
        call PRINT
        call PRINT
F1_000097 equ $ ; IN [CARPARKING.BAS] DELAYMS 10000
        movlw 39
        movwf PP1H
        movlw 16
        call DLY@W
F1_000098 equ $ ; IN [CARPARKING.BAS] GOSUB GATE_LOCK
        call gate_lock
F1_000099 equ $ ; IN [CARPARKING.BAS] CLS
        call LCD@CLS
F1_000100 equ $ ; IN [CARPARKING.BAS] GOTO MAIN
        goto main
gate_lock
F1_000103 equ $ ; IN [CARPARKING.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB25
        movlw 51
        subwf pos,W
        btfsc STATUS,0
        goto NX@LB26
F1_000104 equ $ ; IN [CARPARKING.BAS] MOTOR = 1
        bsf PORTC,0
F1_000105 equ $ ; IN [CARPARKING.BAS] DELAYUS 800
        movlw 3
        movwf PP0H
        movlw 32
        call DLUS@W
F1_000106 equ $ ; IN [CARPARKING.BAS] MOTOR = 0
        bcf PORTC,0
F1_000107 equ $ ; IN [CARPARKING.BAS] DELAYUS 19200
        movlw 75
        movwf PP0H
        movlw 0
        call DLUS@W
CT@LB27
F1_000108 equ $ ; IN [CARPARKING.BAS] NEXT
        movlw 1
        addwf pos,F
        btfss STATUS,0
        goto FR@LB25
NX@LB26
F1_000109 equ $ ; IN [CARPARKING.BAS] RETURN
        return
gate_open
F1_000112 equ $ ; IN [CARPARKING.BAS] FOR POS = 0 TO 50
        clrf pos
FR@LB28
        movlw 51
        subwf pos,W
        btfsc STATUS,0
        goto NX@LB29
F1_000113 equ $ ; IN [CARPARKING.BAS] MOTOR = 1
        bsf PORTC,0
F1_000114 equ $ ; IN [CARPARKING.BAS] DELAYUS 2000
        movlw 7
        movwf PP0H
        movlw 208
        call DLUS@W
F1_000115 equ $ ; IN [CARPARKING.BAS] MOTOR = 0
        bcf PORTC,0
F1_000116 equ $ ; IN [CARPARKING.BAS] DELAYUS 18000
        movlw 70
        movwf PP0H
        movlw 80
        call DLUS@W
CT@LB30
F1_000117 equ $ ; IN [CARPARKING.BAS] NEXT
        movlw 1
        addwf pos,F
        btfss STATUS,0
        goto FR@LB28
NX@LB29
F1_000118 equ $ ; IN [CARPARKING.BAS] RETURN
        return
F1_EOF equ $ ; CARPARKING.BAS
PB@LB31
        goto PB@LB31
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ALL&BOREN_OFF
        end
