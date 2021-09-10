#!/bin/python3
# importo las librerías
import wiringpi
import time
# configuro el setup
wiringpi.wiringPiSetup()
#  Configurar pin 1 como salida (1) , se pone 0 si es entrada
wiringpi.pinMode(0, 1)

# Loop para prender y apagar el puerto
while True:
    wiringpi.digitalWrite(0, 1)
#    time.sleep(1)
    wiringpi.digitalWrite(0, 0)
#    time.sleep(1)


