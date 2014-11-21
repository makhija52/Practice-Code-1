int count=2;
float [] x;
float [] y;
float [] sz;
PVector [] loc;
PVector [] mouse;
PVector [] vel;
PVector[] a;
float []x2;
float []y2;
float []sz2;
PVector loc2;
PVector[] vel2; 
PVector[] a2;
void setup() {
  size(800, 600);
  for (int i=0; i<count; i++) {
    sz[i]=random(20, 50); 


    loc[i]=new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));

    vel[i]=PVector.random2D();
    a[i]=new PVector(0, 0);
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
        fill(255, 0, 0);
      } else {
        vel.x = abs(vel.x);
        vel2.x = -abs(vel2.x);
        fill(0, 0, 255);
      }
      if (loc.y < loc2.y) {
        vel.y = -abs(vel.y);
        vel2.y = abs(vel2.y);
        fill(255, 0, 0);
      } else {
        vel.y = abs(vel.y);
        vel2.y = -abs(vel2.y);
        fill(0, 0, 255);
      }
    }
  }

