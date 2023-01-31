.\avrdude.exe "-C.\avrdude.conf"  -v -V -patmega328p -carduino "-P%1" -b57600 -D "-Uflash:w:%2:i"
