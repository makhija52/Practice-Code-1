PImage pic1;

void setup(){
 size(800,600); 
pic1 = loadImage("i-don-t-always-use-computers.jpg");
}

void draw(){
  image(pic1,mouseX,mouseY,pic1.width,pic1.height);
}
