unit w;

void setup(){
  size(700,700);
  w = new unit();

}

void draw(){
   
  background(255);

  //text("Velocity = " + w.getVelocity(), 100,100);
  
  w.display();
  w.update();
   
}
