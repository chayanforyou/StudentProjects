Device = 16C72
Xtal 20
Config FOSC_HS, WDTE_OFF, PWRTE_OFF, CP_ALL, BOREN_OFF
Declare LCD_DTPin = PORTB.4 
Declare LCD_RSPin = PORTB.2
Declare LCD_ENPin = PORTB.3
Declare LCD_Interface = 4
Cls

Dim READAX  As Word
Dim READAY  As Word
Dim READAZ  As Word
Dim READX   As Word 
Dim READY   As Word
Dim READZ   As Word
Dim READT   As Word
Dim READT1  As Word
        
Symbol SDA = PORTC.6  ' I2C data pin. Pullup connection is required. You can change, according your board ports
Symbol SCL = PORTC.7  ' I2C clock pin. Pullup connection is required. You can change, according your board ports

Symbol W_DATA = $D0   'Used to perform a Write operation
Symbol R_DATA = $D1   'Used to perform a Read operation
Symbol PWR_M1 = $6B   'Power Management Register 1.This register allows the user to configure the power mode and clock source. It also provides a bit for resetting the entire device, and a bit for disabling the temperature sensor.
Symbol PWR_M2 = $6C   'Power Management Register 2.This register allows the user to configure the frequency of wake-ups in Accelerometer Only Low Power Mode. This register also allows the user to put individual axes of the accelerometer and gyroscope into standby mode.
Symbol CONF_R = $1A   'Congiguration Register.This register configures the external Frame Synchronization (FSYNC) pin sampling and the Digital Low Pass Filter (DLPF) setting for both the gyroscopes and accelerometers.
Symbol G_CONF = $1B   'Gyro Configuration Register.This register is used to trigger gyroscope self-test and configure the gyroscope full scale range.
Symbol A_CONF = $1C   'Accelerometer Congiguration Register. This register is used to trigger accelerometer self test and configure the accelerometer full scale range. This register also configures the Digital High Pass Filter (DHPF).
Symbol XA_MSB = $3B   'Read Register, Output of accelerometer X MSB 8-bit value.
Symbol XA_LSB = $3C   'Read Register, Output of accelerometer X LSB 8-bit value.
Symbol YA_MSB = $3D   'Read Register, Output of accelerometer Y MSB 8-bit value.
Symbol YA_LSB = $3E   'Read Register, Output of accelerometer Y LSB 8-bit value.
Symbol ZA_MSB = $3F   'Read Register, Output of accelerometer Z MSB 8-bit value.
Symbol ZA_LSB = $40   'Read Register, Output of accelerometer Z LSB 8-bit value.
Symbol TEMP_M = $41   'Read Register, Output of temperature MSB 8-bit value.
Symbol TEMP_L = $42   'Read Register, Output of temperature LSB 8-bit value.
Symbol XG_MSB = $43   'Read Register, Output of gyro X MSB 8-bit value.
Symbol XG_LSB = $44   'Read Register, Output of gyro X LSB 8-bit value.
Symbol YG_MSB = $45   'Read Register, Output of gyro Y MSB 8-bit value.
Symbol YG_LSB = $46   'Read Register, Output of gyro Y LSB 8-bit value.
Symbol ZG_MSB = $47   'Read Register, Output of gyro Z MSB 8-bit value.
Symbol ZG_LSB = $48   'Read Register, Output of gyro Z LSB 8-bit value.

I2COut SDA,SCL,W_DATA,PWR_M1,[%10000000]  'RESITER 6B CONFIG (PWR MANAGEMENT)  MPU6050 reset
DelayMS 100
I2COut SDA,SCL,W_DATA,PWR_M1,[%00000000]  'RESITER 6B CONFIG (PWR MANAGEMENT)  MPU6050 START
DelayMS 100
I2COut SDA,SCL,W_DATA,CONF_R,[%00000001]  'RESITER 1A CONFIG (FILTER CONFIG)
DelayMS 10
I2COut SDA,SCL,W_DATA,G_CONF,[%00000000]  'RESITER 1B CONFIG (GYRO CONFIG)
DelayMS 10
I2COut SDA,SCL,W_DATA,A_CONF,[%00010000]  'RESITER 1C CONFIG (ACCELERATOR CONFIG)
DelayMS 10

READI2C:
  I2CIn SDA,SCL,R_DATA,XA_MSB,[READAX.HighByte]  'The first 8 bits of 16-bit X Axis
  I2CIn SDA,SCL,R_DATA,XA_LSB,[READAX.LowByte ]  'The second 8 bits of 16-bit X Axis
  I2CIn SDA,SCL,R_DATA,YA_MSB,[READAY.HighByte]
  I2CIn SDA,SCL,R_DATA,YA_LSB,[READAY.LowByte ]
  I2CIn SDA,SCL,R_DATA,ZA_MSB,[READAZ.HighByte]
  I2CIn SDA,SCL,R_DATA,ZA_LSB,[READAZ.LowByte ]
  I2CIn SDA,SCL,R_DATA,TEMP_M,[READT.HighByte ]
  I2CIn SDA,SCL,R_DATA,TEMP_L,[READT.LowByte  ]
  I2CIn SDA,SCL,R_DATA,XG_MSB,[READX.HighByte]  
  I2CIn SDA,SCL,R_DATA,XG_LSB,[READX.LowByte ]
  I2CIn SDA,SCL,R_DATA,YG_MSB,[READY.HighByte]
  I2CIn SDA,SCL,R_DATA,YG_LSB,[READY.LowByte ]
  I2CIn SDA,SCL,R_DATA,ZG_MSB,[READZ.HighByte]
  I2CIn SDA,SCL,R_DATA,ZG_LSB,[READZ.LowByte ]
  READT1 = (READT / 340 + 37)-192
  DelayMS 100 
  Print At 1,1, "X=",SDec READAX,"     "
  Print At 1,9, "Y=",SDec READAY,"     " 
  Print At 2,1, "Z=",SDec READAZ,"     "
  Print At 2,9, "T=",SDec READT1,"     "       
GoTo READI2C
