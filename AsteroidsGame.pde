Spaceship ship; //your variable declarations here
public void setup() 
{
  //your code here
  size (500,500);
  ship = new Spaceship();
}
public void draw() 
{
  //your code here
  ship.show();
  //ship.move();
  //public void keyTyped()
  //{
  //  if (key == 'a')
  //  {
  //    ship.myDirectionX(10);
  //  }
  //}
}