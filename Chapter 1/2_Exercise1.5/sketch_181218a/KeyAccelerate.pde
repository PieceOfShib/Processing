
class KeyAccel{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  int diameter;
  int radius;
  int tx;
  int ty; 
  
  KeyAccel(){
    location = new PVector(width/2,height/2);
    tx = 0;
    ty = 1000;
    velocity = new PVector(0,0);
    acceleration = new PVector(noise(tx),noise(ty));
    diameter = 20;
    radius = diameter/2;
  }
  
  
  void display(){
    fill(0);
    noStroke();
    ellipse(location.x,location.y,diameter, diameter);
  }
  
  void accel(){
    this.checkEdges();
    velocity.add(acceleration);
    velocity.limit(100);
    location.add(velocity);
    //acceleration.x += 0.01;
  }
  
  void neutral(){
    this.checkEdges();
    velocity.limit(100);
    location.add(velocity);
  }
  
  void decel(){
    this.checkEdges();
    //velocity.limit won't work because it sets the upper limit not the lowere limit. How do we get a lower limit???
    //velocity.limit(100);
    velocity.sub(acceleration);
    location.add(velocity);
  }
  
  void checkEdges(){
    
    if(location.x > width - radius || location.x < radius){
        velocity.x *= -1;
        acceleration.x *= - 1;
    }
    else if(location.y >height- radius || location.y < radius){
        velocity.y *= -1;
        acceleration.y *=-1;
    }
  }
  
  //How do we get a negative value to show up
  String getVelocity(){
    if (this.velocity.mag()>0){
      return str(this.velocity.mag());
    }
    else{
      return ("-" + str(this.velocity.mag()));
  }
  }
}
