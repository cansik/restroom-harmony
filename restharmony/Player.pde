class Player
{
  SoundFile track;
  Easing amp = new Easing(0.1);

  public Player(SoundFile track)
  {
    this.track = track;
  }

  public void amp(float value)
  {
    amp.ease(value);
  }

  public void update()
  {
    // update easings
    amp.update();

    // apply easings
    track.amp(amp.value);
  }
}