int ran; //<>//
void setup() {
  size(2000, 1000);
  ran = 1;
  background();
}
void draw() {
}
void background() {
  background(254, 252, 216);//81
  noStroke();
  fill(30);
  rect(0, 750, 2000, 1000);
  fill(50);
  rect(0, 100, 2000, 650);
  changeBack();
  for (int i = 0; i < 15; i++) {
    rays(random(1100, 2050));
  }
  //clouds
  cloud(0, -30, 0);
  cloud(00, 0, 0);
  cloud(400, -20, 0);
  cloud(820, -40, 1);
  cloud(1400, -20, 1);
}
void sun() {
  float triLeft = 0;
  float triRight = 2000;
  float triHeight = 800;
  int col = 30;
  while (col != 255) {
    triLeft = map(col, 30, 255, 0, 1900);
    triRight = map(col, 30, 255, 2000, 1900);
    triHeight = map(triLeft, 0, 1900, 800, 30);
    noStroke();
    fill(col, col, col, 60);
    triangle(1900, 30, triLeft, triHeight, triRight, triHeight);
    col++;
  }
  fill(255);
  circle(1900, 30, 220);
  fill(255, 255, 255, 80);
  circle(1900, 30, 400);
}
void cloud(int x, int y, int sun) {
  pushMatrix();
  ran = (int)random(1, 3);
  translate(x, y);
  stroke(0);
  fill(81);
  circle(65, 110, 150);
  circle(180, 130, 150);
  circle(290, 120, 145);
  circle(400, 50, 300);
  if (sun == 1) {
    fill(255, 222, 167);
    circle(500, 60, 250);
  }
  stroke(1);
  strokeWeight(2);
  fill(81);
  circle(460, 130, 110);
  circle(425, 85, 120);
  circle(400, 40, 110);
  circle(-30, 130, 100);
  circle(0, 80, 130);
  circle(20, 40, 110);
  noStroke();
  rect(-36, 45, 130, 50);
  rect(-10, 0, 100, 50);
  rect(10, 0, 310, 100);
  stroke(1);
  if (ran == 1) {
    ellipse(110, 70, 130, 50);
  } else {
    ellipse(300, 100, 140, 50);
    ellipse(110, 70, 130, 50);
  }
  noStroke();
  circle(430, 120, 130);
  circle(420, 90, 130);
  circle(380, 30, 100);
  rect(-30, 60, 230, 90);
  rect(200, 90, 160, 50);
  popMatrix();
}
void rays(float x) {
  int wid = (int)random(50, 100);
  color orange = color(255, 222, 167);
  color white = color(81);
  float lineX = x;
  float lineY = 100;
  while (lineY < 350) {
    float percent = map(lineY, 100, 350, 0, 1);
    lineX = map(lineY, 100, 750, x, x-200);
    color r = lerpColor(orange, white, percent);
    stroke(r, 80);
    line(lineX, lineY, lineX-wid, lineY);
    lineY++;
  }
  while (lineY != 750) {
    lineX = map(lineY, 100, 750, x, x-200);
    noStroke();
    stroke(81, 81, 81, 80);
    line(lineX, lineY, lineX-wid, lineY);
    lineY++;
  }
}
void changeBack() {
  noStroke();
  int col = 100;
  float hei = 0;
  while (col != 81) {
    hei = map(col, 100, 81, 0, 250);
    fill(col, col, col, 30);
    rect(0, 100, 2000, hei);
    col-=0.1;
  }
}
