
// help from Mr.Smith and 3cpo Patrick Potter
void setup()
{
   noLoop();
  size(800,800);

background(1);
}

void draw(){

  

  int sum = 0;

  for(int y = 0; y < height; y = y +200)
  {
    for(int x = 0; x < width; x = x + 200)
    {
      
      Die it = new Die(x,y);
      
     it.show();
     
     it.roll();
     
     sum = sum + it.roll;
        
    }
  }
  
  textSize(40);
  text("your score is " + sum,  0, 525); //displays the score
  
}


void mousePressed()
{
  redraw();

}

class Die //models one single dice cube
{
  //variable declarations here
  int myX;
  int myY;
  int roll;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll = (int)(Math.random()*6) +1;
  }

  void roll() //shows how many dots
  {
    fill(0);
    if (roll == 1)
    {
      fill(255, 255, 255);
      ellipse(myX + 40,myY+ 40,15,15);
    }

    if (roll == 2)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX + 60, myY +60,15,15);
    }

    if (roll == 3)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX + 40,myY+ 40,15,15);
      ellipse(myX + 60, myY +60,15,15);
    }

    if (roll == 4)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX +20, myY + 60, 15,15);
      ellipse(myX +60, myY + 20, 15,15);
      ellipse(myX +60, myY + 60, 15,15);
    }

    if (roll == 5)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX +20, myY + 60, 15,15);
      ellipse(myX +60, myY + 20, 15,15);
      ellipse(myX +60, myY + 60, 15,15);
      ellipse(myX + 40,myY+ 40,15,15);
    }

    if (roll == 6)
    {

      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX +20, myY + 60, 15,15);
      ellipse(myX +60, myY + 20, 15,15);
      ellipse(myX +60, myY + 60, 15,15);
      ellipse(myX +20, myY+40,15,15 );
      ellipse(myX + 60, myY +40,15,15);
    }
  }

  void show()
  {
// creates die shape
    fill(250,255,45);
    rect(myX,myY,75,75, 9);
    


  }
}
