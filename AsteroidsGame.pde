Spaceship ship; //your variable declarations here
//Asteroid [] rock = new Asteroid [25];
ArrayList <Asteroid> rock;
Stars [] nightSky = new Stars [200];
public void setup() 
{
  //your code here
  size (500,500);
  ship = new Spaceship();
  rock = new ArrayList <Asteroid>();
  //for (int i = 0; i < rock.length; i++)
  //{
  //  rock[i] = new Asteroid();
  //}
  for(int i = 0; i<10; i++)
  {
    rock.add(i,new Asteroid());
  }
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
  //for (int i = 0; i<rock.length; i++)
  //{
  //  rock[i].show();
  //  rock[i].move();
  //  rock[i].accelerate(.1);
  //}
  for (int i = 0; i<rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    rock.get(i).accelerate(.01);
    if (rock.get(i).collide(ship.getX(), ship.getY())==true)
    {
      rock.remove(i);
      //System.out.println("Crash");
    }
  }
  
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