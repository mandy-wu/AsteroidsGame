class Asteroid extends Floater
{
  public Asteroid()
  {
  corners = 6;  
  int[] xS = {-11,7,13,6,-11,-5};   
  int[] yS = {-8,-8,0,10,8,0};  
  xCorners = xS;
  yCorners = yS;
  myColor = 100;   
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500); 
  myDirectionX = myDirectionY=0; 
  myPointDirection=0;
  myRotatingSpeed = (int)(Math.random()*21-10);
  }
  public boolean collide (int x, int y)
  {
    if (dist((int)myCenterX, (int)myCenterY, x, y) <=20)
      return true;
    else 
    {
      return false;
    }
  }
  public void move()
  {
    super.turn(myRotatingSpeed);
    super.move();
  }
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
  private int myRotatingSpeed;
}