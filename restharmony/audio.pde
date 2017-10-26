import processing.sound.*;

SoundFile track1;
SoundFile track2;
SoundFile track3;

void setupAudio()
{
  track1 = new SoundFile(this, "track1.wav");
  track2 = new SoundFile(this, "track2.wav");
  track3 = new SoundFile(this, "track3.wav");
}

void playAudio()
{
  track1.play();
  track1.stop();

  track2.play();
  track2.stop();

  track3.play();
  track3.stop();

  track1.loop();
  track2.loop();
  track3.loop();
}