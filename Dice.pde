
// help from Mr.Smith and 3cpo Patrick Potter
void setup()
{
    size(800,800);
   noLoop();
 

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
     
     sum = sum + it.theRoll;
        
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
  int theRoll;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    theRoll = (int)(Math.random()*6) +1;
  }

  void roll() //shows how many dots
  {
    fill(0);
    if (theRoll == 1)
    {
      fill(255, 255, 255);
      ellipse(myX + 40,myY+ 40,15,15);
    }

    if (theRoll == 2)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX + 60, myY +60,15,15);
    }

    if (theRoll == 3)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX + 40,myY+ 40,15,15);
      ellipse(myX + 60, myY +60,15,15);
    }

    if (theRoll == 4)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX +20, myY + 60, 15,15);
      ellipse(myX +60, myY + 20, 15,15);
      ellipse(myX +60, myY + 60, 15,15);
    }

    if (theRoll == 5)
    {
      fill(255, 255, 255);
      ellipse(myX +20, myY + 20, 15,15);
      ellipse(myX +20, myY + 60, 15,15);
      ellipse(myX +60, myY + 20, 15,15);
      ellipse(myX +60, myY + 60, 15,15);
      ellipse(myX + 40,myY+ 40,15,15);
    }

    if (theRoll == 6)
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
