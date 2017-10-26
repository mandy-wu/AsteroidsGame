class Spaceship extends Floater  
{ 
  public Spaceship()
  {
  corners = 4;  //the number of corners, a triangular floater has 3   
  int[] xS = {-8, 16, -8, -2};   
  int[] yS = {-8, 0, 8, 0};  
  xCorners = xS;
  yCorners = yS;
  int myColor = 255;   
  double myCenterX = 250;
  double myCenterY = 250; //holds center coordinates   
  double myDirectionX = myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
  double myPointDirection=10;
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
}