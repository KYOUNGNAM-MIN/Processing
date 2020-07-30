Gooz[] goozies = new Gooz[100];

void setup() {
  size(600, 600);
  
  for (int i =0; i<goozies.length; i++) {
    goozies[i] = new Gooz(random(width), random(height), 30, 30, 8);
  }
}
void draw() {
  background(0, 0, 0);
  
  for (int i=0; i<goozies.length; i++) {
    goozies[i].display();
    goozies[i].jiggle();
  }
}

class Gooz {
  
  float x, y, w, h, eyeSize;
  
  Gooz(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x=tempX;
    y=tempY;
    w=tempW;
    h=tempH;
    eyeSize=tempEyeSize;
  }
  
  void jiggle() {
    x= x+random(-1, 1);
    y= y+random(-1, 1);

    x=constrain(x, 0, width);
    y=constrain(y, 0, height);
  }
  void display() {

    ellipseMode(CENTER);
    rectMode(CENTER);

    fill(0);
    noStroke();
    ellipse(x, y, 100, 100);
    
    fill(255);
    noStroke();
    ellipse(x-20, y-10, 20, 20);
    ellipse(x+20, y-10, 20, 20);
    rect(x,y+20,20,20);

    fill(200);
    rect(x+50,y,20,20);

    fill(200);
    rect(x-50,y,20,20);
  }
}