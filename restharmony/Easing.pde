class Easing
{
  float target = 0;
  float value = 0;
  float easing = 0.1;

  public Easing(float easing)
  {
    this.easing = easing;
  }

  public void update()
  {
    float delta = target - value;
    value = delta * easing;
  }

  public void ease(float target)
  {
    ease(target, this.easing);
  }

  public void ease(float target, float easing)
  {
    this.target = target;
    this.easing = easing;
  }
}