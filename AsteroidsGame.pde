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
  ship.move();
}
public void keyPressed()
  {
    if (key == 'a')
    {
      ship.turn(-15);
    }
    if (key == 'd')
    {
      ship.turn (15);
    }
    if (key == 'w')
    {
      ship.accelerate(2);
    }
    if (key == 's')
    {
      ship.accelerate(-2);
    }
    if (key == ' ' )
    {
      ship.setX((int)(Math.random()*500));
      ship.setY((int)(Math.random()*500));
      ship.setPointDirection((int)(Math.random()*360));
      ship.setDirectionX(0);
      ship.setDirectionY(0);
    }
}