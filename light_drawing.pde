import processing.video.*;

Capture cam;

void setup(){
  size(640,480);
  frameRate(30);
  background(0);
  
String[] cameras = Capture.list();
cam = new Capture(this, cameras[0]);
  cam.start();
}

void draw(){
  if(cam.available()){
    cam.read();
    cam.loadPixels();
    loadPixels();
    for(int i=0; i<cam.pixels.length; i++){
      if(brightness(cam.pixels[i])>250){
        pixels[i] = color(255);
      }
    }
    updatePixels();
  }
}