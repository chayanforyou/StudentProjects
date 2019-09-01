;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F72

Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ON, BOREN_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
Xtal 20

Symbol motor = PORTC.2
Output motor

Dim flex As Byte
Dim old_flex As Byte
Dim delay As Word
Dim index As Byte
Dim ON_time As Byte
Dim OFF_time As Byte

flex = 0 'normal 190
         'max 120

main:
  flex = ADIn 0
  DelayMS 10
  For delay = 0 To 20
    Select flex
      Case > 182 : index = 8 : Break
      Case > 180 : index = 7 : Break 
      Case > 175 : index = 6 : Break 
      Case > 170 : index = 5 : Break 
      Case > 165 : index = 4 : Break 
      Case > 160 : index = 3 : Break 
      Case > 155 : index = 2 : Break 
      Case > 150 : index = 1 : Break 
      Case > 145 : index = 0 : Break
    End Select
    GoSub select_speed
    motor = 1
    DelayMS ON_time
    motor = 0
    DelayMS OFF_time 
  Next 
GoTo main

select_speed:
  ON_time = LookUp index,[10,20,30,40,50,60,70,80,90]
  OFF_time = LookUp index,[90,80,70,60,50,40,30,20,10]
Return  
           
