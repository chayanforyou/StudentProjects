
#define am porta.f0
#define pm porta.f1


unsigned short read_ds1307(unsigned short address){
  unsigned short r_data;
  I2C_Start();
  I2C_Write(0xD0);
  I2C_Write(address);
  I2C_repeated_Start();
  I2C_Write(0xD1);
  r_data = I2C_Read(0);
  I2C_Stop();
  if(address != 2)r_data = bcd2dec(r_data);
  return r_data;
}

void write_ds1307(unsigned short address,unsigned short w_data){
  if(address != 2)w_data = dec2bcd(w_data);
  I2C_Start();
  I2C_Write(0xD0);
  I2C_Write(address);
  I2C_Write(w_data);
  I2C_Stop();
}

void check_ap(){
  if(ap & 1){
    am = 0; pm = 1;
  }
  else {
    am = 1; pm = 0;
  }
}