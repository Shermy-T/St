#nhap vao thu vien
import I2C_LCD_driver
import time

#gan bien lcd theo thu vien
mylcd = I2C_LCD_driver.lcd()

#gan gia tri hien thi len lcd
line1 = "Dong 1 "
line2 = "Dong thu hai se scroll"

#Ham hien thi
def display_on_lcd(line1, line2):
      mylcd.lcd_display_string(line1,1)
      mylcd.lcd_display_string(line2,2)

#Vong lap xet do dai cua bien
while True:
  if len(line1) > 16: 
    for i in range(0, len(line1) - 16 + 1):
      mylcd.lcd_display_string(line1[i:i+16],1)
      time.sleep(1) #thoi gian delay scroll dong 1
  else:
      mylcd.lcd_display_string(line1,1)

  if len(line2) > 16:
    for i in range(0, len(line2) - 16 + 1):
      mylcd.lcd_display_string(line2[i:i+16],2)
      time.sleep(1) #thoi gian delay scroll dong 2
  else:
      mylcd.lcd_display_string(line2,2)
