;----------------------------------------------------------
; Code Produced by the Proton Compiler. Ver 3.5.2.7
; Copyright Rosetta Technologies/Crownhill Associates Ltd
; Written by Les Johnson. November 2011
;----------------------------------------------------------
;
#define CONFIG_REQ 1
 LIST  P = 16F690, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
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
PWM1CON equ 0X001C
ECCPAS equ 0X001D
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
OSCCON equ 0X008F
OSCTUNE equ 0X0090
PR2 equ 0X0092
SSPADD equ 0X0093
MSK equ 0X0093
SSPMSK equ 0X0093
SSPSTAT equ 0X0094
WPU equ 0X0095
WPUA equ 0X0095
IOC equ 0X0096
IOCA equ 0X0096
WDTCON equ 0X0097
TXSTA equ 0X0098
SPBRG equ 0X0099
SPBRGH equ 0X009A
BAUDCTL equ 0X009B
ADRESL equ 0X009E
ADCON1 equ 0X009F
EEDAT equ 0X010C
EEDATL equ 0X010C
EEDATA equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
WPUB equ 0X0115
IOCB equ 0X0116
VRCON equ 0X0118
CM1CON0 equ 0X0119
CM2CON0 equ 0X011A
CM2CON1 equ 0X011B
ANSEL equ 0X011E
ANSELH equ 0X011F
EECON1 equ 0X018C
EECON2 equ 0X018D
PSTRCON equ 0X019D
SRCON equ 0X019E
_I2C_SCL_PORT=TRISB
_I2C_SCL_PIN=6
_I2C_SDA_PORT=TRISB
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
RABIE=3
T0IF=2
INTF=1
RABIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
T2IF=1
TMR2IF=1
T1IF=0
TMR1IF=0
OSFIF=7
C2IF=6
C1IF=5
EEIF=4
T1GINV=7
TMR1GE=6
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
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
P1M1=7
P1M0=6
DC1B1=5
DC1B0=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
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
PRSEN=7
PDC6=6
PDC5=5
PDC4=4
PDC3=3
PDC2=2
PDC1=1
PDC0=0
ECCPASE=7
ECCPAS2=6
ECCPAS1=5
ECCPAS0=4
PSSAC1=3
PSSAC0=2
PSSBD1=1
PSSBD0=0
ADFM=7
VCFG=6
CHS3=5
CHS2=4
CHS1=3
CHS0=2
GO=1
NOT_DONE=1
GO_DONE=1
PP_GO_DONE=1
ADON=0
NOT_RABPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
TRISA5=5
TRISA4=4
TRISA3=3
TRISA2=2
TRISA1=1
TRISA0=0
TRISB7=7
TRISB6=6
TRISB5=5
TRISB4=4
TRISC7=7
TRISC6=6
TRISC5=5
TRISC4=4
TRISC3=3
TRISC2=2
TRISC1=1
TRISC0=0
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
T2IE=1
TMR2IE=1
T1IE=0
TMR1IE=0
OSFIE=7
C2IE=6
C1IE=5
EEIE=4
ULPWUE=5
SBOREN=4
NOT_POR=1
NOT_BOR=0
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
WPUA5=5
WPUA4=4
WPUA2=2
WPUA1=1
WPUA0=0
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
WDTPS3=4
WDTPS2=3
WDTPS1=2
WDTPS0=1
SWDTEN=0
CSRC=7
TX9=6
TXEN=5
SYNC=4
SENB=3
PP_SENB=3
BRGH=2
TRMT=1
TX9D=0
BRG7=7
BRG6=6
BRG5=5
BRG4=4
BRG3=3
BRG2=2
BRG1=1
BRG0=0
BRG15=7
BRG14=6
BRG13=5
BRG12=4
BRG11=3
BRG10=2
BRG9=1
BRG8=0
ABDOVF=7
RCIDL=6
SCKP=4
BRG16=3
WUE=1
ABDEN=0
ADCS2=6
ADCS1=5
ADCS0=4
WPUB7=7
WPUB6=6
WPUB5=5
WPUB4=4
IOCB7=7
IOCB6=6
IOCB5=5
IOCB4=4
C1VREN=7
C2VREN=6
VRR=5
VP6EN=4
VR3=3
VR2=2
VR1=1
VR0=0
C1ON=7
C1OUT=6
C1OE=5
C1POL=4
C1R=2
C1CH1=1
C1CH0=0
C2ON=7
C2OUT=6
C2OE=5
C2POL=4
C2R=2
C2CH1=1
C2CH0=0
MC1OUT=7
MC2OUT=6
T1GSS=1
C2SYNC=0
ANS11=3
ANS10=2
ANS9=1
ANS8=0
ANS7=7
ANS6=6
ANS5=5
ANS4=4
ANS3=3
ANS2=2
ANS1=1
ANS0=0
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
STRSYNC=4
STRD=3
STRC=2
STRB=1
STRA=0
SR1=7
SR0=6
C1SEN=5
C2REN=4
PULSS=3
PULSR=2
  __MAXRAM 0X1FF
  __BADRAM 0X08-0X09, 0X1B
  __BADRAM 0X88-0X89, 0X91, 0X9C-0X9D
  __BADRAM 0X108-0X109, 0X110-0X114, 0X117, 0X11C-0X11D
  __BADRAM 0X188-0X189, 0X18E-0X19C, 0X19F-0X1EF
FCMEN_ON equ 0X3FFF
FCMEN_OFF equ 0X37FF
IESO_ON equ 0X3FFF
IESO_OFF equ 0X3BFF
BOR_ON equ 0X3FFF
BOR_NSLEEP equ 0X3EFF
BOR_SBODEN equ 0X3DFF
BOR_OFF equ 0X3CFF
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
FOSC_INTRCCLK equ 0X3FFD
FOSC_INTRCIO equ 0X3FFC
FOSC_LP equ 0X3FF8
FOSC_XT equ 0X3FF9
WDTE_OFF equ 0X3FF7
WDTE_ON equ 0X3FFF
#define __16F690 1
#define XTAL 20
#define _CORE 14
#define _MAXRAM 256
#define _RAM_END 0X0100
#define _MAXMEM 4096
#define _ADC 12
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
#define BANK2_END 0X0170
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
GEN2 = 35
GEN2H = 36
GEN3 = 37
GEN3H = 38
GEN4 = 39
GEN4H = 40
GENH = 41
GPR = 42
PBP#VAR0 = 43
PBP#VAR0H = 44
PBP#VAR1 = 45
PBP#VAR1H = 46
PP0 = 47
PP0H = 48
PP1 = 49
PP1H = 50
PP2 = 51
PP2H = 52
PP3 = 53
PP3H = 54
PP4 = 55
PP5 = 56
PP5H = 57
PP6 = 58
PP6H = 59
PP7 = 60
PP7H = 61
CH = 62
variable CH#0=62,CH#1=63,CH#2=64,CH#3=65
variable CH#4=66,CH#5=67,CH#6=68,CH#7=69
variable CH#8=70
LDR = 71
LDRH = 72
variable LDR#0=71,LDR#0H=72,LDR#1=73,LDR#1H=74
variable LDR#2=75,LDR#2H=76,LDR#3=77,LDR#3H=78
variable LDR#4=79,LDR#4H=80,LDR#5=81,LDR#5H=82
variable LDR#6=83,LDR#6H=84,LDR#7=85,LDR#7H=86
variable LDR#8=87,LDR#8H=88
LDR_TEMP = 89
LDR_TEMPH = 90
variable LDR_TEMP#0=89,LDR_TEMP#0H=90,LDR_TEMP#1=91,LDR_TEMP#1H=92
variable LDR_TEMP#2=93,LDR_TEMP#2H=94,LDR_TEMP#3=95,LDR_TEMP#3H=96
variable LDR_TEMP#4=97,LDR_TEMP#4H=98,LDR_TEMP#5=99,LDR_TEMP#5H=100
variable LDR_TEMP#6=101,LDR_TEMP#6H=102,LDR_TEMP#7=103,LDR_TEMP#7H=104
variable LDR_TEMP#8=105,LDR_TEMP#8H=106
_X = 107
_Y = 108
rxd = 109
def = 110
music = 111
#define LASER PORTC,5
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
        nop
        movlw (proton#main#start >> 8) & 255
        movwf 10
        goto proton#main#start
        org 4
OUT@DECB
        clrf 40
OUT@DECC
        movwf 51
        clrf 52
OUT@DEC
        bcf 32,3
        movf 40,W
        skpnz
        bsf 32,3
        movlw 5
        movwf 39
        movlw 39
        movwf 50
        movlw 16
        call D@DIG
        movlw 3
        movwf 50
        movlw 232
        call D@DIG
        clrf 50
        movlw 100
        call D@DIG
        clrf 50
        movlw 10
        call D@DIG
        movf 51,W
        goto SEND@IT
D@DIG
        movwf 49
        movf 52,W
        movwf 48
        movf 51,W
        movwf 47
        call D@VD
        movf 47,W
SEND@IT
        movwf 47
        decf 39,F
        skpnz
        bcf 32,3
        movf 40,W
        skpnz
        goto $ + 4
        subwf 39,W
        skpnc
        goto EX@SEND@IT
        movf 47,W
        skpz
        bcf 32,3
        btfsc 32,3
        goto EX@SEND@IT
        addlw 48
        goto CH@SND
EX@SEND@IT
        return
SRIN@T
        movf 37,W
        movwf 47
        movf 38,W
        movwf 48
        movlw 1
        movwf 49
        nop
        call SRIN@B
        skpc
        goto SRIN@S
        decfsz 49,F
        goto $ - 5
        movlw 255
        addwf 47,F
        skpc
        addwf 48,F
        skpc
        goto I@NT
        movlw 250
        movwf 49
        goto $ - 14
SERIN
        call SRIN@B
        skpnc
        goto SERIN
SRIN@S
        call SRIN@SD
        clrf 55
        movlw 8
        movwf 50
        call SRIN@D
        call SRIN@B
        skpnc
        incf 55,F
        btfss 57,5
        clrf 55
        rrf 49,F
        decfsz 50,F
        goto $ - 8
        btfsc 57,5
        bcf 49,7
        call SRIN@D
        bsf 3,0
        movf 49,W
        return
SRIN@B
        movf 34,W
        movwf 4
        movf 41,W
        bsf 4,7
        iorwf 0,F
        bcf 4,7
        andwf 0,W
        btfsc 57,6
        xorwf 41,W
        addlw 255
        return
SEROUT
        movwf 53
SRO@X
        movf 34,W
        movwf 4
        clrf 42
        movlw 240
        andwf 42,F
        movlw 8
        movwf 54
        bcf 3,0
        skpnc
        incf 42,F
        call SRO@B
        rrf 53,F
        decfsz 54,F
        goto $ - 5
        nop
        btfsc 57,5
        rrf 42,W
        call SRO@B
        goto $ + 1
        bsf 3,0
        call SRO@B
        movf 38,W
        movwf 50
        movf 37,W
        call DLY@W
        goto I@NT
SRO@B
        bcf 4,7
        btfss 57,7
        goto $ + 13
        movf 0,W
        iorwf 41,W
        btfss 57,6
        xorwf 41,W
        movwf 0
        bsf 4,7
        movf 0,W
        iorwf 41,W
        skpc
        xorwf 41,W
        movwf 0
        goto SRIN@D
        movf 0,W
        iorwf 41,W
        skpc
        xorwf 41,W
        btfsc 57,6
        xorwf 41,W
        movwf 0
        bsf 4,7
        comf 41,W
        andwf 0,F
        goto SRIN@D
SRIN@SD
        bsf 42,6
SRIN@D
        movf 57,W
        andlw 31
        addlw 0
        movwf 48
        movf 56,W
        addlw 14
        skpnc
        incf 48,F
        btfss 42,6
        goto DLUS@W
        bcf 42,6
        movwf 47
        movlw 2
        call R@SH
        goto DLUS@W
HRSIN2
        btfsc 24,PP_OERR
        bcf 24,PP_CREN
        bsf 24,PP_CREN
        movf 34,W
        movwf 47
        movf 41,W
        movwf 48
        clrf 49
        clrf 50
        goto $ + 1
        goto $ + 1
HRSIN@LPT
        nop
        btfsc 12,PP_RCIF
        goto H@RSIN
        movlw 255
        addwf 49,F
        skpc
        addwf 50,F
        skpc
        addwf 47,F
        skpc
        addwf 48,F
        skpc
        goto I@NT
        incfsz 49,W
        goto $ - 16
        incfsz 50,W
        goto $ - 17
        movlw 250
        movwf 49
        clrf 50
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
        btfsc 33,5
        goto SEROUT
        btfsc 33,2
        goto HRSOUT
        return
ADIN_STIME = 50
ADIN_TAD = 3
ADIN_RES = 10
RD@AD
        andlw 15
        movwf 53
        clrc
        rlf 53,F
        rlf 53,F
        movf 31,W
        andlw 192
        iorwf 53,W
        iorlw 1
        movwf 31
        movlw 50
        call DL@US
        bsf 31,PP_GO_DONE
        btfsc 31,PP_GO_DONE
        goto $ - 1
        movf 30,W
        movwf 61
        bsf 3,5
        movf 158,W
        bcf 3,5
        movwf 60
        goto I@NT
DL@MS
        clrf 50
DLY@W
        movwf 49
DLY@P
        movlw 255
        addwf 49,F
        skpc
        addwf 50,F
        skpc
        goto I@NT
        movlw 3
        movwf 48
        movlw 230
        call DLUS@W
        goto DLY@P
DL@US
        clrf 48
DLUS@W
        addlw 252
        movwf 47
        comf 48,F
        skpc
        goto $ + 7
        movlw 255
        nop
        addwf 47,F
        skpnc
        goto $ - 3
        addwf 47,F
        nop
        incfsz 48,F
        goto $ - 8
        return
D@VD
        clrf 52
        clrf 51
D@VD2
        movlw 16
        movwf 53
        rlf 48,W
        rlf 51,F
        rlf 52,F
        movf 49,W
        subwf 51,F
        movf 50,W
        skpc
        incfsz 50,W
        subwf 52,F
        skpnc
        goto $ + 8
        movf 49,W
        addwf 51,F
        movf 50,W
        skpnc
        incfsz 50,W
        addwf 52,F
        bcf 3,0
        rlf 47,F
        rlf 48,F
        decfsz 53,F
        goto $ - 21
        movf 47,W
        return
        bcf 3,0
        rrf 48,F
        rrf 47,F
R@SH
        addlw 255
        skpnc
        goto $ - 5
        movf 47,W
        goto I@NT
I@NT
        bcf 3,7
I@NT2
        bcf 3,5
        bcf 3,6
        return
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
F2_SOF equ $ ; LASER_MIDI.PRP
F2_EOF equ $ ; LASER_MIDI.PRP
F1_SOF equ $ ; LASER_MIDI.BAS
F1_000012 equ $ ; IN [LASER_MIDI.BAS] ADCON0 = %10000001
        movlw 129
        movwf ADCON0
F1_000013 equ $ ; IN [LASER_MIDI.BAS] ANSEL = %01110111
        movlw 119
        bsf STATUS,6
ram_bank = 2
        movwf ANSEL
F1_000014 equ $ ; IN [LASER_MIDI.BAS] ANSELH = %00000111
        movlw 7
        movwf ANSELH
F1_000020 equ $ ; IN [LASER_MIDI.BAS] TRISC.5 = 0 : PORTC.5 = 0
        bsf STATUS,5
        bcf STATUS,6
ram_bank = 1
        bcf TRISC,5
        bcf STATUS,5
ram_bank = 0
        bcf PORTC,5
F1_000024 equ $ ; IN [LASER_MIDI.BAS] CH[0] = 0
        clrf CH#0
F1_000025 equ $ ; IN [LASER_MIDI.BAS] CH[1] = 1
        movlw 1
        movwf CH#1
F1_000026 equ $ ; IN [LASER_MIDI.BAS] CH[2] = 2
        movlw 2
        movwf CH#2
F1_000027 equ $ ; IN [LASER_MIDI.BAS] CH[3] = 4
        movlw 4
        movwf CH#3
F1_000028 equ $ ; IN [LASER_MIDI.BAS] CH[4] = 5
        movlw 5
        movwf CH#4
F1_000029 equ $ ; IN [LASER_MIDI.BAS] CH[5] = 6
        movlw 6
        movwf CH#5
F1_000030 equ $ ; IN [LASER_MIDI.BAS] CH[6] = 10
        movlw 10
        movwf CH#6
F1_000031 equ $ ; IN [LASER_MIDI.BAS] CH[7] = 8
        movlw 8
        movwf CH#7
F1_000032 equ $ ; IN [LASER_MIDI.BAS] CH[8] = 9
        movlw 9
        movwf CH#8
F1_000042 equ $ ; IN [LASER_MIDI.BAS] DELAYMS 5000
        movlw 19
        movwf PP1H
        movlw 136
        f@call DLY@W
connect_pc
F1_000045 equ $ ; IN [LASER_MIDI.BAS] HSEROUT["AT", 10]
        movlw 65
        f@call HRSOUT
        movlw 84
        f@call HRSOUT
        movlw 10
        f@call HRSOUT
F1_000046 equ $ ; IN [LASER_MIDI.BAS] HSERIN 1000, CONNECT_PC,[WAIT("OK")]
        movlw 3
        movwf GENH
        movlw 232
        movwf GEN
PB@LB2
        f@call HRSIN2
        set@page connect_pc
        btfss STATUS,0
        goto connect_pc
        sublw 79
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
        f@call HRSIN2
        set@page connect_pc
        btfss STATUS,0
        goto connect_pc
        sublw 75
        set@page PB@LB2
        btfss STATUS,2
        goto PB@LB2
CALIBRATION
F1_000049 equ $ ; IN [LASER_MIDI.BAS] FOR X = 0 TO 3
        clrf _X
FR@LB3
        movlw 4
        subwf _X,W
        set@page NX@LB4
        btfsc STATUS,0
        goto NX@LB4
F1_000050 equ $ ; IN [LASER_MIDI.BAS] LASER = 1
        bsf PORTC,5
F1_000051 equ $ ; IN [LASER_MIDI.BAS] FOR Y = 0 TO 8
        clrf _Y
FR@LB6
        movlw 9
        subwf _Y,W
        set@page NX@LB7
        btfsc STATUS,0
        goto NX@LB7
F1_000052 equ $ ; IN [LASER_MIDI.BAS] LDR[Y] = ADIN CH[Y]
        movf _Y,W
        addlw CH
        movwf FSR
        movf INDF,W
        f@call RD@AD
        movwf PBP#VAR0
        movf PP7H,W
        movwf PBP#VAR0H
        bcf STATUS,0
        rlf _Y,W
        addlw LDR
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
        incf FSR,F
        movf PBP#VAR0H,W
        movwf INDF
CT@LB8
F1_000053 equ $ ; IN [LASER_MIDI.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB6
        btfss STATUS,0
        goto FR@LB6
NX@LB7
F1_000054 equ $ ; IN [LASER_MIDI.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
F1_000056 equ $ ; IN [LASER_MIDI.BAS] LASER = 0
        bcf PORTC,5
F1_000057 equ $ ; IN [LASER_MIDI.BAS] FOR Y = 0 TO 8
        clrf _Y
FR@LB9
        movlw 9
        subwf _Y,W
        set@page NX@LB10
        btfsc STATUS,0
        goto NX@LB10
F1_000058 equ $ ; IN [LASER_MIDI.BAS] LDR_TEMP[Y] = ADIN CH[Y]
        movf _Y,W
        addlw CH
        movwf FSR
        movf INDF,W
        f@call RD@AD
        movwf PBP#VAR0
        movf PP7H,W
        movwf PBP#VAR0H
        bcf STATUS,0
        rlf _Y,W
        addlw LDR_TEMP
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
        incf FSR,F
        movf PBP#VAR0H,W
        movwf INDF
CT@LB11
F1_000059 equ $ ; IN [LASER_MIDI.BAS] NEXT
        movlw 1
        addwf _Y,F
        set@page FR@LB9
        btfss STATUS,0
        goto FR@LB9
NX@LB10
F1_000060 equ $ ; IN [LASER_MIDI.BAS] DELAYMS 1000
        movlw 3
        movwf PP1H
        movlw 232
        f@call DLY@W
CT@LB5
F1_000061 equ $ ; IN [LASER_MIDI.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB3
        btfss STATUS,0
        goto FR@LB3
NX@LB4
MAIN
F1_000064 equ $ ; IN [LASER_MIDI.BAS] LASER = 1
        bsf PORTC,5
F1_000065 equ $ ; IN [LASER_MIDI.BAS] RXD = 0
        clrf rxd
F1_000067 equ $ ; IN [LASER_MIDI.BAS] FOR X = 0 TO 8
        clrf _X
FR@LB12
        movlw 9
        subwf _X,W
        set@page NX@LB13
        btfsc STATUS,0
        goto NX@LB13
F1_000068 equ $ ; IN [LASER_MIDI.BAS] LDR_TEMP[X] = ADIN CH[X]
        movf _X,W
        addlw CH
        movwf FSR
        movf INDF,W
        f@call RD@AD
        movwf PBP#VAR0
        movf PP7H,W
        movwf PBP#VAR0H
        bcf STATUS,0
        rlf _X,W
        addlw LDR_TEMP
        movwf FSR
        movf PBP#VAR0,W
        movwf INDF
        incf FSR,F
        movf PBP#VAR0H,W
        movwf INDF
F1_000069 equ $ ; IN [LASER_MIDI.BAS] IF LDR_TEMP[X] < LDR[X] THEN RXD = X + 1
        bcf STATUS,0
        rlf _X,W
        addlw LDR_TEMP
        movwf FSR
        movf INDF,W
        movwf PBP#VAR0
        incf FSR,F
        movf INDF,W
        movwf PBP#VAR0H
        bcf STATUS,0
        rlf _X,W
        addlw LDR
        movwf FSR
        movf INDF,W
        movwf PBP#VAR1
        incf FSR,F
        movf INDF,W
        movwf PBP#VAR1H
        movf PBP#VAR1H,W
        subwf PBP#VAR0H,W
        set@page CP@LB2
        btfss STATUS,0
        goto CP@LB2
        set@page BC@LL15
        btfss STATUS,2
        goto BC@LL15
        movf PBP#VAR1,W
        subwf PBP#VAR0,W
        set@page BC@LL15
        btfsc STATUS,0
        goto BC@LL15
CP@LB2
        incf _X,W
        movwf rxd
BC@LL15
CT@LB14
F1_000070 equ $ ; IN [LASER_MIDI.BAS] NEXT
        movlw 1
        addwf _X,F
        set@page FR@LB12
        btfss STATUS,0
        goto FR@LB12
NX@LB13
F1_000072 equ $ ; IN [LASER_MIDI.BAS] SEROUT PORTC.4, 16468,[DEC RXD]
        movlw PORTC
        movwf GEN
        movlw 16
        movwf GENH
        movlw 64
        movwf PP5H
        movlw 84
        movwf PP5
        clrf GEN3H
        clrf GEN3
        movlw 32
        movwf BPFH
        movf rxd,W
        f@call OUT@DECB
F1_000074 equ $ ; IN [LASER_MIDI.BAS] SERIN PORTC.3, 16468, 200, OVER,[MUSIC]
        movlw PORTC
        movwf GEN
        movlw 8
        movwf GENH
        movlw 64
        movwf PP5H
        movlw 84
        movwf PP5
        clrf GEN3H
        movlw 200
        movwf GEN3
        f@call SRIN@T
        set@page over
        btfss STATUS,0
        goto over
        movwf music
over
F1_000076 equ $ ; IN [LASER_MIDI.BAS] MUSIC = MUSIC - 48
        movlw 48
        subwf music,F
F1_000077 equ $ ; IN [LASER_MIDI.BAS] HSEROUT[DEC RXD, 10, DEC MUSIC, 10]
        movlw 4
        movwf BPFH
        movf rxd,W
        f@call OUT@DECB
        movlw 10
        f@call HRSOUT
        movf music,W
        f@call OUT@DECB
        movlw 10
        f@call HRSOUT
F1_000078 equ $ ; IN [LASER_MIDI.BAS] DELAYMS 150
        movlw 150
        f@call DL@MS
F1_000079 equ $ ; IN [LASER_MIDI.BAS] GOTO MAIN
        F@JUMP MAIN
F1_EOF equ $ ; LASER_MIDI.BAS
PB@LB17
        F@JUMP PB@LB17
__EOF
__config FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_ON&CP_ON&CPD_ON&BOREN_OFF&IESO_OFF&FCMEN_OFF
        end
