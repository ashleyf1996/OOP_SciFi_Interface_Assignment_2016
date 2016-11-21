//Declaring my global variables
int menu = 0;
boolean startUp = true;
PImage img;
float x=20;
float y=20;
float a=20;
float b=0;
float c=20;
float a1 = width/2;
float b1;
float c1;
Table table;

ArrayList<TargetData> targets= new ArrayList<TargetData>(); //Create an array list of type expense objects named expenses
TargetData tar;

void setup()
{
  size(1350,700,P3D);
 background(0);
  table = loadTable("data.tsv", "header, tsv");
  
  for (TableRow row : table.rows()) {
   
   String name = row.getString("Name");
   Integer age = row.getInt("Age");
 String objective = row.getString("Objective");
 tar = new TargetData(name, age, objective);
 targets.add(tar);
 
 println(tar.toString());
  }
      
  
  a1 = width/2;
  b1 = height/2;
  c1 = 0;

 //This loads my target image
  img = loadImage("terminator_pic.jpg");
  
  

}

//Creating my object of the class screen
Screen screen = new Screen();
//TargetData targetdata = new TargetData();

  void mousePressed()
  {
      if(startUp == true)
        {
            menu = 1;
        }
        //The co-ordinanates of my circle (button)
        if(mouseX>25 && mouseX<75)
        {
          if(mouseY > 180 && mouseY<250)
            {
                   menu = 1;
              }
           }
            
          if(mouseX>25 && mouseX<75)
           {
             if(mouseY >270 && mouseY<330)
               {
                   menu = 3;
               }
            }
            
            if(mouseX>25 && mouseX<75)
           {
             if(mouseY >350 && mouseY<410)
               {
                   menu = 4;
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
      // background(255,0,255);
       //image

       break;
    }
    
      case 1:
    {
       //background(0);
      screen.screen1();
      //image
image(img, width/2-25,height/2-25);
img.resize(50,50);
      break;
    }
      case 2:
    {
      screen.screen2();
      break;
     
    }
       case 3:
    {
      screen.screen3();
      break;
     
    }
           case 4:
    {
      screen.screen4();
      break;
     
    }
  }
 


    
 }
 



 


    