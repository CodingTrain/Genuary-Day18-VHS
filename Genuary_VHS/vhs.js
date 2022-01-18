let vhs;

const len = 1000;
let a = 0;
let sr = 32;
let r = sr + 1;
let maxR = 138;
let minR = sr;


//preload images 
function preload() {
  vhs = loadImage("vhs.png");
}

function setup() {
  createCanvas(600, 600);
}

function draw() {
  background(255);
  imageMode(CENTER);

  // RIGHT SIDE
  stroke(0);
  noFill();
  push();
  translate(432, 304);
  rotate(a);
  for (let a = 0; a < TWO_PI; a += PI / 6) {
    rotate(PI / 6);
    strokeWeight(4);
    stroke(0, 100);
    line(0, 0, sr, 0);
  }
  noFill();
  randomSeed(4);
  // r = map(mouseX, 0, width, minR, maxR);
  for (let d = sr * 2; d < r * 2; d += 2) {
    stroke(random(100));
    strokeWeight(2);
    circle(0, 0, d);
  }
  pop();

  // LEFT SIDE
  push();
  // make spokes
  stroke(0);
  noFill();
  strokeWeight(4);
  push();
  translate(172, 304);
  rotate(-a);
  for (let la = 0; la < TWO_PI; la += PI / 6) {
    rotate(PI / 6);
    stroke(0, 100);
    line(0, 0, sr, 0);
  }
  //pop();
  noFill();
  randomSeed(4);
  let leftR = map(r, minR, maxR, maxR, minR);
  for (let d = sr * 2; d < leftR * 2; d += 2) {

    // stroke of random greys
    stroke(random(100));
    strokeWeight(2);
    circle(0, 0, d);
  }
  pop();

  image(vhs, width * 0.5, height * 0.5);

  a += 0.1;
  r += 3 / r;
  r = constrain(r, minR, maxR);
}