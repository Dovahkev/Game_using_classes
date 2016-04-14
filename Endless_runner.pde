
float blockX;
float blockY;
float blockW;
float blockH;

float obsX;
float obsY;
float obsW;
float obsH;

float coinX;
float coinY;
float coinW;
float coinH;


float pSpeed = 5;

float speed = 5;
float blockS = 5;
float gravity = 3;

PImage[] floor = new PImage[10];
float [] xx = new float [10];

void setup()
{
  
  size(900,500);

  ship = new Ship(250,250); 
  gameObjects.add(Ship);
  
  blockW = 100;
  blockH = 100;
  blockX = 100;
  blockY = height- blockH;
 
  obsX = width;
  obsY = height - 150;
  obsW = 50;
  obsH = 50; 
  
  coinW = 20;
  coinH = 20;
  coinX = width;
  coinY = height * 0.5f;
  
  for (int i = 0; i < 10; i++)
  {
    floor[i] = loadImage("floor.png");
    xx[i] = blockW * i;
  }
}

boolean[] keys = new boolean[2000];


void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}


void draw()
{
  frameCount = 30;
  
  background(0);
  
   ground();
   player();

   obstacle();
   coin();
   
}

void ground()
{
   for (int i = 0; i < xx.length; i++)
  {
    image(floor[i],xx[i],blockY);
    xx[i]-= blockS;
    
    if (xx[i] + blockW <= 0)
    {
      xx[i] = width;
    }
  }
  
  
}

void obstacle()
{
  rect(obsX,obsY,obsW,obsH);
  obsX-=speed;
}

void coin()
{
  ellipse(coinX,coinY,coinW,coinH);
  coinX -= speed;
}
