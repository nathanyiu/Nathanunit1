int green;
int arcCurrent;
int red;
int colorTimer;
void setup() {
  arcCurrent=10;
  size(800, 500);
  fill(0);
  rect(0, 0, 800, 500);
  green=10;
}

void draw() {
  background(0);
  portal(250, 400);
  arcCurrent=arcCurrent+2;
  if (red==255) {
    colorTimer=1;
  }
  if (red==200) {
    colorTimer=0;
  }
  if (colorTimer==1) {
    red=red-5;
    green=green-5;
  }
  if (colorTimer==0) {
    red=red+5;
    green=green+5;
  }
  println(red, green);
  if (green) 
}

void portal(float x,float y) {
 
  strokeWeight(10);
  stroke(red, green, 0);
  arc(x, y, 100, 100, 0, radians(arcCurrent));
  stroke(#FA7900);
  
}
