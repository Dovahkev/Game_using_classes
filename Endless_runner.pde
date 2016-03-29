float playerX;
float playerY;
float playerH;
float playerW;

float blockY;
float blockW;
float blockH;

float move = 1;

float [] x = new float[9];


void setup()
{
  size(900,500);
  playerX = width * 0.5f;
  playerY = height * 0.5f;
  playerH = 50;
  playerW = 50;
  blockW = 100;
  blockH = 100;
  blockY = height-blockH;
}

void draw()
{
  frameCount = 30;
   background(0);
  
  rect(playerX,playerY,playerW,playerH);
  
  for(int i = 0; i < x.length; i++)
  {  
    x[i] = 100 * i;
    rect(x[i],blockY,blockW,blockH);
           
  }
 
}
