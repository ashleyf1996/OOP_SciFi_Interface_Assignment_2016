boolean menu = false;

PImage img;





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
image(img, 0, 0);
  }

 
   
}


 


    