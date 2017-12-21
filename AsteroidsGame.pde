Spaceship ship; //your variable declarations here
//Asteroid [] rock = new Asteroid [25];
ArrayList <Asteroid> rock;
ArrayList <Bullet> bullets;
Stars [] nightSky = new Stars [200];

public void setup() 
{
  //your code here
  size (500, 500);
  ship = new Spaceship();
  bullets = new ArrayList <Bullet>();
  rock = new ArrayList <Asteroid>();
  //for (int i = 0; i < rock.length; i++)
  //{
  //  rock[i] = new Asteroid();
  //}
  for (int i = 0; i<10; i++)
  {
    rock.add(i, new Asteroid());
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
  for (int i = 0; i<bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
    for (int a = 0; a<rock.size(); a++)
    {
      if (bullets.get(i).collide(rock.get(a).getX(), rock.get(a).getY()) == true)
      {
        bullets.remove(i);
        rock.remove(a);
        break;
      }
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
  if (key == 'j' )
  {
    ship.setX((int)(Math.random()*500));
    ship.setY((int)(Math.random()*500));
    ship.setPointDirection((int)(Math.random()*360));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
  if (key == ' ')
  {
    bullets.add(new Bullet(ship));
  }
}