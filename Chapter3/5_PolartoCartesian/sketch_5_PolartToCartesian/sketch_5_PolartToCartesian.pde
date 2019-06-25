float r = 0;
float theta = 0;

void setup(){
  size (500,500);
  background(255);
}

void draw(){
  ellipse(width/2,height/2,1,1);
  float x = r * cos(theta);
  float y = r * sin(theta);
  stroke(10);
  fill(0,10);
  pushMatrix();
    //rotate(theta/100);  
    ellipse(x + width/2, y + height/2, 16, 16);
  popMatrix();
  theta += 0.01;
  r +=0.05;
}
