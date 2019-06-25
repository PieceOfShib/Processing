float angle =0;
float angleVel = 0.2;
float amp = 100;
float testVariable = 10;

void setup(){
  size (700,700);
}

void draw(){
  background(34);
  for (int x=0; x <=width; x+=24){
    float y = amp * sin(angle);
    ellipse(x,y+height/2,20,20);
    angle+=angleVel;
  }
}
