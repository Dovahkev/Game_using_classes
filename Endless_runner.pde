 
PImage [] floor = new PImage[10];
PImage [] background = new PImage[2];
PImage [] sky = new PImage[2];
PImage playerSPR;
float [] xx = new float [10];
float []bg = new float [2];
float [] skyx = new float[2];

float blockW, blockH, blockX, blockY, blockS;
float grav = 3;
 
int score;
int level;
int maxCoin = 100;

float theta = 0.0f;
float radius = 1;

float cx, cy;

float sunX,sunY,sunS;
int speed = 5;
int bgSpeed = 2;
int fgSpeed = 7;
 
Player player = new Player(250, 250, 5,70,90);

Coin[] coins = new Coin[100];

void setup()
{
  
 size(900,500);
 
 blockW = 100;
 blockH = blockW;
 blockY = height - blockW;
 blockS = 5;
 
 sunX = width;
 sunY = blockY;
 sunS = 1;
 
 cx = width * 0.5f;
 cy = height * 0.5f;
 
 playerSPR = loadImage("characterPNG.png");
   
  for (int i = 0; i < 2; i ++)
 {
   background[i] = loadImage("background.png");
   bg[i] = width * i;
   
 } 
 
 for (int i = 0; i < 2; i ++)
 {
   sky[i] = loadImage("sky.png");
   skyx[i] = width * i;
   
 } 
   
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
  
  sprites();
  
  player.update();
  
  coin();
  
  GUI();
  
}

void sprites()
{
    for (int k = 0; k < skyx.length; k++)
    {
      image(sky[k],skyx[k],0);
      skyx[k] -= bgSpeed;
      
      if(skyx[k] + width <= 0)
      {
        skyx[k] = width;
      }
    }
  
  
  //sun
    ellipse(sunX,sunY,250,250);
    
    if(sunX <= 0 - width)
    {
      sunX = width + 250;
    }
  
  //drawing background, some parralax scrolling
      for (int j = 0; j < bg.length; j++)
    {
      image(background[j],bg[j],0);
      bg[j] -= bgSpeed;
      
      if(bg[j] + width <= 0)
      {
        bg[j] = width;
      }
    }
  
  //drawing middle
   for (int i = 0; i < xx.length; i++)
  {
    image(floor[i],xx[i],blockY);
    xx[i]-= blockS;
    
    if (xx[i] + blockW <= 0)
    {
      xx[i] = width;
    }
  }

  
  sunX -= sunS;
}

void GUI()
{
  float textCol = 255;
  textSize(30);
  fill(textCol);
  
  text("Score :" ,width * 0.1f, height * 0.1f);
  text(score,width * 0.3f, height * 0.1f);
}

void coin()
{
  
  for(int i = 0; i < 100; i++)
  {
    coins[i].update();
  }
}
