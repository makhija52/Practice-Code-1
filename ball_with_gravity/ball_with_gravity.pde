
///////////////////////////////////////////////////
//                                               //
//          Defined Gravity Ball Array           //
//                                               //
///////////////////////////////////////////////////


GravityBall[] ball=new GravityBall[10];
void setup() {
  size(800, 600);

  for (int i=0; i<ball.length; i++) {
    ball[i]=new GravityBall();
  }
}




void draw() {
  background(0);
///////////////////////////////////////////////////
//                                               //
//              Ball Array For Loop              //
//                                               //
///////////////////////////////////////////////////

  for (int i=0; i<ball.length; i++) {
    ball[i].bounce();
    ball[i].move();
    ball[i].display();
    for (int j = 0; j < ball.length; j++) {
      if(i!=j){
      ball[i].collision(ball[j]);
      }
    }
  }
}

///////////////////////////////////////////////////
//                                               //
//       Constructor for ravityBall Class        //
//                                               //
///////////////////////////////////////////////////

class GravityBall {
  PVector loc;  //location
  PVector vel; //velocity
  float sz;      //size
  PVector grav;  //acceleration 

  GravityBall() {
    loc = new PVector(random(0, width), random(0, height)); 
    vel = new PVector(random(0, 5), random(0, 1));
    grav = new PVector(0, .1);
    sz = random(0, 100);
  }

///////////////////////////////////////////////////
//                                               //
//               A Ball is made                  //
//                                               //
///////////////////////////////////////////////////

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, sz, sz);
  }
///////////////////////////////////////////////////
//                                               //
//                Balls move                     //
//                                               //
///////////////////////////////////////////////////

  void move() {
   // vel.add(grav);
    loc.add(vel);
  }
///////////////////////////////////////////////////
//                                               //
//          Balls bounce off walls               //
//                                               //
///////////////////////////////////////////////////

  void bounce() {
    if (loc.y+sz/2>=height) {
      vel.y=-abs(vel.y);
      loc.y=height-sz/2;
      vel.x*=.95;
    }
    if (loc.y-sz/2<=0) {
      vel.y*=-1;
    }
    if (loc.x+sz/2>width) {
      vel.x=-abs(vel.x)*.9;
    }
    if (loc.x-sz/2<0) {
      vel.x=abs(vel.x)*.9;
    }
  }

///////////////////////////////////////////////////
//                                               //
//          Balls bounce off each other          //
//                                               //
///////////////////////////////////////////////////
  void collision(GravityBall other) {
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      vel=PVector.sub(loc, other.loc);
      vel.normalize();
    }
  }
}

