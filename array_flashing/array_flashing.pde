int count = 30;
float[] x=new float[count];
float[] y=new float [count];

void setup() {
  size(600,400);
  for (int i = 0; i< count; i++) {
    x[i]= int(random(width));
    y[i]= int (random(height));
  }
}

void draw() {
  background(0);
  x[5]= random(width);
  y[5]= random (height);
  for (int i =0; i<5; i++) {
    x[i] = x[i+1];
    y[i]= y[i+1];
  }
  for (int i=0; i< 5; i++) {
    ellipse(x[i], y[i], 20+i*2, 20+i*20);
  }
}

