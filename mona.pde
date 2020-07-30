import processing.pdf.*;

PImage img;

void setup(){
size(500, 500);
smooth();
img = loadImage("monalisa.jpg");
beginRecord(PDF, "monalisa_vector.pdf");
}

void draw(){
  float dot = map(mouseX, 0, width, 10, 50);
  
  int x = int(random(width));
  int y = int(random(height));
  
  color pix = img.get(x, y);
  
  fill(pix, 100);
  noStroke();
  ellipse(x, y,dot, dot);
}

void mousePressed(){
  endRecord();
  exit();
} 