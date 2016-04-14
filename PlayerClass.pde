class Player extends GameObject
{
  
  Player(float playerX, float playerY )
  {
    super(250,250,50,100);
  }
  
  
  void update()
  {
    if (playerY + playerH <= height - blockH*0.5f)
    {
      playerY += gravity;
    }
 
    if (keys[' '] && playerY >= 0)
    {
      playerY -= pSpeed * 2f;
    }
    
    if (keys[RIGHT] && playerX + playerW <= width)
    {
      playerX+= pSpeed;
    }
    
     if (keys[LEFT] && playerX >= 0)
    {
      playerX-= pSpeed;
    }
         
  }
  
  void render()
  {
    rect(x,y,w,h);
  }
  
}
