import oscP5.*;
import netP5.*;

import ddf.minim.*;
import ddf.minim.effects.*;

OscP5 oscP5;

void setup()
{
  //size(640, 480, P2D);
  fullScreen(P2D);

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
}

void stop()
{
  stopZeroConf();
}