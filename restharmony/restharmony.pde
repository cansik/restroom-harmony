import oscP5.*;
import netP5.*;

OscP5 oscP5;

void setup()
{
  size(640, 480);

  textSize(30);
  textAlign(CENTER, CENTER);
  text("Restroom Harmony\nloading...", width/2, height/2);

  setupOSC();
  setupZeroConf();

  setupAudio();
  playAudio();

  noCursor();
}

void draw()
{
  background(0);

  if (address != null)
  {
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Restroom Harmony\n" + address.toString() + ":" + OSC_PORT, width/2, height/2);

    // credits
    textSize(20);
    textAlign(RIGHT, CENTER);
    text("bildspur.ch", width - 50, height - 50);
  }

  updatePlayer();
}

void stop()
{
  stopZeroConf();
}