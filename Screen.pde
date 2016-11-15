
class Screen
{
  boolean menu = true;
  boolean endOfScreen = false;

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
   // stroke(255,0,255);

   
  
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
     textSize(15);

     fill(255,255,0);
     text("Get Target profile", 45, 270);
    
     ellipse(50,300,50,50);
     fill(0,255,0);
     text("Battery Life", 50, 350);
     ellipse(50,380,50,50);
     fill(255,255,255);
      text("Weapons", 50, 430);
     ellipse(50,460,50,50);
     

     
       float xy=30;
 
    stroke(255);          // Setting the outline (stroke) to black
    fill(0);
   
    noFill();
    ellipse(width/2,height/2,250,250);
    //rhs
    arc(width/2, height/2, 200, 200, -PI / 6, PI / 6);
    arc(width/2, height/2, 200, 200, PI / 2, 2 * PI / 2);
    
    //lhs
     arc(width/2, height/2, 120, 120, -PI / 6, PI / 6);
     arc(width/2, height/2, 100, 100, PI / 2, 2 * PI / 2);
     
      //upper half
      fill(255,0,0);
      ellipse(width/2,height/2,70,70); 
      stroke(255);
      fill(255,255,255);
      textSize(34);
      text("TARGET - AQUIRED: Inside house", width/2-200,height/2+200);


  
 
    // rect(x+20,x+20,x+70,x*5);
    noFill();
    text("0%", width/2-200,x+110);
    text("100%",width/2+200,x+110);
    //text("100", 
    //rectangle not moving
       rect(width/2-200,x+120,x+400,x*2);
         stroke(255,0,255);
         fill(255);
      //rectangle moving
      rect(width/2-200,x+120,b,x*2);
        if (keyPressed)
       {
          if (keyCode == LEFT)
            {
             
               b ++;
            }
            
       
            
       }
       
   
     if(b== x+400)
           {
             b--;
           
           }
  
           //  text("Battery full", width/2+300,x+110);
           
            
     
   }
}