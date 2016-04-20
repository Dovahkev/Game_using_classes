
PImage[] floor = new PImage[10];
float [] xx = new float [10];

float blockW, blockH, blockX, blockY, blockS;
float grav = 3;

int score;
int level;
int maxCoin = 50;



  Player player1 = new Player(250, 250, 5,50,100);
  Coin coin1 = new Coin(900, 250, 20f,20f);



void setup()
{
 size(900,500);
 
 blockW = 100;
 blockH = blockW;
 blockY = height - blockW;
 blockS = 5;
 
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
  
  background(0);
  
  ground();
  
  player1.update();
  coin1.update();

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

