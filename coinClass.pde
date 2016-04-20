class Coin
{
  float x,y,w,h;
  
  Coin(float cX, float cY, float cW, float cH)
  {
    x = cX;
    y = cY;
    w = cW;
    h = cH;
  }
  
  void update()
  {
    noStroke();
    ellipse(x,y,w,h);
    fill(255,255,0);
    
    x-= 5;
    
    
    
  }
  
}
