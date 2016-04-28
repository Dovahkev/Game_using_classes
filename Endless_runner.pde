 
PImage [] floor = new PImage[10];
float [] xx = new float [10];

float blockW, blockH, blockX, blockY, blockS;
float grav = 3;
 
int score;
int level;
int maxCoin = 100;

float theta = 0.0f;
float radius = 1;

float cx, cy;
 
Player player = new Player(250, 250, 5,50,100);

Coin[] coins = new Coin[100];

void setup()
{
 size(900,500);
 
 blockW = 100;
 blockH = blockW;
 blockY = height - blockW;
 blockS = 5;
 
 cx = width * 0.5f;
 cy = height * 0.5f;
 
  for (int i = 0; i < 10; i++)
  {
    floor[i] = loadImage("floor.png");
    xx[i] = blockW * i;
  }
  
   for (int i = 0; i < 100; i ++)
  {
    float y = cy + sin(theta) * radius;
    coins[i] = new Coin(width + 30 * i, y, 20,20 );
    theta += 0.5f;
    radius = 40;
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
  
  println(theta);
  
  background(0);
  
  ground();
  
  player.update();
  
  coin();
  
  GUI();
  
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

void GUI()
{
  float textCol = 255;
  textSize(50);
  fill(textCol);
  
  text("Score :" ,width * 0.1f, height * 0.95f);
  text(score,width * 0.3f, height * 0.95f);
}

void coin()
{
  
  for(int i = 0; i < 100; i++)
  {
    coins[i].update();
  }

}
