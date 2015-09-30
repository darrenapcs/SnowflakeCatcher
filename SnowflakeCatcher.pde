Snowflake[] cluster;
void setup()
{
  size(500, 500);
  cluster = new Snowflake[50];

  //your code here
}
void draw()
{
 int() 
  cluster[].show();
  cluster[].lookDown();
  cluster[].move();
  clutser[].erase();
  cluster[].wrap();
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x;
  int y;
  int isMoving;

  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
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
    if ((y > 0 && y < 500) && get(x, y) != color(0))
   
      isMoving = false;
    
    else 
      isMoving = true;
      
    
    

    //your code here
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, 7, 7);
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
      x = (int)(Math.random()*500);
    }
    //your code here
  }
}


