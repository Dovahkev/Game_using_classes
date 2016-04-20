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
    ellipse(x,y,w,h);
    
    
    
  }
  
}
