Mover m;

PVector gravity;
PVector force;
PVector friction;
PVector airResistance;
float coeff;


void setup(){
  size (1080,500);
  m = new Mover(2.0, 50,height-70);
  
  m.location.y = height-70-20;
 
}

void draw(){
  background(250);
  PVector gravity = new PVector(0,0.01);
  PVector force = new PVector(.7,-.7);
  fill(155,124,100);
  rect(0,height-70,width,height); //Floor
  coeff = 0.5;
  
  airResistance = m.velocity;
  airResistance.mult(-1);
  airResistance.normalize();
  airResistance.mult(coeff);
  m.applyForce(gravity);
  m.applyForce(airResistance);
  
  m.display();
  m.update();
 
  
  
  if (mousePressed == true){
    m.applyForce(force);
  }
}
