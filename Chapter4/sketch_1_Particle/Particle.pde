class Particle{

PVector location;
PVector velocity;
PVector acceleration;

float lifespan;

  Particle(PVector l){
    this.location = l;
    this.acceleration = new PVector(0,0.05);
    this.velocity = new PVector(random(-1,1),random(-2,0));
    this.lifespan = 255;
  }
  
  void update(){
    velocity.add(this.acceleration);
    location.add(this.velocity);
    lifespan -= 1.5;
  }
  
  void display(){    
    stroke(0,lifespan);
    fill(175,lifespan);
    rectMode(CENTER);
    pushMatrix();
      //rotate(radians(angle));
      translate(location.x,location.y);
      rect(0,0,8,8);
    popMatrix();
    
  }
  
  void run(){
    update();
    display();
    
    if (this.isDead()){
      println("Particle dead!");
    }
  }
  
  boolean isDead(){
    if (lifespan <0.0){
      return true;
    }
    else {
      return false;
    }
  }
  
}
