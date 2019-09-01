;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 115200
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On
Cls

Symbol buzz = PORTC.3
Output buzz : Clear buzz

Dim gas As Byte
Dim number[11] As Byte

  DelayMS 1000
  Print At 1,1, "Please wait.."
  DelayMS 10000
  Cls
  Print At 1,1, "Contacting GSM.."
  DelayMS 5000
GSM_init:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=0,2,0,0,0", 13, 10]
  DelayMS 1000
  Print At 2,1, "GSM OK.."
  DelayMS 1000
  Cls


main:
  gas = ADIn 0
  gas = gas - 5
  Print At 1,1, " NH3 Toxic Gas: "
  Print At 2,6, Dec3 gas, " PPM"
  If gas > 50 Then buzz = 1 : GoSub send_SMS
  
  GoSub Receive_SMS
GoTo main 

Receive_SMS:
  HSerIn 1000, over, [Wait("+88"), Str number, Wait("GAS")]
  GoSub send_SMS
over:
Return  

send_SMS:
  Cls
  Print At 2,1, "SMS Sending..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGS=",34, Str number, 34,13,10]
  DelayMS 1000  
  HSerOut ["NH3 Toxic gas detector.", 13]
  HSerOut ["Gas: ", Dec3 gas, " PPM"]
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  Cls
  buzz = 0 
  Repeat
    gas = ADIn 0
    gas = gas - 5
    Print At 1,1, "Repositioning..."
    Print At 2,6, Dec3 gas, " PPM"
  Until gas < 20
GoTo main
