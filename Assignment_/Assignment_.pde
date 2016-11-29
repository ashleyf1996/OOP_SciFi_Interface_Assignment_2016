//Declaring my global variables

//menu refers to the switch statement
int menu = 0;
boolean startUp = true;
PImage img;
float scanning_rect=20;
float trans1;
float trans2;
float trans3;
Table table;
boolean batteryEmpty=true;

 
//an array list of type TargetData objects named targets
String[] words;
int i=0;

ArrayList<TargetData> targets= new ArrayList<TargetData>();  
  TargetData tar;

//sound
import ddf.minim.*;
Minim minim;
AudioPlayer player;


 
void setup()
{
     size(1350,700,P3D);
     background(0);
       
     minim = new Minim(this);
     player = minim.loadFile("kill.wav");
     table = loadTable("data.tsv", "header, tsv");
    
    //initialising the variables that translate my circles
    trans1 = width/2;
    trans2 = height/2;
    trans3 = 0;

    //This loads my target image
    img = loadImage("terminator_pic.jpg");
}

//Creating my object of the class screen
Screen screen = new Screen();
Radar radar = new Radar();
//target target = new target();

  
void mousePressed()
  {
    if(startUp == true)
      {
         menu = 1;
      }
            
    if(mouseX>25 && mouseX<75)
      {
        if(mouseY >270 && mouseY<630)
            {
              screen.battery ^= true;
            }
        }
            
    if(mouseX > 60 && mouseX < 210)
      {
        if(mouseY > 50 && mouseY < 100)
            {
              if( batteryEmpty==false)
                 {      
                    player.rewind();
                    player.play();
                    screen.objective ^= true;
                  }
             }
       }    
}
            
void draw()
{
    
  //Switch statement to switch between screens
  switch(menu)
  {
    case 0:
    {
      screen.introScreen();
      
       break;
    }
    
    case 1:
    {
      
      screen.screen1();
      radar.drawRadar();
      
      noFill();
      stroke(255,0,0);
      text("Get Target Profile",55,80);
      
      
      image(img, width/2-25,height/2-125);
      img.resize(50,50);
      if(frameCount%60==0)
          {
            if(batteryEmpty == true)
            {
              fill(255,0,0);
              textSize(32);
              text("WARNING BATTERY EMPTY",width/2+150, height - 200);
            }
          }
          
       if(batteryEmpty== false)
          {
                fill(255,0,0);
              text("BATTERY FULL", width/2+150,height-200);
          }
          break  ;
    }
  }
 
 }