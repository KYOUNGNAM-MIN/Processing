float theta = 0;
float[] x = new float[1000];
int i=1;
  
void setup() {
  size(500, 500);
  smooth();

}

void draw() {  
  i++;
  
  background(0);
  stroke(0);
  
  fill(255);

  for (int z=0; z < x.length; z++) { 
      x[z] = random(-10000, 10000);
      x[z]+=0.5;
      ellipse(z*0.5, x[z], 2, 2);
    } 
  
  translate(width/2, height/2);
  if(i%2==0){
    fill(#F57C19);
    ellipse(0, 0, 64, 64);
  }
  else if(i%3==0){
    fill(#F05850);
    ellipse(0,0,64,64);
  }
  else{
    fill(255,0,0);
    ellipse(0,0,64,64);
    }
  
  pushMatrix();
  rotate(theta);
  translate(100, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 32, 32);
  noStroke();
  fill(#2DC96C);
  ellipse(0,0,16,16);

  pushMatrix(); 
  rotate(-theta*4);
  translate(36, 0);
  fill(222, 222, 222);
  ellipse(0, 0, 12, 12);
  popMatrix();

  pushMatrix();
  rotate(theta*2);
  translate(24, 0);
  fill(222, 222, 222);
  ellipse(0, 0, 8, 8);
  popMatrix();
  
  rotate(theta);
  translate(200,0);
  strokeWeight(4);
  stroke(#2A25B9);
  fill(#A022D3);
  ellipse(0,0,32,32);
  
  noStroke();
  pushMatrix(); 
  rotate(-theta*3);
  translate(36, 0);
  fill(222, 222, 222);
  ellipse(0, 0, 12, 12);
  popMatrix();

  pushMatrix();
  rotate(theta*2);
  translate(24, 0);
  fill(222, 222, 222);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();

  theta += 0.01;
}