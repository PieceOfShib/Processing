Walker[] w = new Walker[5];

void setup(){
  size(1080,1080);
  for (int i = 0; i < w.length; i++){
    w[i] = new Walker();
  }
  background(255);

}

void draw(){
   
  for (int i = 0; i < w.length; i++){
   w[i].display();
   w[i].update();
  }
   
}
