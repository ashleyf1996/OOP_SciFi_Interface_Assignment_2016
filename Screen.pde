class Screen
{
  boolean menu = true;
  boolean endOfScreen = false;
  float x=20;
float y=20;
float a=20;
float b=20;
  
   void introScreen()
   {
     background(0);
     fill(255,0,255);
      textSize(60);
      textAlign(LEFT);
      text("\nTERMINATOR", 400, 200);
      textSize(10);
     text("Click to see interface", 550, 350);
           
   }

   // line(x+10,y+10,x+10,height/3-10);
  // x++;
  

   void nextScreen()
   {
     
       background(0);
    stroke(255,0,255);
    line(x,y,x,height/3);
    line(x,height/3,width-20,height/3);
    line(width-20,height/3,x+width-40,20);
    line(x,y,width-20,y);
    stroke(255,255,255);
   line(a+10,b+10,a+10,height/3-10);
  
    if(a == width-30)
     {
       endOfScreen = true;
     }
     else if (a == 20 && endOfScreen == true)
     {
       endOfScreen = false;
     }
     if(endOfScreen == true)
     {
       a--;
     }
     else
     {
       a++;
     
     }
     
     fill(255,255,0);
     ellipse(50,300,50,50);
     fill(0,255,0);
     ellipse(50,380,50,50);
     fill(255,255,255);
     ellipse(50,460,50,50);
   }
  
 }