float angle;
float ang_velocity;
float size;
float ang_accel;
float diameter;
float radius;
float increment; 
void setup(){
  size (750,750);
  angle=0;
  diameter= 20;
  radius = diameter/2;
  size = 0.0;
  increment = 0.1;
  ang_velocity = 0;
  ang_accel = 0.01;
}

void draw(){
  pushMatrix();
      background (0);
      noStroke();
      fill(250);
      stroke(250);
      translate(width/2, height/2);
      rotate(radians(angle));
      ellipse(size,0,20,20);
      line(-size,0,size,0);
      ellipse(-size,0,20,20);
      if (size == width/2 - radius || size == 0 ){
        ang_accel *= -1;
        increment *= -1;
      }
  popMatrix();
  size+= increment;
  size = constrain(size,0,width/2-radius);
  ang_velocity += ang_accel;
  angle += ang_velocity;
  
}
