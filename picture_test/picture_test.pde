PImage pic1;

void setup(){
 size(800,720); 
pic1 = loadImage("i-don-t-always-use-computers.jpg");
noCursor();
}

void draw(){
  background(255);
  image(pic1,mouseX,mouseY,pic1.width/2,pic1.height/2);
}
