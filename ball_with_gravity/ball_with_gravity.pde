
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
//              Ball Array For Loops             //
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



