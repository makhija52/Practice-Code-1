ArrayList<Particle> allmyparticles=new ArrayList<Particle>();

void setup() {
  size(800, 600);
  noStroke();
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
    loc=new PVector(width/2, height*.2);
    vel=new PVector(random(-3, 3), random(-5, -2));
    a=new PVector(0, .05);
    sz=random(3, 40);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
    fill(random(255),random(255),random(255));
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

