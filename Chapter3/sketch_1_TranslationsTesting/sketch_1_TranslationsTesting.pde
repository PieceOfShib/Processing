int x;

void setup(){
  size (500,500); 
  x = 45;
}

void draw(){
  background(0);
  pushMatrix();
  fill(255);  
  translate(40,40);
  rect(0,0,20,20);
  popMatrix();
  
  fill(140);
  rect(0,0,20,20);
  
  pushMatrix();
  translate (130,130);
  rect(0,0,20,20);
  popMatrix();
  
  pushMatrix();
  translate(200,200);
 
  rotate(radians(x));
  rect(0,0,20,20);
  x +=1;
  popMatrix();
}
