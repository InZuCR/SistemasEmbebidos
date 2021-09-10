// #!/bin/c

// importo las librerías
#include <wiringPi.h>


int main()
{
// Configuración de inicio
 wiringPiSetup();
 pinMode(0,OUTPUT);
// loop infinito para prender y apagar
 while(1)
  {
   digitalWrite(0,HIGH);
//   delay(500);
   digitalWrite(0,LOW);
//   delay(500);
  }
}
