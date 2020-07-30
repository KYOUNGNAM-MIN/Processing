import processing.pdf.*;
PImage img;
boolean savePDF =false;
int drawMode=1;

void setup() {
  size(670, 970);
  smooth();
  img = loadImage("emma.jpg");
}

void draw() {
  if (savePDF) beginRecord(PDF, "rem_emma.pdf");
  background(255);

  float mouseXFactor = map(mouseX, 0, width, 0.05,1);
  
  for (int i=0; i<img.width; i++) {
    for (int j=0; j<img.height; j++) {
      int moduleWidth = width/img.width;
      int moduleHeight = height/img.height;

      int x = i*moduleWidth;
      int y = j*moduleHeight;

      color c=img.get(i, j);

      int greyscale=round((red(c)+green(c)+blue(c))/3);

      switch(drawMode) {
        case 1:
         float pixelValue1 = map(greyscale, 0, 255, 15, 0.1);
         strokeWeight(pixelValue1*0.5*mouseXFactor);
         quad(x+2.5,y,x+5,y+2.5,x+2.5,y+5,x,y+2.5);
         break;
         
        case 2:
         float pixelValue2 = map(greyscale, 0,255,15,1);
         strokeWeight(pixelValue2*mouseXFactor);
         triangle(x,y,x+5,y,x+2.5,y+2.5);
         triangle(x+2.5,y+2.5,x,y+5,x+5,y+5);       
         break;
         
         case 3:
         float pixelValue3 = map(greyscale, 0,255,15,0.1);
         strokeWeight(pixelValue3*0.5*mouseXFactor);
         line(x,y,x+5,y+5);
         break;
      }
    }
  }
    if (savePDF) {
      savePDF = false;
      endRecord();
    }
  
}


void keyPressed() {
  if (key=='p' || key=='P') savePDF = true;
  if (key =='1') drawMode = 1;
  if (key =='2') drawMode = 2;
  if (key =='3') drawMode = 3;
}