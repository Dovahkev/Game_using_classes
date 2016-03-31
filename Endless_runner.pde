float playerX;
float playerY;
float playerH;
float playerW;

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
  playerX = width * 0.25f;
  playerY = height * 0.5f;
  playerH = 100;
  playerW = 50;
  
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



void player()
{ 
    rect(playerX,playerY,playerW,playerH);
    
    if (playerY + playerH <= height - blockH*0.5f)
    {
      playerY += gravity;
    }
 
    if (keys[' '] && playerY >= 0)
    {
      playerY -= pSpeed * 2f;
    }
    
    if (keys[RIGHT] && playerX + playerW <= width)
    {
      playerX+= pSpeed;
    }
    
     if (keys[LEFT] && playerX >= 0)
    {
      playerX-= pSpeed;
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
