Minim minim;
AudioPlayer track1;
AudioPlayer track2;
AudioPlayer track3;

void setupAudio()
{
  minim = new Minim(this);
  track1 = minim.loadFile("track1.wav", 2048);
  track2 = minim.loadFile("track2.wav", 2048);
  track3 = minim.loadFile("track3.wav", 2048);
}

void playAudio()
{
  track1.loop();
  track2.loop();
  track3.loop();
}