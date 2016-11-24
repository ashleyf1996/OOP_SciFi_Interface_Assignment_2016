class Radar
{
   float x, y, thetha = 0;
float cx=670;
float cy= 200;
float radius = 200;
boolean changeDirection = false;
 
  void drawRadar()
  {
   x = cx - sin(thetha) * radius;
  y = cy - cos(thetha) * radius;
  stroke(0, 255, 0);
  line(cx,cy, x, y);
  
  
  fill(255,0,0);
  smooth();
      if(changeDirection == false)
  {
    thetha += 0.01f;
    if(thetha > 1)
    {
      changeDirection = true;
    }
  }
  else if(changeDirection == true)
  {
    thetha -= 0.01f;
        if(thetha < -1)
    {
      changeDirection = false;
    }
  }
  

     
    
  } 
  
    
    
  
}