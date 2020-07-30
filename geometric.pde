float x, y= 0;
int a, b;

void setup() {
  size(600, 600);
  a=10;
  b=10;
  noStroke(); 
  smooth();
}

void draw() {
  background(0);
  fill(100,160,70);
  for (float t=0; t<=540*PI; t++) { 
    x=map(8*cos(radians(a*t))+5*cos(b*t), -15, 15, 50, 550);  
    y=map(8*sin(radians(a*t))-5*sin(b*t), -15, 15, 50, 550); 
    ellipse(x, y, 4, 4);
  }
}
void mouseClicked() {
  a++;
  b++;
}