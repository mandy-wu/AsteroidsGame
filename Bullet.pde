class Bullet extends Floater
{
 public Bullet(Spaceship ship)
 {
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500); 
  myPointDirection=0;
  double dRadians =myPointDirection*(Math.PI/180);
  myDirectionX = 5 * Math.cos(dRadians);
  myDirectionY = 5 * Math.sin(dRadians);
  
 }
}