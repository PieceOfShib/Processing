/*
The point here is to use the mouse to direct the circle towards it. 

the basic steps are:

1. Calculate the vector that points from the object to the target (in this case - mouse)
2. Normalize it so we can just get the unit vector which can be manipulated however we want
3. Scale the unit vector however you want
4. That unit vector becomes the acceleration

*/


class Walker{
  PVector velocity;
  PVector location;
  PVector accel;
  PVector mouse;
  PVector dir;
  int diameter;
  int radius;

  Walker (){
    velocity = new PVector (0,0);
    location = new PVector (random(width),random(height));
    fill(random(250),random(250),random(250),30);;
    accel = new PVector (0,0);
    diameter = 20;
    noStroke();
    radius = diameter/2;
  }
  
  void display(){
   
    ellipse(location.x,location.y,20,20); 
  }
  
  void update(){
    
    //Here we find the desired position - the mouse
    PVector mouse = new PVector(mouseX,mouseY);
    
    //Use the static sub function to create a new PVector dir that is the substraction of mouse and the current location
    //The static makes it so you don't actually affect mouse or location - you're just updating dir
    PVector dir = PVector.sub(mouse,location);
    
    //Normalize that vector
    dir.normalize();

    //Scale direction however we want to scale the accel
    dir.mult(0.5);
    
    //The accel is now the dir - remember that accel is basically our driving mechanism
    accel = dir;
    
    //Normal updates
    velocity.add(accel);
    velocity.limit(10);
    location.add(velocity);
}
}
