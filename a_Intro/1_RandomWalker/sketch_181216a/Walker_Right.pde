class Walker_Right {
  int x;
  int y;
  
  //Initialize Walker with first coordinates in the middle of the screen
  Walker_Right (){
    x = width/2;
    y = height/2;
    
  }
 
 //Initial display of point (black)
  void display(){
    stroke (0);
    strokeWeight(0.3);
    point (x,y);
  }
  
  //function to create a step
  void step (){
    float choice = random(1);
    if (choice < .4){
      x += 2;
    } else if (choice <= .6){
      x--;
    } else if (choice < .8){
      y++;
    } else {
      y--;
    }
  }
  
}
