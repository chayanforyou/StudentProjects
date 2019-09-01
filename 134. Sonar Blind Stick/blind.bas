;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16C72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20
All_Digital = On

Symbol ECHO_F = PORTC.7
Symbol TRIG_F = PORTC.6
Symbol ECHO_L = PORTB.7
Symbol TRIG_L = PORTB.6
Symbol ECHO_R = PORTC.5
Symbol TRIG_R = PORTC.4
Symbol buzz_L = PORTA.1
Symbol buzz_R = PORTC.3
Output buzz_R : buzz_R = 0
Output buzz_L : buzz_L = 0

Dim range_F As Word
Dim range_L As Word
Dim range_R As Word


Output TRIG_F : Input ECHO_F
Output TRIG_L : Input ECHO_L
Output TRIG_R : Input ECHO_R

range_F = 0 : range_L = 0 : range_R = 0

main:
  PulsOut TRIG_F, 10, High   'front
  range_F = PulsIn ECHO_F, 1
  DelayMS 10
  range_F = (range_F * 2) / 58
  
  If range_F > 24 Then
    buzz_L = 0 : buzz_R = 0
  Else
    buzz_L = 1 : buzz_R = 1
  EndIf

  PulsOut TRIG_L, 10, High   'left
  range_L = PulsIn ECHO_L, 1
  DelayMS 10
  range_L = (range_L * 2) / 58
  
  If range_L > 24 Then
    buzz_L = 0 
  Else
    buzz_L = 1 
  EndIf
  
  PulsOut TRIG_R, 10, High   'right
  range_R = PulsIn ECHO_R, 1
  DelayMS 10
  range_R = (range_R * 2) / 58
  
  If range_R > 24 Then
    buzz_R = 0
  Else
    buzz_R = 1
  EndIf
  
GoTo main
