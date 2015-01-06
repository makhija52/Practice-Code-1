class Particle {
  //////////////////////////////////////////////////////
  //                                                  //
  //        Initialized and Defined Variables         //
  //                                                  //
  //////////////////////////////////////////////////////
  PVector loc, vel, a;
  float sz;
  color col;
  Particle() {
    loc=new PVector(width/2, height*.25);
    vel=new PVector(random(-3, 3), random(-5, -2));
    a=new PVector(0, .05);
    sz=random(3, 40);
    colorMode(HSB, 360, 100, 100, 100); 
    col=color(frameCount%360, 100, 100, 100);
  }
  ////////////////////////////////////////////////////
  //                                                //
  //                 Display Method                 //
  //                                                //
  ////////////////////////////////////////////////////
  void display() {


    fill(col);
    ellipse(loc.x, loc.y, sz, sz);
  }
  ///////////////////////////////////////////////////////
  //                                                   //
  // Method to make the ornaments fall out of the tree //
  //                                                   //
  ///////////////////////////////////////////////////////
  void move() {
    vel.add(a);
    loc.add(vel);
  }

}
