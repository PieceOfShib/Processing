pSystem ps;

void setup(){
 size(640,640);
 ps = new pSystem(new PVector(width/2,height/2));
}

void draw(){
  background(255);
  ps.addParticle();
  ps.run();
}
