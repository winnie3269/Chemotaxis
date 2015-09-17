Bacteria bill;
Bacteria [] colony;//declare bacteria variables here   
void setup()   
{     
  size(400, 400);
  colony=new Bacteria[100];
  for (int i=0; i<colony.length; i++)
  {
    colony[i]=new Bacteria();
  }//initialize bacteria variables here
}   
void draw()   
{    
  background(0);
  Bacteria bill=new Bacteria();
  bill.move();
  bill.show();
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }//move and show the bacteria
}  
class Bacteria    
{     
  int myX, myY,bactColor;
  Bacteria()
  {
    myX=200;
    myY=200;
    int r=0;
    int g=(int)(Math.random()*200)+55;
    int b=(int)(Math.random()*200)+55;
    int o=(int)(Math.random()*200)+55;
    bactColor=color(r,g,b,o);
  }
  void move()
  {
    myX=myX+(int)(Math.random()*3)-1;//lots of java!
    myY=myY+(int)(Math.random()*3)-1;
  }
  void show()
  {
    noStroke();
    fill(bactColor);
    rotate(PI/5.0);
    ellipse(myX,myY,8,8);
    ellipse(myX+5,myY,8,8);
  }
}