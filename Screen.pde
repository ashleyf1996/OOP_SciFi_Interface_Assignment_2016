//Class screen
class Screen
{
  //Boolean variable
  //To stop my bar going off the end of the screen
  boolean endOfScreen = false;
 //float r=0;
  //Intro screen: to display terminator logo

   void introScreen()
   {
      pushMatrix();
         translate(a1,b1,c1);
     noFill();
      stroke(0);
      ellipse(0,0,250,250);
      noFill();
     stroke(255,0,255);
     ellipse(2,2,200,200);
     popMatrix();
     
        c1 = c1 + 2; 
     textSize(30);
       fill(255,255,255);
      text("Terminator", width/2-80, height/2);
            
   }

  //Screen two: display buttons, termiators eye and target
   void screen1()
   {
    
       background(0);
       //beam
       stroke(255,0,0);
      
      int i=0;
        
        for(i=width/2-300;i<width/2+280;i+=5)
       {
       stroke(255,0,0);
       
         line(i,0,width/2,height/2-120);
       }
         //wrting in beam
      textSize(34);
      fill(0,255,0);
      text("TARGET:                     Inside house", width/2-255,200);
    //bar going across screen --> not currently drawn in sketch
  /*  if(a == width-30)
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
       a=a+2;
     
    */
  
     //yellow button
     textSize(15);
     fill(0,0,255);
     text("Charge terminators battery", 40, 550);
     ellipse(50,600,50,50);
     
     

   //Terminators eye
    stroke(255);          // Setting the outline (stroke) to black
    fill(0);
   ellipse(width/2,height/2-100,250,250);
    //Right hand side
    arc(width/2, height/2-100, 200, 200, -PI / 6, PI / 6);
    arc(width/2, height/2-100, 200, 200, PI / 2, 2 * PI / 2);
    
    //left hand side
     arc(width/2, height/2-100, 120, 120, -PI / 6, PI / 6);
     arc(width/2, height/2-100, 100, 100, PI / 2, 2 * PI / 2);

     
      //upper half
      fill(255,0,0);
      ellipse(width/2,height/2-100,70,70); 
      stroke(255);


   }
  
    void screen3()
   {
      println("yo");
      //the background

  
     //BATERY

    textSize(15);
    fill(255);
    text("0%", 378,height-158);
    text("100%",width/2-50,height-158);
    textSize(30);
    fill(255);
    text("+", width/2+25,height-125);
   noFill();
    //rectangle not moving
   ///  fill(255,0,255);
    rect(width/2-300,height-150,x+250,x*3);
    stroke(255,0,255);
    //fill(255);
    //rectangle moving
    fill(255,0,255);
    rect(width/2-300,height-150,b,x*3);
    
    noFill();
    stroke(255,255,255);
    //white rect
    rect(width/2-320,height-180,x+300,x*5);
    
    //bit at end
    rect(width/2,height-155,70,50);
    

    fill(255,0,255);
     stroke(255,0,255);
    // battery: line 1 top

    //batter bit
    noFill();
   // rect(width/2+100,x+100,50,50);
      
   //To fill battery bar
    if (keyPressed)
       {
         if (keyCode == RIGHT)
           {
            b ++;
            }
       }
          
       
   //To stop the bar filling 
     if(b== x+250)
        {
            b--;
         batteryEmpty = false;
           
            text("Battery full", width/2+125,height-150);
            
        }
  }
   
}

        
 