class Mover{
  
  float mass,x,y,radius,diameter,bot,top,left,right;
  float angle, aVelocity, aAccel;
  color c;
  PVector location, acceleration, velocity;
  
  Mover (float mass, float x, float y){
    this.mass = mass;

    location = new PVector (x,y);
    velocity = new PVector (random(-1,1),random(-1,1));
    acceleration = new PVector(0,0);

    this.angle = 0;
    this.aVelocity = 0;
    this.aAccel = this.acceleration.x;
    
    c = color (random(255),random(255),random(255));
    noStroke();
  }
  
  void update(){
    
     velocity.add(acceleration);
     location.add(velocity);
     
     aAccel = this.acceleration.x/10;
     aVelocity += aAccel;
     //aVelocity = constrain(aVelocity,-0.1,0.1);
     angle += aVelocity;
     
     
     acceleration.mult(0);
  }
  void display(){
     fill(c,50);
     noStroke();
     rectMode(CENTER);
     pushMatrix();
       translate(location.x,location.y);
       rotate(angle);
       rect(0,0,mass*20, mass*20);
     popMatrix();
  }
  
  void applyForce(PVector force){
    PVector addition = PVector.div(force,this.mass);
    acceleration.add(addition);
  }
  
}
