ArrayList<Particle> allmyparticles=new ArrayList<Particle>();
PImage golfball;
void setup() {
  size(800, 600);
  noStroke();
  golfball = loadImage("golf-ball1.jpg");
}


void draw() {
background(0);
  if (mousePressed) {
    allmyparticles.add(new Particle());
  }
  for (int i=allmyparticles.size ()-1; i>=0; i--) {
    Particle currentparticle=allmyparticles.get(i);
    currentparticle.display();
    currentparticle.move();
//    if(currentparticle.isdead());{
//     allmyparticles.remove(i); 
//    }
  }
}

class Particle {
  PVector loc, vel, a;
  float sz;
  Particle() {
    loc=new PVector(width/2, height*.5);
    vel=new PVector(random(-3, 3), random(-5, -2));
    a=new PVector(0, .05);
    sz=random(3, 40);
  }

  void display() {
    image(golfball,loc.x,loc.y,golfball.width*.1,golfball.height*.1);
//    ellipse(loc.x, loc.y, sz, sz);
//    fill(random(255),random(255),random(255));
  }
  void move() {
    vel.add(a);
    loc.add(vel);
  }
  
//  boolean isdead(){
//    if(loc.y-sz/2>height){
//     return true;
//     }
//     else{
//      return false; 
//     }
//  }
}

