float locx, locy;
float velx, vely;
float ax, ay;
float sz=20;
void setup() {
  size(800, 600);
  locx=width/2;
  locy=height/2;
  velx=1;
  vely=5;
  ax=0;
  ay=0;
}

void draw() {
  velx+=ax;
  vely+=ay;

  locx+=velx;
  locy+=vely;

fill(random(255),random(255),random(255));
  ellipse(locx, locy, sz, sz);

  if (locx<0) {
    locx=width; 
    ax=(random(-.1, .1));
  }

  if (locx>width) {
    locx=0; 
    ax=(random(-.1, .1));
  }

  if (locy>height) {
    locy=0;
    ay=(random(-.1, .1));
  }
  if (locy<0) {
    locy=height;
    ay=(random(-.1, .1));
  }
  
  velx=constrain(velx,-3,3);
  vely=constrain(vely,-3,3);
}

void keyPressed() {
 if(key==CODED){
 
  if(keyCode==UP){
   ay=-.15; 
   println("hbhtjn");
  }
  
  if(keyCode==DOWN){
   ay=.15; 
  }
  
  if(keyCode==RIGHT){
   ax=.15; 
  }
  
  if(keyCode==LEFT){
   ax=-.15; 
  }
  
 }
  
}
