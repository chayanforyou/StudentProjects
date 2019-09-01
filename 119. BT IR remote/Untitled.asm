;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F688, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0007
PORTC equ 0X0007
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
BAUDCTL equ 0X0011
SPBRGH equ 0X0012
SPBRG equ 0X0013
RCREG equ 0X0014
TXREG equ 0X0015
TXSTA equ 0X0016
RCSTA equ 0X0017
WDTCON equ 0X0018
CMCON0 equ 0X0019
CMCON1 equ 0X001A
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0087
TRISC equ 0X0087
PIE1 equ 0X008C
PCON equ 0X008E
OSCCON equ 0X008F
OSCTUNE equ 0X0090
ANSEL equ 0X0091
WPU equ 0X0095
WPUA equ 0X0095
IOC equ 0X0096
IOCA equ 0X0096
EEDATLH equ 0X0097
EEDATH equ 0X0097
EEADRH equ 0X0098
VRCON equ 0X0099
EEDAT equ 0X009A
EEDATL equ 0X009A
EEDATA equ 0X009A
EEADR equ 0X009B
EECON1 equ 0X009C
EECON2 equ 0X009D
ADRESL equ 0X009E
ADCON1 equ 0X009F
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
RAIE=3
T0IF=2
INTF=1
RAIF=0
EEIF=7
ADIF=6
RCIF=5
PP_RCIF=5
C2IF=4
C1IF=3
OSFIF=2
TXIF=1
PP_TXIF=1
T1IF=0
TMR1IF=0
T1GINV=7
TMR1GE=6
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
TMR1CS=1
TMR1ON=0
ABDOVF=7
RCIDL=6
SCKP=4
BRG16=3
WUE=1
ABDEN=0
CSRC=7
TX9=6
TXEN=5
SYNC=4
SENDB=3
PP_SENDB=3
BRGH=2
TRMT=1
TX9D=0
SPEN=7
RX9=6
SREN=5
CREN=4
PP_CREN=4
ADDEN=3
FERR=2
OERR=1
PP_OERR=1
RX9D=0
WDTPS3=4
WDTPS2=3
WDTPS1=2
WDTPS0=1
SWDTEN=0
C2OUT=7
C1OUT=6
C2INV=5
C1INV=4
CIS=3
CM2=2
CM1=1
CM0=0
T1GSS=1
C2SYNC=0
ADFM=7
VCFG=6
CHS2=4
CHS1=3
CHS0=2
GO=1
NOT_DONE=1
GO_DONE=1
PP_GO_DONE=1
ADON=0
NOT_RAPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
EEIE=7
ADIE=6
RCIE=5
C2IE=4
C1IE=3
OSFIE=2
TXIE=1
T1IE=0
TMR1IE=0
ULPWUE=5
SBODEN=4
NOT_POR=1
NOT_BOD=0
IRCF2=6
IRCF1=5
IRCF0=4
OSTS=3
HTS=2
LTS=1
SCS=0
TUN4=4
TUN3=3
TUN2=2
TUN1=1
TUN0=0
ANS7=7
ANS6=6
ANS5=5
ANS4=4
ANS3=3
ANS2=2
ANS1=1
ANS0=0
IOC5=5
IOC4=4
IOC3=3
IOC2=2
IOC1=1
IOC0=0
IOCA5=5
IOCA4=4
IOCA3=3
IOCA2=2
IOCA1=1
IOCA0=0
VREN=7
VRR=5
VR3=3
VR2=2
VR1=1
VR0=0
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
ADCS2=6
ADCS1=5
ADCS0=4
  __MAXRAM 0X1FF
  __BADRAM 0X06, 0X08-0X09, 0X0D, 0X1B-0X1D
  __BADRAM 0X86, 0X88-0X89, 0X8D, 0X92-0X94
  __BADRAM 0X106, 0X108-0X109, 0X10C-0X11F
  __BADRAM 0X186, 0X188-0X189, 0X18C-0X18D, 0X190-0X1EF
FCMEN_ON equ 0X3FFF
FCMEN_OFF equ 0X37FF
IESO_ON equ 0X3FFF
IESO_OFF equ 0X3BFF
BOD_ON equ 0X3FFF
BOD_NSLEEP equ 0X3EFF
BOD_SBODEN equ 0X3DFF
BOD_OFF equ 0X3CFF
CPD_ON equ 0X3F7F
CPD_OFF equ 0X3FFF
CP_ON equ 0X3FBF
CP_OFF equ 0X3FFF
MCLRE_ON equ 0X3FFF
MCLRE_OFF equ 0X3FDF
PWRTE_OFF equ 0X3FFF
PWRTE_ON equ 0X3FEF
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FF7
LP_OSC equ 0X3FF8
XT_OSC equ 0X3FF9
HS_OSC equ 0X3FFA
EC_OSC equ 0X3FFB
INTRC_OSC_NOCLKOUT equ 0X3FFC
INTRC_OSC_CLKOUT equ 0X3FFD
EXTRC_OSC_NOCLKOUT equ 0X3FFE
EXTRC_OSC_CLKOUT equ 0X3FFF
INTOSCIO equ 0X3FFC
INTOSC equ 0X3FFD
EXTRCIO equ 0X3FFE
EXTRC equ 0X3FFF
BOREN_NSLEEP equ 0X3EFF
BOREN_OFF equ 0X3CFF
BOREN_ON equ 0X3FFF
BOREN_SBODEN equ 0X3DFF
FOSC_EC equ 0X3FFB
FOSC_EXTRCCLK equ 0X3FFF
FOSC_EXTRCIO equ 0X3FFE
FOSC_HS equ 0X3FFA
FOSC_INTOSCCLK equ 0X3FFD
FOSC_INTOSCIO equ 0X3FFC
FOSC_LP equ 0X3FF8
FOSC_XT equ 0X3FF9
WDTE_OFF equ 0X3FF7
WDTE_ON equ 0X3FFF
#define __16F688 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 256
#define _RAM_END 0X0100
#define _MAXMEM 4096
#define _ADC 8
#define _ADC_RES 10
#define _EEPROM 256
#define _PAGES 2
#define _BANKS 3
#define RAM_BANKS 3
#define _USART 1
#define _USB 0
#define _FLASH 1
#define _CWRITE_BLOCK 4
#define BANK0_START 0X20
#define BANK0_END 0X7F
#define BANK1_START 0X00A0
#define BANK1_END 0X00EF
#define BANK2_START 0X0120
#define BANK2_END 0X016F
#define _SYSTEM_VARIABLE_COUNT 9
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
GEN = 32
GENH = 33
GPR = 34
PP0 = 35
PP0H = 36
PP1 = 37
PP1H = 38
PP2 = 39
PP2H = 40
Sony_in = 41
Sony_inH = 42
relay_status = 43
rxd = 44
#define relay1 PORTA,2
#define relay2 PORTC,0
#define relay3 PORTC,1
#define relay4 PORTC,2
#define __SONYIN_PORT PORTC
#define cmd Sony_in
#define rly_1 relay_status,0
#define rly_2 relay_status,1
#define rly_3 relay_status,2
#define rly_4 relay_status,3
#define __XTAL 20
#define __HSERIAL_BAUD 9600
#define __HSERIAL_RCSTA 144
#define __HSERIAL_TXSTA 36
#define __SONYIN_PIN 3
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
HRSIN2
        btfsc 23,PP_OERR
        bcf 23,PP_CREN
        bsf 23,PP_CREN
        movf 32,W
        movwf 35
        movf 33,W
        movwf 36
        clrf 37
        clrf 38
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 37,F
        skpc
        addwf 38,F
        skpc
        addwf 35,F
        skpc
        addwf 36,F
        skpc
        goto I@NT
        incfsz 37,W
        goto $ - 16
        incfsz 38,W
        goto $ - 17
        movlw 250
        movwf 37
        clrf 38
        goto HRSIN@LPT
HRSIN
        btfsc 23,PP_OERR
        bcf 23,PP_CREN
        bsf 23,PP_CREN
        btfss 12,PP_RCIF
        goto $ - 1
H@RSIN
        movf 20,W
        bsf 3,0
        goto I@NT
P@INN
        call C@PIN
P@IN
        movwf 32
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        clrf 37
        btfss 35,0
        movwf 37
        call FL@ST
        skpnz
        goto I@NT
        call FL@ST
        skpnz
        goto I@NT
        goto FL@ST
FL@ST
        movf 32,W
        xorwf 37,F
        movlw 1
        movwf 35
        clrf 36
        movf 0,W
        andwf 32,W
        xorwf 37,W
        skpz
        return
        incf 35,F
        skpnz
        incfsz 36,F
        goto $ - 8
        return
EE@RD
        bsf 3,5
        movwf 155
EE@RD@W
        bsf 3,5
        bsf 156,PP_RD
        movf 154,W
        incf 155,F
        goto I@NT
EE@WR
EE@WR@W
        bsf 3,5
        movwf 154
        bsf 156,PP_WREN
        movlw 85
        movwf 157
        movlw 170
        movwf 157
        bsf 156,PP_WR
        btfsc 156,PP_WR
        goto $ - 1
        bcf 156,PP_WREN
        incf 155,F
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
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 36
DLUS@W
        addlw 252
        movwf 35
        comf 36,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 35,F
        skpnc
        goto $ - 3
        addwf 35,F
        nop
        incfsz 36,F
        goto $ - 8
        return
C@PIN
        movwf 0
        movlw PORTB
        btfsc 0,3
        movlw PORTA
        movwf 4
C@BT
        movlw (C@TBL >> 8)
        movwf 10
        movf 0,W
        andlw 7
        addwf 2,F
C@TBL
        retlw 1
        retlw 2
        retlw 4
        retlw 8
        retlw 16
        retlw 32
        retlw 64
        retlw 128
SNY@IN
        clrf 35
        movlw PORTC
        bcf 4,7
        movwf 4
        movlw 8
        call P@IN
        movlw 3
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL7
        btfss 3,2
        goto SNYIN@LB2
        movlw 232
        subwf 35,W
        btfss 3,0
        goto SNYIN@LL7
SNYIN@LB2
        movlw 5
        subwf 36,W
        btfss 3,0
        goto SNYIN@LL6
        btfss 3,2
        goto SNYIN@LL7
        movlw 70
        subwf 35,W
        btfss 3,0
        goto SNYIN@LL6
SNYIN@LL7
        movlw 255
        movwf 36
        movwf 35
        bsf 3,0
        goto I@NT
SNYIN@LL6
        movlw 11
        movwf 34
SNYIN@RPT
        bcf 40,3
        clrf 35
        movlw 8
        call P@IN
        movlw 1
        subwf 36,W
        btfss 3,0
        goto SNYIN@CLRB
        btfss 3,2
        goto SNYIN@LB4
        movlw 194
        subwf 35,W
        btfsc 3,0
SNYIN@LB4
        bsf 40,3
SNYIN@CLRB
        bcf 3,0
        rrf 40,F
        rrf 39,F
        decfsz 34,F
        goto SNYIN@RPT
        movlw 127
        andwf 39,W
        movwf 35
        bcf 3,0
        rlf 39,F
        rlf 40,W
        andlw 31
        movwf 36
        movf 35,W
        bcf 3,0
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
proton#main#start
        clrf 3
        movlw 129
        movwf 19
        movlw 36
        movwf 22
        movlw 144
        movwf 23
F2_SOF equ $ ; ANTOR
F2_EOF equ $ ; ANTOR
F1_SOF equ $ ; ANTOR
F1_000022 equ $ ; IN [ANTOR] CMCON0 = 7
        movlw 7
        movwf CMCON0
F1_000023 equ $ ; IN [ANTOR] ANSEL = 0
        bsf STATUS,5
ram_bank = 1
        clrf ANSEL
F1_000038 equ $ ; IN [ANTOR] OUTPUT RELAY1 : OUTPUT RELAY2
        bcf TRISA,2
        bcf TRISC,0
F1_000039 equ $ ; IN [ANTOR] OUTPUT RELAY3 : OUTPUT RELAY4
        bcf TRISC,1
        bcf TRISC,2
F1_000041 equ $ ; IN [ANTOR] RELAY1 = 1 : RELAY2 = 1
        bcf STATUS,5
ram_bank = 0
        bsf PORTA,2
        bsf PORTC,0
F1_000042 equ $ ; IN [ANTOR] RELAY3 = 1 : RELAY4 = 1
        bsf PORTC,1
        bsf PORTC,2
F1_000050 equ $ ; IN [ANTOR] RELAY_STATUS = EREAD 0
        movlw 0
        f@call EE@RD
        movwf relay_status
F1_000051 equ $ ; IN [ANTOR] IF RELAY_STATUS = $FF THEN RELAY_STATUS = 0
        incf relay_status,W
        set@page BC@LL2
        btfss STATUS,2
        goto BC@LL2
        clrf relay_status
BC@LL2
F1_000052 equ $ ; IN [ANTOR] EWRITE 0,[RELAY_STATUS]
        bsf STATUS,5
ram_bank = 1
        clrf EEADR
        bcf STATUS,5
ram_bank = 0
        movf relay_status,W
        f@call EE@WR
main
F1_000057 equ $ ; IN [ANTOR] IF RLY_1 = 1 THEN
        set@page BC@LL4
        btfss relay_status,0
        goto BC@LL4
F1_000058 equ $ ; IN [ANTOR] RELAY1 = 0
        bcf PORTA,2
        F@JUMP BC@LL5
BC@LL4
F1_000059 equ $ ; IN [ANTOR] ELSE
F1_000060 equ $ ; IN [ANTOR] RELAY1 = 1
        bsf PORTA,2
F1_000061 equ $ ; IN [ANTOR] ENDIF
BC@LL5
F1_000062 equ $ ; IN [ANTOR] IF RLY_2 = 1 THEN
        set@page BC@LL7
        btfss relay_status,1
        goto BC@LL7
F1_000063 equ $ ; IN [ANTOR] RELAY2 = 0
        bcf PORTC,0
        F@JUMP BC@LL8
BC@LL7
F1_000064 equ $ ; IN [ANTOR] ELSE
F1_000065 equ $ ; IN [ANTOR] RELAY2 = 1
        bsf PORTC,0
F1_000066 equ $ ; IN [ANTOR] ENDIF
BC@LL8
F1_000067 equ $ ; IN [ANTOR] IF RLY_3 = 1 THEN
        set@page BC@LL10
        btfss relay_status,2
        goto BC@LL10
F1_000068 equ $ ; IN [ANTOR] RELAY3 = 0
        bcf PORTC,1
        F@JUMP BC@LL11
BC@LL10
F1_000069 equ $ ; IN [ANTOR] ELSE
F1_000070 equ $ ; IN [ANTOR] RELAY3 = 1
        bsf PORTC,1
F1_000071 equ $ ; IN [ANTOR] ENDIF
BC@LL11
F1_000072 equ $ ; IN [ANTOR] IF RLY_4 = 1 THEN
        set@page BC@LL13
        btfss relay_status,3
        goto BC@LL13
F1_000073 equ $ ; IN [ANTOR] RELAY4 = 0
        bcf PORTC,2
        F@JUMP BC@LL14
BC@LL13
F1_000074 equ $ ; IN [ANTOR] ELSE
F1_000075 equ $ ; IN [ANTOR] RELAY4 = 1
        bsf PORTC,2
F1_000076 equ $ ; IN [ANTOR] ENDIF
BC@LL14
F1_000077 equ $ ; IN [ANTOR] GOSUB IR_SENSE
        f@call ir_sense
F1_000078 equ $ ; IN [ANTOR] GOTO MAIN
        F@JUMP main
ir_sense
F1_000081 equ $ ; IN [ANTOR] SONY_IN = SONYIN
        f@call SNY@IN
        movwf Sony_in
        movf PP0H,W
        movwf Sony_inH
F1_000082 equ $ ; IN [ANTOR] GOSUB TAKE_ACTION
        f@call take_action
F1_000083 equ $ ; IN [ANTOR] HSERIN 10, MAIN,[RXD]
        clrf GENH
        movlw 10
        movwf GEN
        f@call HRSIN2
        set@page main
        btfss STATUS,0
        goto main
        movwf rxd
F1_000084 equ $ ; IN [ANTOR] RETURN
        return
take_action
F1_000087 equ $ ; IN [ANTOR] IF RXD = "1" THEN RLY_1 = 1
        movlw 49
        subwf rxd,W
        set@page BC@LL16
        btfss STATUS,2
        goto BC@LL16
        bsf relay_status,0
BC@LL16
F1_000088 equ $ ; IN [ANTOR] IF RXD = "A" THEN RLY_1 = 0
        movlw 65
        subwf rxd,W
        set@page BC@LL18
        btfss STATUS,2
        goto BC@LL18
        bcf relay_status,0
BC@LL18
F1_000089 equ $ ; IN [ANTOR] IF RXD = "2" THEN RLY_2 = 1
        movlw 50
        subwf rxd,W
        set@page BC@LL20
        btfss STATUS,2
        goto BC@LL20
        bsf relay_status,1
BC@LL20
F1_000090 equ $ ; IN [ANTOR] IF RXD = "B" THEN RLY_2 = 0
        movlw 66
        subwf rxd,W
        set@page BC@LL22
        btfss STATUS,2
        goto BC@LL22
        bcf relay_status,1
BC@LL22
F1_000091 equ $ ; IN [ANTOR] IF RXD = "3" THEN RLY_3 = 1
        movlw 51
        subwf rxd,W
        set@page BC@LL24
        btfss STATUS,2
        goto BC@LL24
        bsf relay_status,2
BC@LL24
F1_000092 equ $ ; IN [ANTOR] IF RXD = "C" THEN RLY_3 = 0
        movlw 67
        subwf rxd,W
        set@page BC@LL26
        btfss STATUS,2
        goto BC@LL26
        bcf relay_status,2
BC@LL26
F1_000093 equ $ ; IN [ANTOR] IF RXD = "4" THEN RLY_4 = 1
        movlw 52
        subwf rxd,W
        set@page BC@LL28
        btfss STATUS,2
        goto BC@LL28
        bsf relay_status,3
BC@LL28
F1_000094 equ $ ; IN [ANTOR] IF RXD = "D" THEN RLY_4 = 0
        movlw 68
        subwf rxd,W
        set@page BC@LL30
        btfss STATUS,2
        goto BC@LL30
        bcf relay_status,3
BC@LL30
F1_000095 equ $ ; IN [ANTOR] IF RXD = "I" THEN GOSUB HIGH_ALL
        movlw 73
        subwf rxd,W
        set@page BC@LL32
        btfss STATUS,2
        goto BC@LL32
        f@call high_all
BC@LL32
F1_000096 equ $ ; IN [ANTOR] IF RXD = "9" THEN GOSUB LOW_ALL
        movlw 57
        subwf rxd,W
        set@page BC@LL34
        btfss STATUS,2
        goto BC@LL34
        f@call low_all
BC@LL34
F1_000097 equ $ ; IN [ANTOR] IF CMD = 0 THEN RLY_1 =~ RLY_1 : DELAYMS 300
        movf Sony_in,F
        set@page BC@LL36
        btfss STATUS,2
        goto BC@LL36
        movlw 1
        xorwf relay_status,F
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL36
F1_000098 equ $ ; IN [ANTOR] IF CMD = 1 THEN RLY_2 =~ RLY_2 : DELAYMS 300
        movlw 1
        subwf Sony_in,W
        set@page BC@LL38
        btfss STATUS,2
        goto BC@LL38
        movlw 2
        xorwf relay_status,F
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL38
F1_000099 equ $ ; IN [ANTOR] IF CMD = 2 THEN RLY_3 =~ RLY_3 : DELAYMS 300
        movlw 2
        subwf Sony_in,W
        set@page BC@LL40
        btfss STATUS,2
        goto BC@LL40
        movlw 4
        xorwf relay_status,F
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL40
F1_000100 equ $ ; IN [ANTOR] IF CMD = 3 THEN RLY_4 =~ RLY_4 : DELAYMS 300
        movlw 3
        subwf Sony_in,W
        set@page BC@LL42
        btfss STATUS,2
        goto BC@LL42
        movlw 8
        xorwf relay_status,F
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL42
F1_000101 equ $ ; IN [ANTOR] IF CMD = 19 THEN GOSUB HIGH_ALL : DELAYMS 300
        movlw 19
        subwf Sony_in,W
        set@page BC@LL44
        btfss STATUS,2
        goto BC@LL44
        f@call high_all
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL44
F1_000102 equ $ ; IN [ANTOR] IF CMD = 18 THEN GOSUB LOW_ALL : DELAYMS 300
        movlw 18
        subwf Sony_in,W
        set@page BC@LL46
        btfss STATUS,2
        goto BC@LL46
        f@call low_all
        movlw 1
        movwf PP1H
        movlw 44
        f@call DLY@W
BC@LL46
F1_000103 equ $ ; IN [ANTOR] EWRITE 0,[RELAY_STATUS]
        bsf STATUS,5
ram_bank = 1
        clrf EEADR
        bcf STATUS,5
ram_bank = 0
        movf relay_status,W
        f@call EE@WR
F1_000104 equ $ ; IN [ANTOR] RXD = 0
        clrf rxd
F1_000105 equ $ ; IN [ANTOR] RETURN
        return
low_all
F1_000108 equ $ ; IN [ANTOR] RLY_1 = 1 : RLY_2 = 1
        bsf relay_status,0
        bsf relay_status,1
F1_000109 equ $ ; IN [ANTOR] RLY_3 = 1 : RLY_4 = 1
        bsf relay_status,2
        bsf relay_status,3
F1_000110 equ $ ; IN [ANTOR] RETURN
        return
high_all
F1_000113 equ $ ; IN [ANTOR] RLY_1 = 0 : RLY_2 = 0
        bcf relay_status,0
        bcf relay_status,1
F1_000114 equ $ ; IN [ANTOR] RLY_3 = 0 : RLY_4 = 0
        bcf relay_status,2
        bcf relay_status,3
F1_000115 equ $ ; IN [ANTOR] RETURN
        return
F1_EOF equ $ ; ANTOR
PB@LB48
        F@JUMP PB@LB48
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_ON&CP_ON&CPD_ON&BOREN_OFF&IESO_OFF&FCMEN_OFF
        end
