int green;
float triangleX;
float triangleY;
int arcCurrent;
int red;
int colorTimer;
float sparkX, sparkY;
int count;
float circleX, circleY;
float x, y;
float radius;
PGraphics pg;
int timer;
PGraphics portal;
int troops;
void setup() {
  arcCurrent=10;
  size(800, 500);
  fill(0);
  rect(0, 0, 800, 500);
  count = 0;
  green=10;
  x=random(0, 800);
  y=random(0, 500);
  radius=random(100, 300);
  pg=createGraphics(800, 500);
  portal=createGraphics(800, 500);
}

void draw() {
  background(0);
  portal(x, y);
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
  if (green>150) {
    green=150;
  }
  triangleX= 50*cos(radians(arcCurrent))+x;
  triangleY= 50*sin(radians(arcCurrent))+y;
  timer=timer+1;
  println(x-radius, character1X);
}

void portal(float x, float y) {
  circleX=x;
  circleY=Y;
  portal.beginDraw();
  portal.strokeWeight(10);
  portal.stroke(red, green, 0);
  portal.fill(0);
  portal.arc(x, y, radius, radius, 0, radians(arcCurrent));
  portal.stroke(#FA7900);
  portal.endDraw();
  sparks();
  image(portal, 0, 0);
  march();
}
