class BouncyBall {
  PVector loc, vel, acc;
  float sz;
  float speed;
  float hue;

  BouncyBall(float tempsz, float tempspeed) {
    sz = tempsz;
    speed = tempspeed;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    acc = new PVector();
  
  }

  void display() {
    fill(255,0,0);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void wallBounce() {
    if (loc.x + sz/2 > width) {
      vel.x = -abs(vel.x);
    } 
    if (loc.x - sz/2 < 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + sz/2 > height) {
      vel.y = -abs(vel.y);
    }
    if (loc.y - sz/2 < 0) {
      vel.y = abs(vel.y);
    }
  }

  void collide(BouncyBall other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.setMag(speed);
    }
  }
  void goAway() {
    loc.set(width*10, height*10);
    vel.set(0, 0);
  }
  void teleport() {
    loc.set(random(0,800), random(0,600));
    vel = PVector.random2D();
  }

  void isSuckedIn(BlackHole doom) {
    acc = PVector.sub(doom.loc, loc);
    acc.setMag(.01);
  }
}
