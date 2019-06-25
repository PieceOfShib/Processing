Mover[] movers = new Mover[10];
Attractor a;

void setup(){
  size (500,500);
  
  for (int i = 0; i <10; i++){
    movers[i] = new Mover(random(0.1,2), random(width),random(height));
  }
  a = new Attractor(random(15,20), width/2,height/2);
}

void draw(){
  background(250);
 
  
  for (int i = 0; i <10; i++){
    PVector force = a.attract(movers[i]);
    movers[i].applyForce(force);
    movers[i].update();
    movers[i].display();
  }
  
  a.display();
  
}
