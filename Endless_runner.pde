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

float gravity = 1;

float speed = 1;

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
  obsY = height - blockH * 2f;
  obsW = 100;
  obsH = 100; 
}

void draw()
{
  frameCount = 30;
   background(0);
  
  rect(playerX,playerY,playerW,playerH);
  
  rect(blockX,blockY,blockW,blockH);
 
   player();
   obstacle();
}

void player()
{
  if (keyPressed)
  {
    if (keyCode == UP && playerY + playerH > blockY - playerH / 4)
    {
      
      playerY-=200;
      gravity = 0;
 
    }
  }
  
  if(playerY + playerH <= blockY)
      {
        playerY += gravity;
        gravity += 0.3f;
      }
}

void obstacle()
{
  rect(obsX,obsY,obsW,obsH);
  obsX-=8;
}
