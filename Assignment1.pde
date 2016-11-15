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
  img = loadImage("terminator_pic.jpg");

}
Screen screen = new Screen();

   void mousePressed()
  {
    if(startUp == true)
    {
      menu = 1;
    }
       if(mouseX>25 && mouseX<75)
       {
         if(mouseY > 150 && mouseY<300)
         {
           menu = 2;
         }
       }
  }
void draw()
{
  if(menu == 0)
  {
    screen.introScreen();
  }
  else if(menu==1)
  {
    background(0);
  screen.nextScreen();
  }
  else if(menu == 2)
  {
    println("Hey");
    fill(0);
    rect(200, 0, width-200, height);
    
  }
image(img, width/2-25,height/2-25);
img.resize(50,50);

    
 }
 



 


    