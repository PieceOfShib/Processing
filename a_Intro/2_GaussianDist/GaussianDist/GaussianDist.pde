import java.util.Random;
Random generator;

void setup(){
  size (500,500);
  //basically create a new Random "Object" that has its own function
  generator = new Random();
}

void draw(){
  //Use Random's next Gaussian function
  //Generates a double that's between 0 and 1 with a mean of 0 and stdDev of 1
  float num = (float) generator.nextGaussian();
  
  //to modify this, multiple the desired StdDev and add the mean
  //Smaller the SDdev, the tighter the normal curve == fewer visible dots, brighter center
  float sd = 10;
  //mean places this in the x location for the center basically
  float mean = width/2;
  
  float x = sd * num + mean;
  
  noStroke();
  //create a semitransparent circle
  fill (255,10);
  //place these circles in the middle of the canvas. 
  ellipse(x,height/2,16,16);
  
  
  //This helps us view a gaussian distribution of circles
}
