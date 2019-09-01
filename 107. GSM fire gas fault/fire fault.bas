;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal = 20
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4
Declare LCD_Lines 4
Cls

Symbol buzz = PORTC.4
Symbol motor = PORTC.5
Symbol fire = PORTC.1
Output buzz : Output motor
Input fire : Clear PORTC

Dim sms_f As Bit
Dim fire_f As Bit
Dim gas As Byte
Dim sms_c As Byte
Dim contact[11] As Byte
Dim contact1[11] As Byte

Str contact = "01710168887"
Str contact1 = "01913897271"
'Str contact = "01764180287"
'Str contact1 = "01685556681"

GSM_init:
  Cls
  Print At 1,1, "Contacting GSM.."
  DelayMS 10000
check:
  HSerOut ["AT", 13, 10]
  HSerIn 1000, check, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  Print At 2,1, "GSM OK."
  DelayMS 1000
  Cls

Print At 2,1, "Please wait.."
While gas > 58
  gas = ADIn 0
Wend
Cls

main:
  gas = ADIn 0
  Print At 1,3, "Gas: ", Dec3 gas, " PPM"
  If gas > 60 And sms_f = 1 Then GoSub Send_SMS
  If gas < 50 Then sms_f = 1
  
  If fire = 0 Then
    fire_f = 1
    If sms_f = 1 Then GoSub Send_SMS
  Else
    Print At 2,2, "  - No Fire - "
    sms_f = 1 : fire_f = 0
  EndIf  
GoTo main

Send_SMS:
  sms_f = 0
  buzz = 1
  motor = 1
  Cls
  Print At 1,1,"Sending SMS.."
  If fire_f = 1 Then Print At 2,1,"Fire Detected."
  If gas > 60 Then Print At 2,1,"Gas out of Range"
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 200
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str contact, 34,13,10]
  DelayMS 200 
  HSerOut ["You have a warning from WUB, Dhaka.", 13]
  If fire_f = 1 Then 
    HSerOut ["Fire detected.", 13]
  Else
    HSerOut ["No Fire detected.", 13]
  EndIf
  HSerOut ["Gas: ", Dec gas, " PPM"] 
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  
  HSerOut ["AT+CMGS="]
  DelayMS 200
  HSerOut [34, Str contact1, 34,13,10]
  DelayMS 200 
  If fire_f = 1 Then 
    HSerOut ["Fire detected.", 13]
  Else
    HSerOut ["No Fire detected.", 13]
  EndIf
  HSerOut ["Gas: ", Dec gas, " PPM"] 
  HSerOut [" at WUB, Plot - 13/A, Rd No. 5, Dhaka 1205.", 13]
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  buzz = 0
  motor = 0
  Cls
Return
