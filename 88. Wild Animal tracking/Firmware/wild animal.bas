;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F73

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
Declare Hserial_Baud = 115200     
Declare Hserial_RCSTA = %10010000
Declare Hserial_TXSTA = %00100100
Declare Hserial_Clear = On
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface  4 
DelayMS 1000
Cls

Dim location[40] As Byte
Dim temp[12] As Byte
Dim latitude[12] As Byte
Dim longitude[12] As Byte
Dim number[11] As Byte
Dim x As Byte
Dim time As Word
Clear

GSM_init:
  Print At 1,1, "Please wait.."
  DelayMS 10000
  Cls
  Print At 1,1, "Contacting GSM.."
  HSerOut ["AT", 13, 10]
  HSerIn 1000, GSM_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CNMI=1,2,0,0,0", 13, 10]
  DelayMS 1000
  Print At 2,1, "GSM OK.."
  DelayMS 1000
  GoSub Check_location
  
main:
  Print At 1,1, "La: ", Str latitude, " "
  Print At 2,1, "Lo: ", Str longitude, " "
  GoSub Receive_SMS
  Inc time
  If time = 300 Then time = 0 : GoSub Check_location 
GoTo main 

Check_location:
  Cls
  Print At 1,1, "GPS Power UP.."
  HSerOut ["AT+CGPSPWR=1", 13, 10]
  DelayMS 1000
recheck:
  Cls
  
  Print At 2,1, "Finding Location"
  HSerOut ["AT+CGPSSTATUS?", 13, 10]
  HSerIn 1000, recheck, [Wait("D Fix")]
  Cls
  Print At 2,1, "Location Fixed."
  DelayMS 1000
  Cls
  HSerOut ["AT+CGPSINF=0", 13, 10]
  HSerIn 100, error1, [Str location]
  
  HSerOut ["AT+CGPSRST=0", 13, 10]
  DelayMS 1000
  
  HSerOut ["AT+CGPSRST=1", 13, 10]
  DelayMS 1000
  
  HSerOut ["AT+CGPSPWR=0", 13, 10]
  DelayMS 1000
  
  For x = 15 To 25
    temp[x - 15] = location[x]
  Next
  latitude[0] = temp[0]
  latitude[1] = temp[1]
  latitude[2] = "."
  latitude[3] = temp[2]
  latitude[4] = temp[3]
  For x = 5 To 10
    latitude[x] = temp[x]
  Next
  latitude[11] = 0
  
  For x = 27 To 37
    temp[x - 27] = location[x]
  Next
  longitude[0] = temp[0]
  longitude[1] = temp[1]
  longitude[2] = "."
  longitude[3] = temp[2]
  longitude[4] = temp[3]
  For x = 5 To 10
    longitude[x] = temp[x]
  Next
  longitude[11] = 0
error1:
Return

Receive_SMS:
  HSerIn 1000, over, [Wait("+88"), Str number, Wait("LOCATION")]
  
  Cls
  Print At 2,1, "SMS Sending..."
  HSerOut ["AT+CMGF=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CMGS=",34, Str number, 34,13,10]
  DelayMS 1000  
  HSerOut ["Latitude:", Str latitude, 13]
  HSerOut ["Longitude:", Str longitude, 13]
  HSerOut ["https://www.google.com/maps/place/", Str latitude, ",",Str longitude, 13]
  HSerOut [$1A, 13, 10]
  DelayMS 5000
  Cls          
over:
Return
