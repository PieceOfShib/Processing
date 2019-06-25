class Walker {
  int x;
  int y;
  
  //Initialize Walker with first coordinates in the middle of the screen
  Walker (){
    x = width/2;
    y = height/2;
    
  }
 
 //Initial display of point (black)
  void display(){
    stroke (0);
    strokeWeight(3);
    point (x,y);
  }
  
  //function to create a step
  void step (){
    int choice = int(random(4));
    if (choice == 0){
      x ++;
    } else if (choice == 1){
      x --;
    } else if (choice == 2){
      y ++;
    } else {
      y --;
    }
  }
  
}
