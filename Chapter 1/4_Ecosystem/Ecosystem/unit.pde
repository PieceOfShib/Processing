/*
The point here is to use the mouse to direct the circle towards it. 

the basic steps are:

1. Calculate the vector that points from the object to the target (in this case - mouse)
2. Normalize it so we can just get the unit vector which can be manipulated however we want
3. Scale the unit vector however you want
4. That unit vector becomes the acceleration

*/


class unit{
  PVector velocity;
  PVector location;
  PVector accel;
  PVector mouse;
  PVector dir;
  int diameter;
  int radius;
  float y;
  float x;
  int tx;
  int ty;

  unit (){
    velocity = new PVector (0,0);
    location = new PVector (width/2,height/2);
    fill(random(250),random(250),random(250));;
    tx = 0;
    ty = 1000;
    x = 0;
    y = 0;
    accel = new PVector (0,0);
    diameter = 20;
    noStroke();
    radius = diameter/2;
  }
  
  void display(){
   
    ellipse(location.x,location.y,diameter,diameter); 
  }
  
  void update(){
    
    this.checkEdges();
   x = noise(tx); 
   y = noise(ty);
   accel.x = map(x,0,1,-0.02,0.02);
   accel.y = map(y,0,1,-0.02,0.02);
    
    velocity.add(accel);
    velocity.limit(100);
    location.add(velocity);
    
    tx += 0.01;
    ty += 0.01;

  }
  
  void checkEdges(){
    if(location.x > width-radius || location.x < radius){
      velocity.x *= -1;
      accel.x *= -1;
    }
    else if(location.y >height-radius|| location.y < radius){
      velocity.y *=-1;
      accel.y *= -1;
    }
  }
  
  String getVelocity(){
      return str(this.velocity.mag());
  }
  
  String getAccel(){
      return str(this.velocity.mag());
  }
}
