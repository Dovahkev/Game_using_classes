float playerX;
float playerY;
float playerH;
float playerW;
float blockX;
float blockY;
float blockW;
float blockH;



void setup()
{
  size(900,500);
  playerX = width * 0.5f;
  playerY = height * 0.5f;
  playerH = 50;
  playerW = 50;
  blockW = 100;
  blockY = 100;
  blockX = width - blockW;
  blockY = height - blockH;
  
}

void draw()
{
  rect(playerX,playerY,playerW,playerH);
  
  for(int i = 0; i < 9; i++)
  {
  rect(blockX * i, blockY * i, blockW, blockH);
  }
}
