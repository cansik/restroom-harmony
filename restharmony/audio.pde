import processing.sound.*;

ArrayList<Player> players = new ArrayList<Player>();

void setupAudio()
{
  players.add(new Player(new SoundFile(this, "track1.wav")));
  players.add(new Player(new SoundFile(this, "track2.wav")));
  players.add(new Player(new SoundFile(this, "track3.wav")));
}

void playAudio()
{
  for (Player p : players)
  {
    p.track.loop();
  }
}

void updatePlayer()
{
  for (Player p : players)
  {
    p.update();
  }
}