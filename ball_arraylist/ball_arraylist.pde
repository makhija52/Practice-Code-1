
ArrayList <GravityBall> ball = new ArrayList<GravityBall>();
int maxBalls=100;
void setup() {
  size(800, 600);
}





void draw() {
  background(0);
  ball.add(new GravityBall(30));
  for (int i=0; i<ball.size (); i++) {
    GravityBall b = ball.get(i);
    b.display();
    b.bounce();
    b.move();
    for(int j=0;j<ball.size();j++){
     if(i!=j){
      GravityBall b2 = ball.get(j);
          b.collision(b2);

     } 
    }
    if (ball.size() > maxBalls) { 
      ball.remove(0);
    }
  }
}

