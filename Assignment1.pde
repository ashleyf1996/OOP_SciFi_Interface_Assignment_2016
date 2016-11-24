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


String[] words;
  int i=0;
ArrayList<TargetData> targets= new ArrayList<TargetData>(); //Create an array list of type expense objects named expenses
  TargetData tar;
boolean batteryEmpty = true;
 
void setup()
{
  size(1350,700,P3D);
 background(0);
  



   table = loadTable("data.tsv", "header, tsv");
  // String[] lines = loadStrings("data.tsv");
 
// for(int i=0; i<lines.length;i++)
// {
  
//      text(lines[i] +"\t",100,100);
//   i++;
// }
  fill(255);

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
Radar radar = new Radar();


  //printArray(lines);
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
                   menu = 3;
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
      radar.drawRadar();
      //image
image(img, width/2-25,height/2-125);
img.resize(50,50);
 if(frameCount%30==0)
          {
            if(batteryEmpty == true)
            {
              fill(255,0,0);
              textSize(32);
              text("WARNING BATTERY EMPTY",width/2+150, height - 200);
              delay(3000);
            }
            
          }
          if(batteryEmpty==false)
            {
              fill(255,0,0);
              text("BATTERY FULL", width/2+150,height-200);
            }
           
      break;
    }
      case 2:
    {
      
   
      break;
     
    }
       case 3:
    {
    // // background(255);
      screen.screen3();
     // break;
     
    }
   
  }
 


    
 }
 



 


    