int h;
int lineSize = -400;
float koef = 0.54;

void setup() {
  size(800, 600, P3D);
  stroke(255);
}

void draw() {
  background(0);
  h = lineSize;
  translate(width/2, height-59);
  strokeWeight(2);

  rotateY(mouseX*0.01);
 

  line(0, 0, 0, h);
  branch(h);
}

void branch(float h) {
  stroke(255);
  strokeWeight(2);
  h *= koef;

  if (h<-4) {

    pushMatrix(); 

    pushMatrix();
    translate(0, h);
    rotateZ(PI/3);
    if (h>=-455) {
      line(0, 0, 0, h);
    }
    branch(h);
    popMatrix();

    pushMatrix();
    translate(0, h);
    rotateZ(-PI/3);
    if (h>=-458) {
      line(0, 0, 0, h);
    }
    branch(h);
    popMatrix();

    popMatrix();

    h=h+h*-0.1;
    branch(h);
  }
}