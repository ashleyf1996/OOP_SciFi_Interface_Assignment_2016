boolean menu = true;
void setup()
{
  size(1350,700);
  
Screen screen;
screen = new Screen();

screen.introScreen();
screen.menu();

screen.nextScreen();
}

   void mousePressed()
  {
       menu = false;
  }
void draw()
{
  
}