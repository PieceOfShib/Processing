//Working with the forces of gravity and wind
//The user can press the mouse button to activate the wind force
//Else, gravity will just make the ball bounce

Ball b;
PVector wind;
PVector gravity;

void setup(){
  size(900,500);
  background(250);
  b = new Ball(.2);
}

void draw(){
  
  //background(250);
  
  gravity = new PVector(0,0.1);
  wind = new PVector(0.01,0);
  b.applyForce(gravity);
  b.update();
  b.display();
  b.checkEdges();
  
  //mousePressed can be a function or variable
  //Used the boolean variable this time because it was easier
  //This applies the wind forces only if their mouse is pressed
  if (mousePressed == true){
    b.applyForce(wind);
  }
  
  stroke(10);
  line(0,30,width,30);
}
