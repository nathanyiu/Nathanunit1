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
  
  

}

void draw() {
  
  portal(x, y);
  //background(0);
  //portal(250, 400);
  arcCurrent=arcCurrent+100;
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
}

void portal(float x, float y) {
  circleX=x;
  circleY=Y;
  strokeWeight(10);
  stroke(red, green, 0);
  arc(x, y, radius, radius, 0, radians(arcCurrent));
  stroke(#FA7900);
 
  sparks();
  
  
  //stroke(0);
  //strokeWeight(80);
  //arc(x, y, 110, 110, 0, radians(arcCurrent-10));
}
