
Symbol DHT11_pin1 = PORTA.2
Symbol DHT11_dir1 = TRISA.2
Symbol DHT11_pin2 = PORTA.5
Symbol DHT11_dir2 = TRISA.5

Dim dht[32] As Byte
Dim haut As Byte
Dim bas As Byte
Dim temp1 As Byte
Dim humidity1 As Byte
Dim temp2 As Byte
Dim humidity2 As Byte
Dim x As Byte

GoTo main

read_DHT11_1:
  DHT11_dir1 = 0   
  DHT11_pin1 = 0 : DelayMS 25  
  DHT11_pin1 = 1 : DelayUS 40  

  haut = PulsIn DHT11_pin1, 1  
  If haut < 15 Then GoTo read_DHT11_1

  For x = 31 To 0 Step -1  
    dht[x] = PulsIn DHT11_pin1, 1
  Next x

  For x = 31 To 0 Step -1
    If dht[x] > 9 Then
      dht[x] = 1 
    Else
      dht[x] = 0
    EndIf
  Next x

  humidity1 = dht[31] * 128 + dht[30] * 64 + dht[29] * 32 + dht[28] * 16 + dht[27] * 8 + dht[26] * 4 + dht[25] * 2 + dht[24] * 1
  temp1 = dht[15] * 128 + dht[14] * 64 + dht[13] * 32 + dht[12] * 16 + dht[11] * 8 + dht[10] * 4 + dht[9] * 2 + dht[8] * 1 
Return

read_DHT11_2:
  DHT11_dir2 = 0   
  DHT11_pin2 = 0 : DelayMS 25  
  DHT11_pin2 = 1 : DelayUS 40  

  haut = PulsIn DHT11_pin2, 1  
  If haut < 15 Then GoTo read_DHT11_2

  For x = 31 To 0 Step -1  
    dht[x] = PulsIn DHT11_pin2, 1
  Next x

  For x = 31 To 0 Step -1
    If dht[x] > 9 Then
      dht[x] = 1 
    Else
      dht[x] = 0
    EndIf
  Next x

  humidity2 = dht[31] * 128 + dht[30] * 64 + dht[29] * 32 + dht[28] * 16 + dht[27] * 8 + dht[26] * 4 + dht[25] * 2 + dht[24] * 1
  temp2 = dht[15] * 128 + dht[14] * 64 + dht[13] * 32 + dht[12] * 16 + dht[11] * 8 + dht[10] * 4 + dht[9] * 2 + dht[8] * 1 
Return

