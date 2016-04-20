class Player
{
  float x, y, s, w, h;

  Player(float posX, float posY, float pSpeed, float pWidth, float pHeight)
    {
      x = posX;
      y = posY;
      s = pSpeed;
      w = pWidth;
      h = pHeight;
    }
    
    void update()
    {
      noStroke();
      fill(0,0,255);
      
    if(y + h <= height - blockH * 0.5f)
    {
      y += grav;
    }
      
    if (keys[' '] && y >= 0)
    {
      y -= s * 2f;
    }
    
    if (keys[RIGHT] && x + w <= width)
    {
      x+= s;
    }
    
     if (keys[LEFT] && x >= 0)
    {
      x-= s;
    }
    
    rect(x,y,w,h);
    
    }
}
