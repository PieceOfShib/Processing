class FrictionCubes{
  
  float coeff = .005;
  PVector friction;
  int x,y,size;
  Ball b;
  
  FrictionCubes (int x1, int y2, int size){
    this.x = x1;
    this.y = y2;
    this.size = size;
    fill(random(250),random(250),random(250),50);
  }
  
   boolean isInCube (Ball b){
     if ( b.location.x > this.x && b.location.x < this.x+size && 
          b.location.y > this.y && b.location.y < this.y+size){
       return true;
     }
     else {
       return false;
     }
   }
     
   void display(){
     rect(x,y,size,size);
   }
   
   PVector getFriction (Ball b){
     friction = b.velocity;
     friction.mult(-1);
     friction.normalize();
     friction.mult(coeff);
     return friction;
 }
}
