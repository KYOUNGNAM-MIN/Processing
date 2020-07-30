float x = 100;
float y = 0;
float speedY = 0;
int speedX = 1;
float gravity = 0.1;

void setup()
{
  size(500,500);
  smooth();
  strokeWeight(2);
  background(200);
  frameRate(50);
}

void draw()
{
  background(200);
  fill(x/2,0,x/2);
  noStroke();
  ellipse(x,y,100,100);
  
  fill(x*2,82,172);
  noStroke();
  ellipse(x-20,y-20,20,20);
  ellipse(x+20,y-20,20,20);
  arc(x,y+20,20,20,0,PI+QUARTER_PI,OPEN);
  
  fill(x/2,0,x/2);
  beginShape();
  vertex(x+50,y);
  vertex(x+100,y-40);
  vertex(x+100,y+40);
  endShape(CLOSE);
  
  fill(x/2,0,x/2);
  beginShape();
  vertex(x-50,y);
  vertex(x-100,y-40);
  vertex(x-100,y+40);
  endShape(CLOSE);
  
  y += speedY;
  
  speedY += gravity;
  
  if(y> height){
    speedY = speedY * -0.95;
  }
  
  x+= speedX;
  
  if( (x>width) || (x <0)){
    speedX = speedX* -1;
  }
  
}