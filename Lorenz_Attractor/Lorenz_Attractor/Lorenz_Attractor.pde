float x = 0.01;
float y = 0;
float z = 0;
float constant = 0.1;

float s = 10;
float p = 28;
float B = 8.0/3.0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(800, 800, P3D);
  colorMode(HSB);
  background(0);
}

void draw() {
   background(0);
  float dt = 0.01;

  float dx = (s * (y - x))* dt;

  float dy = (x * (p - z) - y)*dt;

  float dz = (x*y - B*z)*dt;

  x = x + dx;
  y = y + dy;
  z = z + dz;

  points.add(new PVector(x, y, z));

  translate(width/2-50, height/2, 0);
  rotateY(constant);
  constant += 0.01;
  scale(5);
  noFill();
  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu,255,255);
    vertex(v.x, v.y, v.z);
    hu += 0.1;
    if (hu > 255){
      hu = 0;
    }
  }
  endShape();
  stroke(255);
  println(x, y, z);
}
