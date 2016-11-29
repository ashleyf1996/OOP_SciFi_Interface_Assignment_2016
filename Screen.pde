class Screen
{
  
  //To stop my bar going off the end of the screen
  boolean endOfScreen = false;
  //float ypos=120;
  boolean battery = false;
  boolean objective = false;
  boolean objectiveAnimation = true;
  float rect_y_pos = 130;
  float rect_x_pos=20;
  float battery_moving_line=0;
  float ang=0.05;
  float rect1=0;
  float rect2=700;
  int i=0;

   void introScreen()
   {
    
     //The front screen: the increasing circles to give terminator effect 
      pushMatrix();
      translate(trans1,trans2,trans3);
      noFill();
      stroke(0,0,255);
      ellipse(0,0,250,250);
      noFill();
      stroke(255,0,0);
      ellipse(2,2,200,200);
      popMatrix();
       trans3 = trans3 + 5; 
       
      //Writing in front of screen
      textSize(30);
      fill(255,255,255);
      text(" Terminator", width/2-80, height/2);
      textSize(20);
      text("click to see mission", width/2-90, height/2+20);
      textSize(50);
      text("Stanby...", width/2-90, height/2+300);
      fill(0);
      stroke(0);
      
     //Rectangles in the introo screen
     //Rectangle 1
     rect(0,0,width,rect1);
     rect1++;
     if(rect1 == height/2-120)
     {
       rect1--;
       
     }
     
     //Rectangle 2
     if(rect2 == height/2+120)
     {
       rect(0, height/2+120, width, 500);
     }
     else
     {
       rect(0, rect2, width, 200);
       rect2--;
    }
 }
 
 
  //Screen two: display buttons, termiators eye and target
   void screen1()
   {
     
     background(0);
     
     textSize(40);
     fill(131,29,222);
     text("MISSION 1: Assassinate target",width/2-300,height/2+100 );
     
     //Red beam
      for(i=width/2-300;i<width/2+280;i+=5)
       {
         stroke(255,0,0);
         line(i,0,width/2,height/2-120);
       }
       
      //wrting in beam
      textSize(34);
      fill(0,255,0);
      text("TARGET:                     Inside house", width/2-255,200);
     
     //rectangle scanning screen
      fill(250,255,3);
      textSize(20);
      text("Scanning target area...",scanning_rect,40);
      noFill();
      stroke(198,182,96);
      rect(scanning_rect,15,215,30);
      
     if(scanning_rect == width-30)
     {
       endOfScreen = true;
     }
     else if (scanning_rect == 20 && endOfScreen == true)
     {
       endOfScreen = false;
     }
     if(endOfScreen == true)
     {
       scanning_rect--;
     }
     else
     {
       scanning_rect=scanning_rect+2;
     }

     //red button 
     stroke(255,0,0);
     noFill();
     rect(55, 50, 170, 50);
     
    //Terminators eye
    stroke(255);          // Setting the outline (stroke) to black
    fill(0);
    ellipse(width/2,height/2-100,250,250);
    
    //Right hand side
    arc(width/2, height/2-100, 200, 200, -PI / 6-ang, PI / 6 -ang);
    arc(width/2, height/2-100, 200, 200, PI / 2-ang, 2 * PI / 2-ang);

     //left hand side
    arc(width/2, height/2-100, 120, 120, -PI / 6+ang, PI / 6+ang);
    arc(width/2, height/2-100, 100, 100, PI / 2+ang, 2 * PI / 2+ang);
    ang += 0.05;
    
    //upper half
    fill(255,0,0);
    ellipse(width/2,height/2-100,70,70); 
    stroke(255);
       
   if(battery == true)
       {
          textSize(15);
          fill(255);
          text("0%", 378,height-158);
          text("100%",width/2-50,height-158);
          textSize(30);
          fill(255);
          text("+", width/2+25,height-125);
           noFill();
    
          //rectangle not moving
          rect(width/2-300,height-150,rect_x_pos+250,rect_x_pos*3);
          //line at top
           stroke(255,243,5);
    
          //rectangle moving
          fill(255,243,5);
          rect(width/2-300,height-150,battery_moving_line,rect_x_pos*3);
          noFill();
          stroke(255,255,255);
          
          //white rectangle
          rect(width/2-320,height-180,rect_x_pos+300,rect_x_pos*5);
    
          //rectangle with + symbol
          rect(width/2,height-155,70,50);
       
         stroke(252,143,8);
         // battery: line 1 top
          noFill();
      
       //To fill battery bar
        if (keyPressed)
         {
             if (keyCode == RIGHT)
               {
                  battery_moving_line ++;
               }
         }
   
     //To stop the bar filling 
        if(battery_moving_line== rect_x_pos+250)
        {
          batteryEmpty = false;
          battery_moving_line--;
          text("FULLY CHARGED", width/2+125,height-150);
         }
       }
       
       
       //print data
       if(objective == true)
       {
         
        
         for (TableRow row : table.rows()) {
         String name = row.getString("name");
         Integer age = row.getInt("age");
         String objective = row.getString("objective");
         tar = new TargetData(name, age, objective);
         targets.add(tar);
         fill(0,255,0);
         textSize(10);
         text("NAME",40,130);
         text("AGE",40,280);
         text("STATUS",40,430);
         textSize(20);
         text(name, 85, 150);
         text(age, 85, 300);
         text(objective, 85, 450);
       }
     if(objectiveAnimation == true)
       {
         noFill();
         stroke(0,0,255);
         rect(40,50,200,420);
          for (int p = 140; p <450; p= p+150)
           {
                stroke(0,0,255);
                line(40, p, 80, p);
           }
          fill(0);
         noStroke();
          rect(30, rect_y_pos+100, 150, 300);
          rect_y_pos++;
        }
    }
     fill(0,255,0);
     textSize(20);
     text("Charge terminators battery", 35, 550);
     strokeWeight(1);
     stroke(255,255,255);
     fill(0,0,255);
     ellipse(50,600,50,50);
     fill(255, 0, 0);
     }
   
}