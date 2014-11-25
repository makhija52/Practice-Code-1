int count=500;
PVector [] loc= new PVector [count];
PVector [] vel= new PVector [count];
PVector [] a= new PVector [count];
float [] sz=new float[count];
void setup(){
  size(800,600);
  for(int i=0;i<count;i++){
  sz[i]=(random(3,10));
  loc[i]= new PVector(random(0,width),random(0,height));
  vel[i]= new PVector(0,1);
  a[i]=   new PVector(0,.1);
  
  }
noStroke();
fill(255,150);

}

void draw(){
  background(0,20,70);
  for(int i=0;i<count;i++){
 vel[i].add(a[i]);
    loc[i].add(vel[i]);
    vel[i].limit(3);
   
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    
    a[i].x = random(-.1, .1);
  
  }
  
  }

