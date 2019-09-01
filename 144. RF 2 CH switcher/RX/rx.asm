;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F72, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
EEDATL equ 0X010C
PMDATL equ 0X010C
EEADRL equ 0X010D
PMADRL equ 0X010D
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
TMR0IE=5
T0IE=5
INTE=4
RBIE=3
TMR0IF=2
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
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09, 0X0D, 0X18-0X1D
  __BADRAM 0X88-0X89, 0X8D, 0X8F-0X91, 0X95-0X9E
  __BADRAM 0X105, 0X107-0X109, 0X110-0X11F
  __BADRAM 0X185, 0X187-0X189, 0X18D-0X19F
BOREN_ON equ 0X3FFF
BODEN_ON equ 0X3FFF
BOREN_OFF equ 0X3FBF
BODEN_OFF equ 0X3FBF
CP_ALL equ 0X3FEF
CP_OFF equ 0X3FFF
PWRTEN_OFF equ 0X3FFF
PWRTE_OFF equ 0X3FFF
PWRTEN_ON equ 0X3FF7
PWRTE_ON equ 0X3FF7
WDTEN_ON equ 0X3FFF
WDTEN_OFF equ 0X3FFB
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FFB
LP_OSC equ 0X3FFC
XT_OSC equ 0X3FFD
HS_OSC equ 0X3FFE
RC_OSC equ 0X3FFF
CP_ON equ 0X3FEF
FOSC_HS equ 0X3FFE
FOSC_LP equ 0X3FFC
FOSC_RC equ 0X3FFF
FOSC_XT equ 0X3FFD
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FF7
WDTE_OFF equ 0X3FFB
WDTE_ON equ 0X3FFF
#define __16F72 1
#define XTAL 8
#define _CORE 14
#define _MAXRAM 128
#define _RAM_END 0X0080
#define _MAXMEM 2048
#define _ADC 5
#define _ADC_RES 8
#define _EEPROM 0
#define _PAGES 1
#define _BANKS 3
#define RAM_BANKS 3
#define _USART 1
#define _USB 0
#define _FLASH 2
#define _CWRITE_BLOCK 0
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00BF
#define BANK2_START 0X01A0
#define BANK2_END 0X01BF
#define BANK3_START 0X01A0
#define BANK3_END 0X01BF
#define _SYSTEM_VARIABLE_COUNT 20
ram_bank = 0
CURRENT@PAGE = 0
DEST@PAGE = 0
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
GEN4H = 33
GENH = 34
GPR = 35
PP0 = 36
PP0H = 37
PP0HH = 38
PP0HHH = 39
PP1 = 40
PP1H = 41
PP2 = 42
PP2H = 43
PP2HH = 44
PP2HHH = 45
PP3 = 46
PPZ = 47
PPZH = 48
PPZHH = 49
PPZHHH = 50
RPFH = 51
dta = 52
#define __RSIN_PORT PORTC
#define RLY1 PORTC,0
#define RLY2 PORTC,1
#define LED1 PORTC,2
#define LED2 PORTC,3
#define flag dta,0
#define in1 dta,1
#define in2 dta,2
#define __XTAL 8
#define __RSIN_PIN 4
#define __RSIN_MODE 1
#define __SERIAL_BAUD 2400
#define __RSIN_TIMEOUT 1000
proton#code#start
        org 0
        goto proton#main#start
IN@DEC32
        clrf 42
        clrf 43
        clrf 44
        clrf 45
        bcf 35,5
IN@DECB32
        call CH@RCV
        skpc
        return
        addlw 211
        skpnz
        bsf 35,5
        addlw 45
        addlw 198
        skpnc
        goto IN@DECB32
        addlw 10
        skpc
        goto IN@DECB32
IN@DCL132
        movwf 40
        clrf 39
        clrf 38
        clrf 37
        movlw 10
        movwf 36
        call AL@MUL
        movf 40,W
        addwf 36,W
        movwf 42
        movf 37,W
        movwf 43
        clrw
        skpnc
        movlw 1
        addwf 43,F
        movf 38,W
        movwf 44
        clrw
        skpnc
        movlw 1
        addwf 44,F
        movf 39,W
        movwf 45
        clrw
        skpnc
        movlw 1
        addwf 45,F
        decf 33,F
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
        btfss 35,5
        goto $ + 12
        comf 42,F
        comf 43,F
        comf 44,F
        comf 45,F
        incf 42,F
        skpnz
        incf 43,F
        skpnz
        incf 44,F
        skpnz
        incf 45,F
        movf 42,W
        setc
        goto I@NT
RSIN_PORT = PORTC
RSIN_PIN = 4
RSIN_MODE = 1
SERIAL_BAUD = 2400
RSIN2
        movlw 232
        movwf 36
        movlw 3
        movwf 37
        clrf 40
        bsf 3,5
        bsf PORTC,4
        bcf 3,5
        nop
        btfsc PORTC,4
        goto RSIN@ST
        movlw 255
        addwf 40,F
        skpc
        addwf 36,F
        skpc
        addwf 37,F
        skpc
        goto I@NT
        incf 40,W
        movlw 100
        skpnz
        movwf 40
        nop
        goto $ + 1
        goto $ - 17
RSIN@ST
        clrf 37
        movlw 102
        call DLUS@W
        movlw 8
        movwf 41
        call SR@DLY
        bcf 3,0
        btfss PORTC,4
        bsf 3,0
        rrf 40,F
        nop
        goto $ + 1
        decfsz 41,F
        goto $ - 8
        call SR@DLY
        bsf 3,0
        movf 40,W
        goto I@NT
SR@DLY
        movlw 1
        movwf 37
        movlw 153
        goto DLUS@W
CH@RCV
        movf 51,W
        xorlw 6
        skpnz
        goto RSIN2
DL@US
        clrf 37
DLUS@W
        addlw 244
        movwf 36
        comf 37,F
        movlw 254
        skpc
        goto $ + 4
        addwf 36,F
        skpnc
        goto $ - 2
        addwf 36,F
        nop
        incfsz 37,F
        goto $ - 6
        nop
        btfsc 36,0
        goto $ + 1
        btfsc 36,0
        goto $ + 1
        return
AL@MUL
        movlw 32
        movwf 46
        clrf 47
        clrf 48
        clrf 49
        clrf 50
MLT32@LP
        clrc
        btfss 36,0
        goto MLT32@BR
        movf 42,W
        addwf 47,F
        movf 43,W
        skpnc
        incfsz 43,W
        addwf 48,F
        movf 44,W
        skpnc
        incfsz 44,W
        addwf 49,F
        movf 45,W
        skpnc
        incfsz 45,W
        addwf 50,F
MLT32@BR
        rrf 50,F
        rrf 49,F
        rrf 48,F
        rrf 47,F
        rrf 39,F
        rrf 38,F
        rrf 37,F
        rrf 36,F
        decfsz 46,F
        goto MLT32@LP
        return
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
F2_SOF equ $ ; ABRAR
F2_EOF equ $ ; ABRAR
F1_SOF equ $ ; ABRAR
F1_000013 equ $ ; IN [ABRAR] ALL_DIGITAL = TRUE
        movlw 7
        bsf STATUS,5
ram_bank = 1
        movwf ADCON1
F1_000018 equ $ ; IN [ABRAR] INPUT PORTC.4
        bsf TRISC,4
F1_000024 equ $ ; IN [ABRAR] OUTPUT RLY1 : OUTPUT RLY2
        bcf TRISC,0
        bcf TRISC,1
F1_000025 equ $ ; IN [ABRAR] OUTPUT LED1 : OUTPUT LED2
        bcf TRISC,2
        bcf TRISC,3
F1_000026 equ $ ; IN [ABRAR] CLEAR PORTC
        bcf STATUS,5
ram_bank = 0
        clrf PORTC
F1_000032 equ $ ; IN [ABRAR] DTA = 0
        clrf dta
main
F1_000035 equ $ ; IN [ABRAR] RSIN {TIMEOUT}, WAIT("Z"), DEC DTA
PB@LB2
        call RSIN2
        btfss STATUS,0
        goto timeout
        sublw 90
        btfss STATUS,2
        goto PB@LB2
        movlw 6
        movwf RPFH
        clrf GEN4H
        call IN@DEC32
        btfss STATUS,0
        goto timeout
        movwf dta
timeout
F1_000037 equ $ ; IN [ABRAR] IF FLAG = 1 THEN
        btfss dta,0
        goto BC@LL3
F1_000038 equ $ ; IN [ABRAR] IF IN1 = 1 THEN
        btfss dta,1
        goto BC@LL5
F1_000039 equ $ ; IN [ABRAR] RLY1 = 1 : LED1 = 1
        bsf PORTC,0
        bsf PORTC,2
        goto BC@LL6
BC@LL5
F1_000040 equ $ ; IN [ABRAR] ELSE
F1_000041 equ $ ; IN [ABRAR] RLY1 = 0 : LED1 = 0
        bcf PORTC,0
        bcf PORTC,2
F1_000042 equ $ ; IN [ABRAR] ENDIF
BC@LL6
F1_000043 equ $ ; IN [ABRAR] IF IN2 = 1 THEN
        btfss dta,2
        goto BC@LL8
F1_000044 equ $ ; IN [ABRAR] RLY2 = 1 : LED2 = 1
        bsf PORTC,1
        bsf PORTC,3
        goto BC@LL9
BC@LL8
F1_000045 equ $ ; IN [ABRAR] ELSE
F1_000046 equ $ ; IN [ABRAR] RLY2 = 0 : LED2 = 0
        bcf PORTC,1
        bcf PORTC,3
F1_000047 equ $ ; IN [ABRAR] ENDIF
BC@LL9
        goto BC@LL10
BC@LL3
F1_000048 equ $ ; IN [ABRAR] ELSE
F1_000049 equ $ ; IN [ABRAR] RLY1 = 0 : LED1 = 0
        bcf PORTC,0
        bcf PORTC,2
F1_000050 equ $ ; IN [ABRAR] RLY2 = 0 : LED2 = 0
        bcf PORTC,1
        bcf PORTC,3
F1_000051 equ $ ; IN [ABRAR] ENDIF
BC@LL10
F1_000052 equ $ ; IN [ABRAR] GOTO MAIN
        goto main
F1_EOF equ $ ; ABRAR
PB@LB12
        goto PB@LB12
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&CP_ON&BOREN_OFF
        end
