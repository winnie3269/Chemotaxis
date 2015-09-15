Bacteria bill;
Bacteria [] colony;//declare bacteria variables here   
void setup()   
{     
  size(400, 400);
  int x=200;
  int y=200;
  int c=0;
  colony=new Bacteria[100];
  for(int i=0; i<colony.length; i++)
  {
    colony[i]=new Bacteria();
  }//initialize bacteria variables here
}   
void draw()   
{    
  background(255);
  Bacteria bill=new Bacteria();
  bill.move();
  bill.show();//move and show the bacteria
}  
class Bacteria    
{     
  int myX, myY;
  Bacteria()
  {
    myX=200;
    myY=200;
  }
  void move()
  {
    myX=myX+(int)(Math.random()*3)-1;//lots of java!
    myY=myY+(int)(Math.random()*3)-1;
  }
  void show()
  {
    fill(0);
    ellipse(myX, myY, 5, 5);
  }    
}