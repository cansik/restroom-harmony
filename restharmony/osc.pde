final int OSC_PORT = 8000;

void setupOSC()
{
  oscP5 = new OscP5(this, OSC_PORT);
}

void oscEvent(OscMessage msg) {
  switch (msg.addrPattern()) {

  case "/restharmony/play":
    // do something
    break;
  }
}