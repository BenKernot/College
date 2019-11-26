/*
Name : Ben Kernot
Student Number: 20090204
Programme Name: 

Brief description of the animation achieved: Rocket launching through the sky into space.


Known bugs/problems: 
Sometimes when you press the right or left mouse buttons it only moves down a few pixels and does not go continuously.
when left click is pressed the rocket goes down and when right click is pressed the rocket goes up.
when you move the mouse the rocket stays still, when you dont move it the rocket works as planned.

Any sources referred to during the development of the assignment (no need to reference lecture/lab materials): 
processing.org for keyPressed
*/

int x = 300;
int y = 300;

void setup(){
  size(800,600); //window size
}

void draw(){
  background(0,0,51); //space
  
  fill(0,128,255); //sky colour
  rect(0,300,800,400); //sky
  
  fill(160,160,160); //ground colour
  rect(0,550,850,300); //ground
  
  fill(0);
  stroke(255);
  fill(255); //rocket body colour
  rect(300,y+45,80,180); //rocket body
  fill(255,102,102); //rocket top colour
  triangle(300,y+45,340,y,380,y+45); //rocket top 
  fill(255,102,102); //rocket right wing colour
  triangle(380,y+225,440,y+225,380,y+170); //rocket right wing
  fill(255,102,102); //rocket left wing colour
  triangle(235,y+225,300,y+170,300,y+225); //rocket left wing
  fill(0); //window rim colour
  ellipse(340,y+90,50,50); //window rim
  fill(random(255),60,120); //window colour
  ellipse(340,y+90,45,45); //window
  
  fill(255); //cloud colour white
  ellipse(630,390,50,50); //cloud ball 1
  ellipse(670,390,50,50); //cloud ball 2
  ellipse(710,390,50,50); //cloud ball 3 
  ellipse(650,360,50,50); //cloud ball 4
  ellipse(690,360,50,50); //cloud ball 5
  
  fill(255); //cloud colour white
  ellipse(110,390,50,50); //cloud ball 1
  ellipse(150,390,50,50); //cloud ball 2
  ellipse(190,390,50,50); //cloud ball 3 
  ellipse(130,360,50,50); //cloud ball 4
  ellipse(170,360,50,50); //cloud ball 5
  
  fill(200); //moon colour white
  ellipse(675,100,150,150); //moon
  
  mousePressed();
}

  void mousePressed(){
      if(mouseButton == LEFT) {  //when the left mouse button is clicked the rocket goes down
        y = y + 3;
      }
      else if (mouseButton == RIGHT) //when the right mouse button is clicked the rocket goes up
      { y = y - 3;
  
   if (x < 0 ) {
    y = 0;
  }
      }
  }
      void keyPressed() {
       if(key == CODED) {
        if (keyCode == UP) { //when the UP arrow key is pressed it resets back to its original position
          y = 300;}
      }
        }
