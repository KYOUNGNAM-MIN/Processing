int xPos;
int yPos;
int speed=1;
int xDir=1;
int yDir=1;
int score=0;
int maxscore=0;
float x,y;
int heart=10;
boolean lost=false;

void setup()
{
  size (400,400);
  smooth();
  xPos=width/2;
  yPos=height/3;
  
  fill(255);
  textSize(10);
}

void draw()
{
  background (0);
  pushMatrix();
  ellipse(x, y,40,40);
  
  popMatrix();
  xPos=xPos+(speed*xDir);
  yPos=yPos+(speed*yDir);
  if (xPos > width-20 || xPos<20)
  {
    xDir=-xDir;
  }
  if (yPos > height-20 || yPos<20)
  {
    yDir=-yDir;
  }
  textSize(15);
  text("Score = "+score,10,20);
  text("Heart = "+heart,width-100,20);
  text("MaxScore = "+maxscore,100,20);
  
  if (heart==0)
  {
    textSize(20);
    text("Click to Restart", 120,100);
    noLoop();
    lost=true;
    textSize(10);
    if ( score > maxscore)
    {
      maxscore=score;
    }
  }
}

void mousePressed()
{
  if (dist(mouseX, mouseY, xPos, yPos)<=20)
  {
    score=score+speed;
    speed=speed+1;
  }
  else
  {
    if (speed<1)
    {
    speed=speed-1;
    }
    
  }
  if (lost==true)
  {
    speed=1;
    heart=10;
    score=0;
    xPos=width/3+70;
    yPos=height/2+50;
    yDir=1;
    lost=false;
    loop();
  }
}
void mouseReleased()
{
  x=random(width);
  y=random(height);
}