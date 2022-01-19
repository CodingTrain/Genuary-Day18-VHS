
PImage vhs;

float len = 1000;
float a = 0;
float sr = 32;
float r = sr+1;

float maxR = 138;
float minR = sr;

void setup() {
  size(600 , 600);
  vhs = loadImage("vhs.png");
}

void draw() {
  background(255);
  imageMode(CENTER);

  // Right side
  stroke(0);
  noFill();
  pushMatrix();
  translate(432, 304);
  pushMatrix();
  rotate(a/r);
  //for (float la = 0; la < TWO_PI; la += PI/6) {
    //rotate(PI/6);
    //strokeWeight(4);
    //stroke(0, 100);
    line(0, 0, sr, 0);
  //}
  popMatrix();
  noFill();
  randomSeed(4);
  for (float d = sr*2; d < r*2; d+=2) {
    stroke(random(50));
    strokeWeight(2);
    circle(0, 0, d);
  }
  popMatrix();



  // LEFT SIDE
  stroke(0);
  noFill();
  strokeWeight(4);
  pushMatrix();
  translate(172, 304);
  pushMatrix();
  float leftR = map(r, minR, maxR, maxR, minR);
  rotate(a/leftR);
  for (float la = 0; la < TWO_PI; la += PI/6*r) {
    rotate(PI/(6*r));
    strokeWeight(4);
    stroke(0, 50);
    line(0, 0, sr, 0);
  }
  popMatrix();
  noFill();
  randomSeed(4);
  circle(0, 0, sr*2);
  for (float d = sr*2; d < leftR*2; d+=2) {
    stroke(random(100));
    strokeWeight(2);
    circle(0, 0, d);
  }
  popMatrix();
  
  if(leftR<=sr){
    noLoop();
  }

  image(vhs, width * 0.5, height * 0.5);

  a+=10;
  r+=3/r;
  //r = map(mouseX, 0, width, minR, maxR);
  r = constrain(r, minR, maxR);
}
