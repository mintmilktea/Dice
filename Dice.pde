int sum = 0;

void setup()
  {
      background(#FFCCB4);
      size(500, 425);
      noLoop();
      textSize(25);
      textAlign(CENTER);
      strokeWeight(3);
  }
 
 
  void draw()
  {
      
      for (int row = 100; row <= 300; row+=100){
        for (int column = 100; column <= 300; column+=100){
          Die dice = new Die(column, row);
          dice.show();
        }
      }
      fill(255,255,255);
      rect(100, 20, 300, 60, 10);
      fill(0,0,0);
      text("Sum of Dice:", 250, 45);
      text(sum, 250, 70);
      sum = 0;
  }
 
 
  void mousePressed()
  {
      redraw();
  }
 
 
  class Die //models one single dice cube
  {
      //member variable declarations here
      int rolled;
      int myX, myY;
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
         
      }
      void roll()
      {
          rolled = (int)(Math.random() * 6) + 1;  
      }
      void show()
      {
          //fill((int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1, (int)(Math.random()*256) + 1);
          fill(200, (int)(Math.random()*50) + 200, 255);
          rect(myX, myY, 100, 100, 30);
          fill(0, 0, 0);
          
          if(rolled == 1){
            ellipse(myX+50, myY+50, 20, 20);
          } else if(rolled == 2){
            ellipse(myX+75, myY+25, 20, 20);
            ellipse(myX+25, myY+75, 20, 20);
          } else if(rolled == 3){
            ellipse(myX+50, myY+50, 20, 20);
            ellipse(myX+75, myY+25, 20, 20);
            ellipse(myX+25, myY+75, 20, 20);
          } else if(rolled == 4){
            ellipse(myX+75, myY+25, 20, 20);
            ellipse(myX+25, myY+75, 20, 20);
            ellipse(myX+75, myY+75, 20, 20);
            ellipse(myX+25, myY+25, 20, 20);
          } else if(rolled == 5){
            ellipse(myX+50, myY+50, 20, 20);
            ellipse(myX+75, myY+25, 20, 20);
            ellipse(myX+25, myY+75, 20, 20);
            ellipse(myX+75, myY+75, 20, 20);
            ellipse(myX+25, myY+25, 20, 20);
          } else {
            ellipse(myX+75, myY+25, 20, 20);
            ellipse(myX+25, myY+75, 20, 20);
            ellipse(myX+75, myY+75, 20, 20);
            ellipse(myX+25, myY+25, 20, 20);
            ellipse(myX+25, myY+50, 20, 20);
            ellipse(myX+75, myY+50, 20, 20);
          }
          sum = sum + rolled;
      }
  }
