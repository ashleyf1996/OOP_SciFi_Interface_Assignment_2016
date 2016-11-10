boolean menu = false;
void setup()
{
  size(1350,700);
 background(0);

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
  }
}