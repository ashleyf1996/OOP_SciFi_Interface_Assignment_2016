//Class screen
class Screen
{
  //Boolean variable
  //To stop my bar going off the end of the screen
  boolean endOfScreen = false;

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
  text("Terminator", width/2-80, height/2);


           
   }

  //Screen two: display buttons, termiators eye and target
   void screen1()
   {
    
       background(0);
   // stroke(255,0,255);
      
      rect(a,b,400,10);
       
      
     int i=0;
     for(i=0;i<width;i+=5)
     {
       stroke(255,0,255);
       line(i,0,width/2,height/2);
     }
   
    //bar going across screen --> not currently drawn in sketch
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
       a=a+2;
     
     }
     
     textSize(15);
     //red button
     fill(255,0,0);
     ellipse(50,220,50,50);
     text("main screen", 50,190);
     
     //yellow button
     fill(255,255,0);
     text("Get Target profile", 45, 270);
     ellipse(50,300,50,50);
     
     //green button
     fill(0,255,0);
     text("Battery Life", 50, 350);
     ellipse(50,380,50,50);
     

   //Terminators eye
    stroke(255);          // Setting the outline (stroke) to black
    fill(0);
   
    noFill();
    ellipse(width/2,height/2,250,250);
    //Right hand side
    arc(width/2, height/2, 200, 200, -PI / 6, PI / 6);
    arc(width/2, height/2, 200, 200, PI / 2, 2 * PI / 2);
    
    //left hand side
     arc(width/2, height/2, 120, 120, -PI / 6, PI / 6);
     arc(width/2, height/2, 100, 100, PI / 2, 2 * PI / 2);

     
      //upper half
      fill(255,0,0);
      ellipse(width/2,height/2,70,70); 
      stroke(255);
      fill(255,255,255);
      
      textSize(34);
      text("TARGET - AQUIRED: Inside house", width/2-300,150);



   }
   void screen2()
   {
      println("Hey");
    fill(0);
    rect(200, 0, width-200, height);
   }
   
    void screen3()
   {
      println("yo");
    fill(0);
    fill(255,0,255);
    ellipse(300,400,50,50);
    rect(200, 0, width-200, height);
   }
     void screen4()
   {
      println("ashley is cool");
 
  
     //B82rz. TG4
    // rect(x+20,x+20,x+70,x*5);
    noFill();
    textSize(15);
    text("0%", 400,x+90);
    text("100%",width/2+50,x+90);
    textSize(30);
    text("+", width/2+110,X+155);
    //text("100",width/2+100 
    //rectangle not moving
    rect(width/2-200,x+100,x+250,x*3);
    stroke(255,0,255);
    fill(255);
    //rectangle moving
    rect(width/2-200,x+100,b,x*3);

    stroke(255);
    // battery: line 1 top
    line(width/2-220,x+70,width/2+100,x+70);
    //line 2: left
    line(width/2-220,x+190,width/2+100,x+190);
    ///line 3: bottom
    line(width/2-220,x+70,width/2-220,x+190);
    //line4:bottom half of right
    line(width/2+100,x+190,width/2+100,x+150);
    //line 5: top half of right
    line(width/2+100,x+70,width/2+100,x+110);
    //batter bit
    noFill();
    rect(width/2+100,x+100,50,50);
      
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
            text("Battery full", width/2+500,x+110);
        }
   }
   }