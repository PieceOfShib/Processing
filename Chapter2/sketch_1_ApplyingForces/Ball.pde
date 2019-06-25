class Ball {
  PVector location;
  PVector accel;
  PVector velocity;
  float mass;
  float left;
  float right;
  float top;
  float bot;
  int radius;
  int diameter;
  color c;
  
  
  //Initialize a new ball with user inputed mass
  Ball (float mass){
    velocity = new PVector (0,0);
    diameter = 20;
    radius = diameter/2;
    c = color(random(250),random(250),random(250),75);
    fill(c);
    left = diameter;
    right = width-diameter;
    top = diameter;
    bot = height - diameter;
    accel = new PVector (0,0);
    location = new PVector (30,30);
    this.mass = mass;
  }
  
  void applyForce (PVector force){
    //So we're applying the force here
    //We want to non destrucvively calculate the accel
    //So we use a static call and store force/mass in a new
    //variable called f
    PVector f = PVector.div(force,mass);
    this.accel.add(f); 
  }
  
  void update(){
    //Motion 101
    velocity.add(accel);
    location.add(velocity);
    
    //0 out the accel every run so if you actually remove any forces,
    //It won't continue to be added
    //Velocity still is added so that's all that matter
    accel.mult(0);
  }
  
  void display(){
    noStroke();
    ellipse(location.x,location.y,diameter,diameter);
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
