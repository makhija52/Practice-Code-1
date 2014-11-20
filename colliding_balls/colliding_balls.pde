float x, y, sz;
PVector loc, mouse, vel, a;
void setup() {
  size(800, 600);
  x=width/2;
  y=height/2;
  loc=new PVector(x, y);
  sz=100;
  mouse=new PVector();
  vel=PVector.random2D();
  a=new PVector(0, 0);
}

void draw() {
  background(0);
  mouse.set(mouseX, mouseY);
  if (dist(mouse.x, mouse.y, loc.x, loc.y) < sz/2) {
    println("ouch"); 
    fill(255, 0, 0);
    loc.x=random(width);
    loc.y=random(height);
  } else {
    fill(0, 255, 0);
  }
  ellipse(loc.x, loc.y, sz, sz);
  vel.add(a);
  loc.add(vel);

  if (loc.x+sz/2>=width) {
    vel.x=-abs(vel.x);
  }
  if (loc.y+sz/2>=height) {
    vel.y=-abs(vel.y);
  }
  if (loc.x-sz/2<=0) {
    vel.x=abs(vel.x);
  }
  if (loc.y-sz/2<=0) {
    vel.y=abs(vel.y);
  }




}

