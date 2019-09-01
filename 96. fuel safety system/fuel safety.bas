;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
Declare Hserial_Baud = 9600
Declare Hserial_RCSTA = %10010000 
Declare Hserial_TXSTA = %00100100 
Declare Hserial_Clear = On
Cls

Symbol bike_key = PORTC.1
Symbol buzz = PORTC.4
Input bike_key : Output buzz
PORTC = 0

Dim number[11] As Byte
Dim adc As Byte
Dim old_oil As Float
Dim current_oil As Float
Dim flag As Bit
Clear

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
  
Str number = "01966535856" 

main:
  buzz = 0
  adc = ADIn 0
  If adc < 30 Then adc = 0
  If adc = 0 Or bike_key = 1 Then flag = 0
  If flag = 0 Then old_oil = (adc / 10) - 0.2 : flag = 1
  current_oil = adc / 10 
  Print At 1,1, "Fuel Theft Alarm"
  Print At 2,1, "Oil: ", Dec1 current_oil, " Litre  "
  If bike_key = 0 And current_oil < old_oil Then Send_SMS
  DelayMS 500
GoTo main

Send_SMS:
  buzz = 1
  Cls
  Print At 1,1,"Sending SMS.."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGS=",34, Str number, 34,13,10]
  DelayMS 1000 
  HSerOut ["Someone stolen your bike fuel.", 13] 
  HSerOut ["Current fuel: ", Dec1 current_oil, " Litre"] 
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  buzz = 0
  Cls
GoTo main

