
PImage vhs;

float len = 1000;
float a = 0;
float sr = 50;
float r = r;

void setup() {
  size(600, 600);
  vhs = loadImage("vhs.png");
}

void draw() {
  background(255);
  imageMode(CENTER);
  // image(vhs, width * 0.5, height * 0.5);

  stroke(0);
  noFill();
  strokeWeight(4);
  translate(400, 300);
  rotate(a);
  line(0, 0, r, 0);
  for (float d = r*2; d < sr*2; d++) {
    circle(0, 0, d);
  }
  a-=0.1;
  if (a >= TWO_PI) {
    a = TWO_PI;
  }
}
