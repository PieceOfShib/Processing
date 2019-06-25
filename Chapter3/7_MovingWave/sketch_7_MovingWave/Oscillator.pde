class Oscillator {
  
  PVector angle;
  PVector velocity;
  PVector amplitude;
  float x;
  
  Oscillator (float x){
    this.x = x;
    angle = new PVector();
    velocity = new PVector(0.2,0.2);
    amplitude = new PVector(height/2,height/2);
  }
  
  void oscillate(){
    angle.add(velocity);
  }
  
  void display(){
    
    
    float y = sin(angle.y)*amplitude.y;
    
    pushMatrix();
      translate(width/2,height/2);
      stroke(0);
      fill(175);
      //line(0,0,x,y);
      ellipse(this.x,y+height/2,16,16);
    popMatrix();
  }
}
