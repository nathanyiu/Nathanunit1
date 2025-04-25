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
PGraphics portal;
int troops;
int ran;
void setup() {
  numberOfCharacters=0;
  background();
  arcCurrent=10;
  size(2000, 1000);
  background();
  fill(0);
  characterSize=50;
  count = 0;
  green=10;
  x=random(0, 800);
  y=random(350, 750);
  radius=random(250, 300);
  pg=createGraphics(2000, 1000);
  portal=createGraphics(2000, 1000);
  character1X=x;
  character2X=x;
  character2Y=y;
  ran=1;
  for (int z = 0; z <= 100; z++) {
    check();
  }
}
void draw() {
  fill(50);
  rect(0, 350, 800, 400);

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
  fill(0);
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
  fill(0);
  rect(0, 750, 2000, 250);
  march();
}
void check() {
  if (x+radius/2+40>900) {
    x=random(0, 800);
  }
  if (y-radius/2-40<350) {
    y=random(350, 750);
  }
  if (x-radius/2<0) {
    x=random(0, 800);
    character1X=x;
  }
  character1X=x;
  character2X=x;
  character2Y=y;
  character3X=x;
  character3Y=y;
  character4X=x;
  character4Y=y;
}
