class Mover{
  
  float mass,x,y,radius,diameter,bot,top,left,right;
  color c;
  PVector location, acceleration, velocity;
  
  Mover (float mass, float x, float y){
    this.mass = mass;
    this.diameter = 20;
    this.radius = this.diameter/2;
    location = new PVector (x,y);
    velocity = new PVector (0,0);
    left = diameter;
    right = width-diameter;
    top = diameter;
    bot = height - diameter;
    acceleration = new PVector (0,0);
    c = color (random(255),random(255),random(255));
    noStroke();
  }
  
  void update(){
     velocity.add(acceleration);
     location.add(velocity);
     acceleration.mult(0);
  }
  void display(){
     fill(c,50);
     noStroke();
     ellipse(location.x,location.y,mass*20, mass*20);
  }
  
  void applyForce(PVector force){
    PVector addition = PVector.div(force,this.mass);
    acceleration.add(addition);
  }
  
  void checkEdges(){
      if(location.x - radius < left){
        velocity.x *=-1;
        //location.x = left + radius;
        //velocity.x = abs(velocity.x);
      }
      else if (location.x + radius > right){
        velocity.x *=-1;
        //location.x = right - radius;
        //velocity.x = - abs(velocity.x);
      }
      
      if(location.y - radius < top){
        velocity.y *=-1;
        //location.y = top+radius;
        //velocity.y = abs(velocity.y);

      }
      else if (location.y + radius > bot) {
        velocity.y *= -1;
       // location.y = bot - radius;
        //velocity.y = - abs(velocity.y);
    }
  }
}
