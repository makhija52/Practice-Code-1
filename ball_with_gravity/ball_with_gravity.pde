float locx, locy;  //location
float velx, vely; //velocity
int sz=20;
float grav;
void setup() {
  size(800, 600);
  locx=width/2;
  locy=height/2;
  velx=5;
  vely=1;
  grav=1;
}

void draw() {
  background(0);
  vely+=grav;
  locx+=velx;
  locy+=vely;

  ellipse(locx, locy, sz, sz); 
  if (locy+sz/2>=height) {
    vely=-abs(vely);
    locy=height-sz/2;
    velx*=.95;
  }
  if (locy-sz/2<=0) {
    vely*=-1;
    
  }
  if(locx+sz/2>width){
   velx=-abs(velx)*.9; 
  }
  if(locx-sz<0){
   velx=abs(velx)*.9; 
  }


}
