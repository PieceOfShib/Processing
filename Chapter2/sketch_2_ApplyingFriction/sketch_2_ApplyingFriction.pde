//Working with the forces of gravity and wind
//The user can press the mouse button to activate the wind force
//Else, gravity will just make the ball bounce

Ball b;
PVector wind;
PVector gravity;
FrictionCubes fr1; 
FrictionCubes fr2;

void setup(){
  size(900,500);
  background(250);
  b = new Ball(.2);
  fr1 = new FrictionCubes(150,150,100);
  fr2 = new FrictionCubes(400,300,45);
}

void draw(){
  
  background(250);
  
  
  gravity = new PVector(0,0.1);
  wind = new PVector(0.1,0);
  
  
  
  
  fr1.display();
  fr2.display();
  
  
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
  
  if (fr1.isInCube(b)){
      PVector friction = fr1.getFriction(b);
      b.applyForce(friction);
    }
 
  
  stroke(10);
  line(0,30,width,30);
}
