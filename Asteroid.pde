class Asteroid extends Floater
{
  public Asteroid()
  {
  corners = 6;  
  int[] xS = {2,-3,1,2,-6,-3,4,5};   
  int[] yS = {-4,5,5,6,4,2,-4,-5};  
  xCorners = xS;
  yCorners = yS;
  myColor = 100;   
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500); 
  myDirectionX = myDirectionY=0; 
  myPointDirection=10;
  myRotatingSpeed = (int)(Math.random()*41-20);
  }
  public void move()
  {
    turn(myRotatingSpeed);
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