import processing.sound.*;

SoundFile[] tracks = new SoundFile[3];

void setupAudio()
{
  tracks[0] = new SoundFile(this, "track1.wav");
  tracks[1] = new SoundFile(this, "track2.wav");
  tracks[2] = new SoundFile(this, "track3.wav");
}

void playAudio()
{
  for (SoundFile track : tracks)
  {
    if (track == null)
      continue;

     track.loop();
  }
}