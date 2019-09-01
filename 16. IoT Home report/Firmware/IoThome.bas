;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C73B

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

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

Symbol sound_sense = PORTC.0
Symbol vibrate_sense = PORTC.1
Symbol relay_1 = PORTC.2
Symbol relay_2 = PORTC.3
Symbol relay_3 = PORTC.4
Symbol relay_4 = PORTC.5
Input sound_sense : Input vibrate_sense
Output relay_1 : Output relay_2
Output relay_3 : Output relay_4

Dim rly1_status As Byte 
Dim rly2_status As Byte 
Dim rly3_status As Byte 
Dim rly4_status As Byte
Dim msg[4] As Byte
Dim temp As Byte
Dim x As Word

Dim g_value As Byte
Dim v_value As Byte
Dim s_value As Byte

Cls
PORTC = $ff

GSM_init:
  Print At 1,1, "Please wait.."
  DelayMS 5000
  DelayMS 5000
  DelayMS 5000
  DelayMS 5000
  Cls
  Print At 1,1, "Contacting GSM.."
  HSerOut ["AT", 13, 10]
  HSerIn 100, GSM_init, [Wait("OK")]
  HSerOut ["ATE0", 13, 10]
  DelayMS 1000
  HSerOut ["AT+CGATT=1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+SAPBR=3,1,",34,"CONTYPE",34,",",34,"GPRS",34, 13, 10]
  DelayMS 1000
  HSerOut ["AT+SAPBR=1,1", 13, 10]
  DelayMS 1000
  HSerOut ["AT+HTTPINIT", 13, 10]
  DelayMS 1000
  Cls
  Print At 1,1, "GSM OK.."
  DelayMS 2000
  Cls 
  
Clear

While 1 = 1

  Print At 1,16, Dec1 temp
  Inc temp
  If temp = 10 Then temp = 0
  
  GoSub read_server  
  GoSub write_server 
Wend

check_sensor:
  g_value = ADIn 0
  If vibrate_sense = 0 Then 
    v_value = 1
  Else
    v_value = 0
  EndIf 
  If sound_sense = 0 Then 
    s_value = 1
  Else
    s_value = 0
  EndIf
  Print At 1,1, "Smoke: ", Dec g_value, " "
  Print At 2,1, "Vibr:", Dec1 v_value,"   ", "Sound:", Dec1 s_value
Return

delay:
  For x = 0 To 300
    GoSub check_sensor
    DelayMS 10
  Next
Return

read_server:
  Clear msg
  HSerOut ["AT+HTTPPARA=",34,"URL",34,",",34,"http://joyanto.com/eeelabs/update.php",34, 13, 10]
  GoSub delay
  HSerOut ["AT+HTTPACTION=0", 13, 10]
  GoSub delay
  HSerOut ["AT+HTTPREAD", 13, 10]
  HSerIn 2000, over1, [Wait("4",13, 10), Str msg]
  Print At 1,11, Str msg

  If msg[0] = "0" Then relay_1 = 1
  If msg[1] = "0" Then relay_2 = 1
  If msg[2] = "0" Then relay_3 = 1
  If msg[3] = "0" Then relay_4 = 1
  If msg[0] = "1" Then relay_1 = 0
  If msg[1] = "1" Then relay_2 = 0
  If msg[2] = "1" Then relay_3 = 0
  If msg[3] = "1" Then relay_4 = 0
  
over1:
Return

write_server:
  HSerOut ["AT+HTTPPARA=",34,"URL",34,",",34,"http://joyanto.com/eeelabs/connect.php?g_value=",Dec g_value,"&v_value=",Dec v_value,"&s_value=",Dec s_value,34, 13, 10]
  GoSub delay
  HSerOut ["AT+HTTPACTION=0", 13, 10]
  GoSub delay
Return

