GravityBall ball;

void setup() {
  size(800, 600);
  ball = new GravityBall();
}




void draw() {
  background(0);
  ball.bounce();
  ball.move();
  ball.display();
}

class GravityBall {
  PVector loc;  //location
  PVector vel; //velocity
  int sz;      //size
  PVector grav;  //acceleration 

  GravityBall() {
    loc = new PVector(width/2, height/2); 
    vel = new PVector(5, 1);
    grav = new PVector(0, .1);
    sz = 40;
  }


  void display() {
    fill(255);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(grav);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y+sz/2>=height) {
      vel.y=-abs(vel.y);
      loc.y=height-sz/2;
      vel.x*=.95;
    }
    if (loc.y-sz/2<=0) {
      vel.y*=-1;
    }
    if (loc.x+sz/2>width) {
      vel.x=-abs(vel.x)*.9;
    }
    if (loc.x-sz/2<0) {
      vel.x=abs(vel.x)*.9;
    }
  }
}

