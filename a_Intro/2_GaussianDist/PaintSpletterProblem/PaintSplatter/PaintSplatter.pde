import java.util.Random;
Random generator;
float colour;

/*
Prompt: use gaussian dist to simulate paint splattering on a canvas with dots to represent each splatter
- The splatter is mainly directed at the center with the outside getting some as well

*/
void setup(){
  size (500,500);
  //basically create a new Random "Object" that has its own function
  generator = new Random();
}

void draw(){
  
  //made the sddev proportional to the height to take up most of the canvas, but mainly aim towards center
  //increasing the number under height tightens the center;
  float sd = height/8;
  //mean places this in the x location for the center basically
  float mean = width/2;
  
  //Need a new random number generated for each x and y
  float x = sd * (float)(generator.nextGaussian()) + mean;
  float y = sd * (float)(generator.nextGaussian()) + mean;
  
  noStroke();
  //create a semitransparent circle
  //This is not a normal distribution of color. Figure out later
  fill (random(255),random(255),random(255),50);
  //place these circles in the middle of the canvas. 
  ellipse(x,y,16,16);
  
  
  //This helps us view a gaussian distribution of circles
}
