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

float pSpeed = 10;

float speed = 8;

float [] x = new float[20];


void setup()
{
  size(900,500);
  playerX = width * 0.25f;
  playerY = height * 0.5f;
  playerH = 50;
  playerW = 50;
  
  blockW = width;
  blockH = 100;
  blockX = 0;
  blockY = height- blockH;
 
  obsX = width;
  obsY = height - 150;
  obsW = 50;
  obsH = 50; 
  
  coinW = 20;
  coinH = 20;
  coinX = width;
  coinY = height * 0.5f;
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
  
  rect(playerX,playerY,playerW,playerH);
  
  rect(blockX,blockY,blockW,blockH);
  rect(blockX,blockY,blockW, blockH * 0.5f);
 
   player();
   obstacle();
   coin();
}

void player()
{
 
  if (keyPressed)
  {
    if (key == ' ')
    {
      playerY -= pSpeed;
    }
    
    if (key == 'd')
    {
      playerX+= pSpeed;
    }
  }
  
  playerY += 3f;
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
