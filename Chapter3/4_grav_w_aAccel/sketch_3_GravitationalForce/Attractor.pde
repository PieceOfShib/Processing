class Attractor {
  
  float mass, x,y,radius,diameter,G;
  PVector location;
  Mover m;
  
  Attractor(float mass, float x, float y){
    location = new PVector (x,y);
    this.mass = mass;
    G = 0.5;
  }
  
  PVector attract (Mover m) {
    PVector force = PVector.sub(location,m.location);
    float distance = force.mag();
    distance = constrain (distance,5.0,25.0);
    
    force.normalize();
    float strength = (G * this.mass * m.mass) / (distance * distance); 
    force.mult(strength);
    return force;
  }
  
  void display(){
    stroke(5);
    fill(255,23,126,50);
    ellipse(location.x,location.y, mass*2,mass*2);
  }
  
}
