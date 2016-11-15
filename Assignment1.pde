boolean menu = false;

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
       menu = true;
  }
void draw()
{
  if(menu == false)
  {
    screen.introScreen();
  }
  else
  {
screen.nextScreen();
image(img, width/2-25,height/2-25);
img.resize(50,50);

  }   
}


 


    