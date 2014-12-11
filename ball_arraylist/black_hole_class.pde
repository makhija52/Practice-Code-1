class BlackHole {
  PVector location;
  float sz;

  BlackHole() {
    location = new PVector(random(width), random(height));
    size = 5;
  }

  void display() {
    fill(0);
    ellipse(location.x, location.y, size, size);
  }

  void consumes(BouncyBall food) {
    if (location.dist(food.loc) < size/2 + food.size/2) {
     
      food.teleport();
      size+=food.sz/100;
      
    }
  }
}

