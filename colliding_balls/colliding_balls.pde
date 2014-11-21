float x, y, sz;
PVector loc, mouse, vel, a;
float x2, y2, sz2;
PVector loc2, vel2, a2;
void setup() {
  size(800, 600);
  x=width/2;
  y=height/2;
  loc=new PVector(x, y);
  sz=100;
  mouse=new PVector();
  vel=PVector.random2D();
  a=new PVector(0, 0);
  x=width/2+50;
  y=height/2+50;
  
  loc2=new PVector(x2, y2);
  sz2=100;
  vel2=PVector.random2D();
  a2=new PVector(0, 0);
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
///////////////////////////////////////////////////
 mouse.set(mouseX, mouseY);
  if (dist(mouse.x, mouse.y, loc.x, loc.y) < sz/2) {
    println("ouch2"); 
    fill(255, 0, 0);
    loc2.x=random(width);
    loc2.y=random(height);
  } else {
    fill(0, 255, 0);
  }
  ellipse(loc2.x, loc2.y, sz2, sz2);
  vel2.add(a2);
  loc2.add(vel2);

  if (loc2.x+sz2/2>=width) {
    vel2.x=-abs(vel2.x);
  }
  if (loc2.y+sz2/2>=height) {
    vel2.y=-abs(vel2.y);
  }
  if (loc2.x-sz2/2<=0) {
    vel2.x=abs(vel2.x);
  }
  if (loc2.y-sz2/2<=0) {
    vel2.y=abs(vel2.y);
  }
////////////////////////////////////////
if (loc.dist(loc2) < sz/2 + sz2/2) { 
    if (loc.x < loc2.x) {  
      vel.x = -abs(vel.x);
      vel2.x = abs(vel2.x);
      fill(255,0,0);
    } else {
      vel.x = abs(vel.x);
      vel2.x = -abs(vel2.x);
      fill(0,0,255);
    }
    if (loc.y < loc2.y) {
      vel.y = -abs(vel.y);
      vel2.y = abs(vel2.y);
      fill(255,0,0);
    } else {
      vel.y = abs(vel.y);
      vel2.y = -abs(vel2.y);
      fill(0,0,255);
    }
  }


}

