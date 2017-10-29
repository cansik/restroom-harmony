//HCSR04
import processing.io.*;
import java.lang.*;

class UltraSonicSensor
{
  int pinTrigger;
  int pinEcho;

  long timeout = 10 * 1000000;

  public UltraSonicSensor(int pinTrigger, int pinEcho)
  {
    this.pinTrigger = pinTrigger;
    this.pinEcho = pinEcho;

    // setup pin mode
    GPIO.pinMode(pinEcho, GPIO.INPUT);
    GPIO.pinMode(pinTrigger, GPIO.OUTPUT);
  }

  public float distance()
  {
    // setup time
    long timeoutTime = System.nanoTime();

    long startTime = System.nanoTime();
    long endTime = System.nanoTime();

    // set trigger
    GPIO.digitalWrite(pinTrigger, GPIO.HIGH);
    GPIO.digitalWrite(pinTrigger, GPIO.LOW);

    // save StartTime
    while (GPIO.digitalRead(pinEcho) == 0 
      && (System.nanoTime() - timeoutTime) < timeout)
      startTime = System.nanoTime();

    // save time of arrival
    while (GPIO.digitalRead(pinEcho) == 1 
      && (System.nanoTime() - timeoutTime) < timeout)
      endTime = System.nanoTime();

    // timout
    if ((System.nanoTime() - timeoutTime) > timeout)
      return 0;

    // calculate the result
    float elapsed = (endTime - startTime) / 1000000;
    return (elapsed * 34.029) / 2;
  }
}