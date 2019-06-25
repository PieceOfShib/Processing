KeyAccel w;

void setup(){
  size(1080,1080);
  w = new KeyAccel();
}

void draw(){
   background(255);
   w.display();
   text("Velocity = " + w.getVelocity(), 100,100);
   text("Press the up key to start. \nHold the UP key to move faster.\nPress DOWN to stop", 100,135);
   if (key == CODED){
     if (keyPressed == true){
     if (keyCode == UP){
       w.accel();
     }
     else if (keyCode == DOWN){
       w.decel();
     }
     }
     else {
       w.neutral();
     }
     }
   }
