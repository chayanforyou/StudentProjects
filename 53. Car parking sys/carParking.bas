;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72A

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 8
Declare LCD_RSPin PORTB.2
Declare LCD_ENPin PORTB.3
Declare LCD_DTPin PORTB.4
Declare LCD_Interface 4

Symbol motor = PORTC.0
Symbol gate = PORTC.1
Symbol slot1 = PORTC.2
Symbol slot2 = PORTC.3
Symbol slot3 = PORTC.4
Symbol slot4 = PORTC.5
Symbol slot5 = PORTC.6
Symbol slot6 = PORTC.7
TRISC = $fe

Print $fe, $40, 0,17,10,4,10,17,0,0   '0
Print $fe, $48, 1,2,20,9,2,20,8,0     '1

Dim pos As Byte
Dim car As Byte
Clear
Cls

main:
  Print At 1,1, "1  2  3  4  5  6"
  If slot1 = 0 Then 
    Print At 2,1, 1
    car.0 = 1
  Else 
    Print At 2,1, 0
    car.0 = 0
  EndIf
  If slot2 = 0 Then 
    Print At 2,4, 1
    car.1 = 1
  Else 
    Print At 2,4, 0
    car.1 = 0
  EndIf
  If slot3 = 0 Then 
    Print At 2,7, 1
    car.2 = 1
  Else 
    Print At 2,7, 0
    car.2 = 0
  EndIf
  If slot4 = 0 Then 
    Print At 2,10, 1
    car.3 = 1
  Else 
    Print At 2,10, 0
    car.3 = 0
  EndIf
  If slot5 = 0 Then 
    Print At 2,13, 1
    car.4 = 1
  Else 
    Print At 2,13, 0
    car.4 = 0
  EndIf
  If slot6 = 0 Then 
    Print At 2,16, 1
    car.5 = 1
  Else 
    Print At 2,16, 0
    car.5 = 0
  EndIf
  
  If gate = 0 Then 
    If car = 63 Then 
      Cls
      Print At 1,1, "Slot Full..."
      DelayMS 2000
      Cls
    Else 
      GoSub gate_active
    EndIf
  EndIf
GoTo main

gate_active:
 Cls
 Print At 1,1, "Gate Opened.."
 GoSub gate_open
 Print At 2,1, "Lock in 10Sec.."
 DelayMS 10000
 GoSub gate_lock
 Cls
GoTo main

gate_lock:
  For pos = 0 To 50  '0 degree
     motor = 1
     DelayUS 800
     motor = 0
     DelayUS 19200
  Next
Return

gate_open:
  For pos = 0 To 50  '180 degree
     motor = 1
     DelayUS 2000
     motor = 0
     DelayUS 18000
  Next
Return
