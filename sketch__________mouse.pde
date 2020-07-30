void setup(){
  size(600,600);
}
void draw(){
  background(0,0,0);
  
  fill(mouseX/2,0,mouseY/2);
  smooth();
  noStroke();
  ellipse(mouseX,mouseY,100,100);
  
  fill(mouseX/4,0,mouseY/4);
  noStroke();
  ellipse(mouseX-20,mouseY-10,20,20);
  ellipse(mouseX+20,mouseY-10,20,20);
  arc(mouseX,mouseY+20,20,20,0,PI+QUARTER_PI,OPEN);
  
  fill(mouseX/2,0,mouseY/2);
  beginShape();
  vertex(mouseX+50,mouseY);
  vertex(mouseX+100,mouseY+50);
  vertex(mouseX+100,mouseY-50);
  endShape(CLOSE);
  
  fill(mouseX/2,0,mouseY/2);
  beginShape();
  vertex(mouseX-50,mouseY);
  vertex(mouseX-100,mouseY+50);
  vertex(mouseX-100,mouseY-50);
  endShape(CLOSE);
  
}