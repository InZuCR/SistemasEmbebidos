#!/bin/bash
# Configuración inicial
sudo modprobe w1-gpio && sudo modprobe w1_therm
# Loop para tomar medidas
while true
do
 # Medición de la temperatura
 Temp=$(cat /sys/bus/w1/devices/28-3c01d0754a33/temperature)
 # Pasar la temperatura a °C y guardar el valor en el archivo
 echo $(date "+%Y%m%d %H%M%S")"," $(echo "scale=3; $Temp/1000" | bc) >> /home/pi/Documents/$(date "+%Y%m%d")_TEMPERATURA.csv
 # se esperan  10 segundos para volver a tomar la medida
 sleep 10
done



