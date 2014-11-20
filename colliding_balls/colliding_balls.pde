float x, y, sz;
PVector loc;
void setup() {
  size(800, 600);
  x=width/2;
  y=height/2;
  loc=new PVector(x, y);
  sz=100;
}

void draw() {
  background(0);
  if (dist(mouseX, mouseY, loc.x, loc.y) < sz/2) {
    println("ouch"); 
    fill(255, 0, 0);
    loc.x=random(width);
    loc.y=random(height);
  } else {
    fill(0, 255, 0);
  }
  ellipse(loc.x, loc.y, sz, sz);
}

