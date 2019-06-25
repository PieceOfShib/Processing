PerlinWalker w;

void setup(){
  size(600,600);
  w = new PerlinWalker();
  background(255);
}

void draw(){
  w.step();
  w.display();
 
}
