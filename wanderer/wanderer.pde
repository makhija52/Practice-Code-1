float locx, locy;
float velx, vely;
float ax, ay;
float sz=20;
PVector loc;
PVector vel;
PVector a;
void setup() {
  size(800, 600);
  loc=new PVector(width/2,height/2);
  vel=new PVector(1,5);
  
  a=new PVector(0,0);
}

void draw() {
  vel.add(a);
  loc.add(vel);

fill(random(255),random(255),random(255));
  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x<0) {
    loc.x=width; 
    a.x=(random(-.1, .1));
  }

  if (loc.x>width) {
    loc.x=0; 
    a.x=(random(-.1, .1));
  }

  if (loc.y>height) {
    loc.y=0;
    a.y=(random(-.1, .1));
  }
  if (loc.y<0) {
    loc.y=height;
    a.y=(random(-.1, .1));
  }
  
  vel.x=constrain(vel.x,-3,3);
  vel.y=constrain(vel.y,-3,3);
}

void keyPressed() {
 if(key==CODED){
 
  if(keyCode==UP){
   a.y=-.15; 
   println("hbhtjn");
  }
  
  if(keyCode==DOWN){
   a.y=.15; 
  }
  
  if(keyCode==RIGHT){
   a.x=.15; 
  }
  
  if(keyCode==LEFT){
   a.x=-.15; 
  }
  
 }
  
}
