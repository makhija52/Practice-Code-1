class particle{
 ArrayList<particle> 
  PVector loc, vel, acc;
  float sz;
  
  particle(){
   loc= new PVector (mouseX,mouseY);
  vel = new PVector (random(-5,5), random(1,5)); 
  }
  
  void display(){
   ellipse(loc.x,loc.y,sz,sz); 
  }
  void move(){
    loc.add(vel);
  }
}
