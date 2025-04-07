int green;
float triangleX;
float triangleY;
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
  arcCurrent=arcCurrent+1;
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
  if (green>150) {
    green=150;
  }
  triangleX= 50*cos(radians(arcCurrent));
  triangleY= 50*sin(radians(arcCurrent));
}

void portal(float x,float y) {
 
  strokeWeight(10);
  stroke(red, green, 0);
  arc(x, y, 100, 100, 0, radians(arcCurrent));
  stroke(#FA7900);
  translate(triangleX+250, triangleY+400);
  pushMatrix();
  fill(#00E36B);
  rotate(radians(arcCurrent));
  noStroke();
  
  triangle(0, 0, 50, 0, 0, -50);
  fill(0);
  popMatrix();
  
}
