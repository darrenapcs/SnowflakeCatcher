Snowflake[] cluster;
void setup()
{
  
  size(500, 500);
  background(0);
  cluster = new Snowflake[200];
  for(int i = 0; i < cluster.length ; i++)
   {
    cluster[i] = new Snowflake();
   } 

  //your code here
}
void draw()
{

 for(int i = 0; i < cluster.length; i++) 
 {
  cluster[i].erase();
  cluster[i].lookDown();
  cluster[i].move();
  cluster[i].wrap();
  cluster[i].show();
 }
  //your code here
}
void mouseDragged()
{
  if(mouseButton == LEFT)
  {
  fill(0,255,255);
  ellipse(mouseX, mouseY, 15, 15);
  }
  if(mouseButton == RIGHT)
  {
    fill(0);
    ellipse(mouseX, mouseY, 20, 20);
  }
  //your code here
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;


  Snowflake()
  {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    isMoving = true;
    //class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 5, 5);
    //your code here
  }
  void lookDown()
  {
    if ( x > 0 && x < 500 && y > 0 && (y + 4 < 500) && (get(x, y+4) != color(0)))
     
      isMoving = false;
      
    else 
    
      isMoving = true;

  }
   void erase()
  {
    fill(0);

    ellipse(x, y, 6,6);
    //your code here
  }
  void move()
  {
    if(isMoving == true)
    {
      y += 1;

    }
    //your code here
  }
  void wrap()
  {
    if(y > 500)
    {
      y = 0;
       x = x + (int)(Math.random()*5)-2;
    }
    //your code here
  }
}


