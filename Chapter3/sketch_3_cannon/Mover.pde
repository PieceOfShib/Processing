class Mover{
  
  float mass,x,y,radius,diameter,bot,top,left,right;
  color c;
  PVector location, acceleration, velocity;
  
  Mover (float mass, float x, float y){
    this.mass = mass;
    this.diameter = mass*20;
    this.radius = this.diameter/2;
    location = new PVector (x,y);
    velocity = new PVector (0,0);
    left = diameter;
    right = width-diameter;
    top = diameter;
    bot = height - 70;
    acceleration = new PVector (0,0);
    c = color (random(255),random(255),random(255));
    noStroke();
  }
  
  void update(){
     velocity.add(acceleration);
     location.add(velocity);
     acceleration.mult(0);
     this.checkEdges();
  }
  void display(){
     fill(c);
     noStroke();
     ellipse(location.x,location.y,mass*20, mass*20);
  }
  
  void applyForce(PVector force){
    PVector addition = PVector.div(force,this.mass);
    acceleration.add(addition);
  }
  
  void checkEdges(){
   
     if (location.y + radius > bot) {
        location.y = bot - radius;
     
    }
  }
}
