#!/bin/bash
# Configuro puerto 11 como  puerto de salida
echo "17" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio17/direction

#Loop para subir y bajar el puerto salir con CTRL+C
while true
do
 echo "1" > /sys/class/gpio/gpio17/value
# sleep 1
 echo "0" > /sys/class/gpio/gpio17/value
# sleep 1
done


