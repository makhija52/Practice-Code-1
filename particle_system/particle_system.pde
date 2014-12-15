ArrayList<particle> particles = new ArrayList <particle>();
PVector loc, vel, acc;
float life;
void setup(){
 size(800,600);

}
void draw(){
particles.add(new particle(mouseX,mouseY));
background(0);
for(i=particles.size()-1;i>=0; i--){
  particle = particles.get(i); 
  particle.display();
  particle.move();
  particle.update();
  
}
}
void display(){
  ellipse(loc.x,loc.y,sz,sz);
}

void move(){
  vel.add(acc);
  loc.add(vel);
}

void update(){
 life-=1; 
}

