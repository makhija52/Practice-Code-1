PImage chtree;
////////////////////////////////////////////////////
//                                                //
//               Created ArrayList                //
//                                                //
////////////////////////////////////////////////////

ArrayList<Particle> allmyparticles=new ArrayList<Particle>();

////////////////////////////////////////////////////
//                                                //
//     declares array variables for snow          //
//                                                //
////////////////////////////////////////////////////

int count=500;
PVector [] loc1= new PVector [count];
PVector [] vel1= new PVector [count];
PVector [] a1= new PVector [count];
float [] sz1=new float[count];
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  ////////////////////////////////////////////////////
  //                                                //
  //      inititializes snowfall variables          //
  //                                                //
  ////////////////////////////////////////////////////

  for (int i=0; i<count; i++) {
    sz1[i]=(random(3, 10));
    loc1[i]= new PVector(random(0, width), random(0, height));
    vel1[i]= new PVector(0, 1);
    a1[i]=   new PVector(0, .1);
  }
  noStroke();

  ////////////////////////////////////////////////////
  //                                                //
  //       Loads image of christmas tree            //
  //                                                //
  ////////////////////////////////////////////////////

  chtree = loadImage("christmas tree.png");
}


void draw() {
  background(210, 100, 50);
  fill(255, 150);

  //////////////////////////////////////////////////////
  //                                                  //
  //               Makes snow move                    //
  //                                                  //
  //////////////////////////////////////////////////////

  for (int i=0; i<count; i++) {
    vel1[i].add(a1[i]);
    loc1[i].add(vel1[i]);
    vel1[i].limit(10);

    ////////////////////////////////////////////////////
    //                                                //
    //       set up array variables for snow          //
    //                                                //
    ////////////////////////////////////////////////////

    ellipse(loc1[i].x, loc1[i].y, sz1[i], sz1[i]);

    a1[i].x = random(-.1, .1);
    if (loc1[i].y - sz1[i]/2 > height) {
      loc1[i].set(random(width), random(-height, -sz1[i]/2));
      vel1[i].set(0, 1);
    }
  }
  ////////////////////////////////////////////////////
  //                                                //
  //           Adds the Christmas tree              //
  //                                                //
  ////////////////////////////////////////////////////

  image(chtree, width/4.6, height/4, chtree.width/5, chtree.height/5);  

  ////////////////////////////////////////////////////
  //                                                //
  //  When the mouse is pressed, ornaments appear   //
  //                                                //
  ////////////////////////////////////////////////////

  if (mousePressed) {
    allmyparticles.add(new Particle());
  }


  ////////////////////////////////////////////////////
  //                                                //
  //           Counts down the paricles             //
  //                                                //
  ////////////////////////////////////////////////////

  for (int i=allmyparticles.size ()-1; i>=0; i--) {
    Particle currentparticle=allmyparticles.get(i);

    ////////////////////////////////////////////////////
    //                                                //
    //       Creates particles as part of the         //
    //       if statement when mouse is pressed       //
    //                                                //
    //                                                // 
    ////////////////////////////////////////////////////

    currentparticle.display();
    currentparticle.move();
    if (currentparticle.loc.y+currentparticle.sz>height || currentparticle.loc.y-currentparticle.sz<0) {
      allmyparticles.remove(i);
    }
    if (currentparticle.loc.x+currentparticle.sz>width || currentparticle.loc.x-currentparticle.sz<0) {
      allmyparticles.remove(i);
    }
  }
}

