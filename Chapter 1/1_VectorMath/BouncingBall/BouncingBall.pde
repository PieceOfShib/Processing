PVector location;
PVector velocity;
int diameter;
int radius;

void setup(){
  size(500,500);
  location = new PVector(250,250);
  velocity = new PVector(1.3,1.2);
  diameter = 20;
  radius = diameter/2;
}

void draw(){
   background(255);

  location.add(velocity);
  
  if(location.x > width - radius || location.x < radius){
    velocity.x *= -1;
  }
  else if(location.y >height- radius || location.y < radius){
    velocity.y *=-1;
  }
   
  fill(0);
  noStroke();
  ellipse(location.x,location.y,diameter, diameter);
}
