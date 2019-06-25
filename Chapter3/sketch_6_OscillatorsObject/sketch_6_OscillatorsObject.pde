Oscillator[] oMatrix = new Oscillator[20];

void setup(){
  size(500,500);
  for (int i = 0; i < oMatrix.length ; i++){
    oMatrix[i] = new Oscillator();
  }
}

void draw(){
  background(255);
  for (int i = 0; i < oMatrix.length ; i++){
    oMatrix[i].oscillate();
    oMatrix[i].display();
  }
}
