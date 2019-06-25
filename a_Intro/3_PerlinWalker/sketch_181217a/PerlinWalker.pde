class PerlinWalker {
  float x,y;
  float tx,ty;
  
  PerlinWalker(){
    //These are the initial time increments for x and y, 
    //We're getting the y value much further downstream from x
    //This returns very different values but still perlin noised
    //This is important because noise is determenistic
    //So the same x and y == a diagonal line
    tx = 0;
    ty = 1000;
  }
  
  void step () {
    //here we get the actual values for x and y based on the noise function
    //but the noise must mapped because we only get values from 0 to 1
    //so we map them to be between the width (for x) and height (for y)
    
    x = map (noise(tx), 0, 1, 0, width);
    y = map (noise(ty), 0,1,0, height);
    
    tx += 0.01;
    ty += 0.01;
    
  }
  
  void display(){
    fill(0,10);
    noStroke();
    ellipse(x,y,20,20);
}
}
