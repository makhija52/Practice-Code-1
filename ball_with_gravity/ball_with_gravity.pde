float locx,locy;  //location
float velx,vely; //velocity
int sz=20;
float grav;
void setup(){
  size(800,600);
  locx=width/2;
  locy=height/2;
  velx=0;
  vely=1;
  grav=1;
}

void draw(){
 background(0);
 vely+=grav;
 locx+=velx;
 locy+=vely;
 
ellipse(locx,locy,sz,sz); 
if(locy+sz/2>=height){vely*=-1;
}
if(locy-sz/2<=0){vely*=-1;
}
}
