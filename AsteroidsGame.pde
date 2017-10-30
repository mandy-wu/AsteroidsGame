Spaceship ship; //your variable declarations here
Stars [] nightSky = new Stars [200];
public void setup() 
{
  //your code here
  size (500,500);
  ship = new Spaceship();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Stars();
  }
}

public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  ship.show();
  //ship.move();
  public void keyPressed()
  {
    if (key == 'a')
    {
      ship.setX(Math.random()*400);
    }
  }
}