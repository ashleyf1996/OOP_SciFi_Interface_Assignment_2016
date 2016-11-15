//Declaring my global variables
int menu = 0;
boolean startUp = true;
PImage img;
float theta;
float x=20;
float y=20;
float a=20;
float b=0;
float c=20;



void setup()
{
  size(1350,700);
 background(0);
 
 //This loads my target image
  img = loadImage("terminator_pic.jpg");

}

//Creating my object of the class screen
Screen screen = new Screen();

  void mousePressed()
  {
      if(startUp == true)
        {
            menu = 1;
        }
        //The co-ordinanates of my circle (button)
         if(mouseX>25 && mouseX<75)
           {
             if(mouseY > 150 && mouseY<300)
               {
                   menu = 2;
               }
            }
  }//end mouse pressed function
  
  
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
       //background(0);
      screen.nextScreen();
      break;
    }
      case 2:
    {
      screen.screen3();
     
    }
  }
 
//image
image(img, width/2-25,height/2-25);
img.resize(50,50);

    
 }
 



 


    