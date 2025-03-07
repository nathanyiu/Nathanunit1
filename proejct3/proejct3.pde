float circlex;
float thickness;
float bucketToggle;
PImage brush;
PImage eraser;
PImage bucket;
color brushColor = color(0);
color canvas = color(255);
PGraphics pg;
void setup() {
  pg= createGraphics(800, 800);
  size(800, 800);
  background(255);
  circlex = 425;
  thickness = 1;
  bucketToggle = -1;
  brush = loadImage("cartoon brush.png");
  eraser = loadImage("eraser.png");
  bucket = loadImage("bucket.png");
  fill(canvas);
  rect(0, 115, 800, 685);
  
}

void draw() {
  allStuff();
  image(pg, 0, 0);
}

void tactile(int x, int y, int w, int l) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + l) {
    stroke(255);
  } else {
    stroke(0);
  }
}
void mouseClicked() {
  if (mouseX > 0 && mouseY > 115) {
    noStroke();
    fill(brushColor);
    circle(mouseX, mouseY, thickness);
  }
}
void mouseReleased() {
  mouseFunction();
  thickness = map(circlex, 425, 575, 1, 60);
  if (mouseX > 540 && mouseX < 580 && mouseY > 60 && mouseY < 100) {
    bucketToggle *= -1;
  }
  if (mouseX > 0 && mouseY > 115 && bucketToggle > 0) {
    fill(brushColor);
    rect(0, 115, 800, 685);
  }
  if (mouseX > 417.5 && mouseX < 425 && mouseY > 37.5 && mouseY < 52.5) {
    circlex = 425;
    thickness = 1;
  }
  if (mouseX > 575 && mouseX < 582.5  && mouseY > 37.5 && mouseY < 52.5) {
    circlex = 575;
    thickness = 60;
  }
  if (mouseX > 704 && mouseX < 784 && mouseY > 80 && mouseY < 105) {
    canvas = color(255);
  }
  if (mouseX > 425 && mouseX < 465 && mouseY > 60 && mouseY < 100) {
    brushColor = color(0);
    bucketToggle = -1;
  }
  if (mouseX > 480 && mouseX < 520 && mouseY > 60 && mouseY < 100) {
    brushColor = color(255);
    bucketToggle = -1;
  }
  changeColor();

  textRound();
}
void mouseDragged() {
  pg.beginDraw();
  pg.clear();
  mouseFunction();
  thickness = map(circlex, 425, 575, 1, 60);
  if (mouseX > 0 && mouseY > 115) {
    pg.stroke(brushColor);
    pg.strokeWeight(thickness);
    pg.line(pmouseX, pmouseY, mouseX, mouseY);
    pg.endDraw();
  }
  textRound();
}

void mouseFunction() {
  if (mouseX > 425 && mouseX < 575  && mouseY > 37.5 && mouseY < 52.5) {
    circlex = mouseX;
  }
  textRound();
}
void allStuff() {
  strokeWeight(1);
  stroke(0);
  fill(200);
  rect(0, 0, 800, 115);
  //black
  strokeWeight(2);
  tactile(20, 15, 50, 25);
  fill(0);
  rect(20, 15, 50, 25);
  tactile(20, 45, 50, 25);
  fill(125);
  rect(20, 45, 50, 25);
  tactile(20, 75, 50, 25);
  fill(211);
  rect(20, 75, 50, 25);
  //red
  tactile(75, 15, 50, 25);
  fill(155, 0, 0);
  rect(75, 15, 50, 25);
  tactile(75, 45, 50, 25);
  fill(219, 11, 15);
  rect(75, 45, 50, 25);
  tactile(75, 75, 50, 25);
  fill(252, 161, 161);
  rect(75, 75, 50, 25);
  //orange yellow
  tactile(130, 15, 50, 25);
  fill(255, 116, 21);
  rect(130, 15, 50, 25);
  tactile(130, 45, 50, 25);
  fill(255, 215, 0);
  rect(130, 45, 50, 25);
  tactile(130, 75, 50, 25);
  fill(250, 239, 136);
  rect(130, 75, 50, 25);
  //green
  tactile(185, 15, 50, 25);
  fill(28, 116, 27);
  rect(185, 15, 50, 25);
  tactile(185, 45, 50, 25);
  fill(0, 255, 0);
  rect(185, 45, 50, 25);
  tactile(185, 75, 50, 25);
  fill(113, 232, 110);
  rect(185, 75, 50, 25);
  //blue
  tactile(240, 15, 50, 25);
  fill(0, 0, 255);
  rect(240, 15, 50, 25);
  tactile(240, 45, 50, 25);
  fill(0, 151, 242);
  rect(240, 45, 50, 25);
  tactile(240, 75, 50, 25);
  fill(0, 242, 220);
  rect(240, 75, 50, 25);
  //purple
  tactile(295, 15, 50, 25);
  fill(75, 12, 144);
  rect(295, 15, 50, 25);
  tactile(295, 45, 50, 25);
  fill(138, 31, 255);
  rect(295, 45, 50, 25);
  tactile(295, 75, 50, 25);
  fill(196, 151, 245);
  rect(295, 75, 50, 25);
  //brown
  tactile(350, 15, 50, 25);
  fill(112, 66, 20);
  rect(350, 15, 50, 25);
  tactile(350, 45, 50, 25);
  fill(160, 82, 45);
  rect(350, 45, 50, 25);
  tactile(350, 75, 50, 25);
  fill(195, 176, 145);
  rect(350, 75, 50, 25);

  //thickness slider
  stroke(0);
  fill(105, 211, 209);
  rect(425, 37.5, 150, 15);
  circle(575, 45, 15);
  noStroke();
  rect(525, 39, 47, 12);
  stroke(0);
  fill(44, 81, 157);
  arc(425, 45, 15, 15, PI/2, 3 * PI/2);
  noStroke();
  rect(425, 38.5, circlex - 425, 12.5);
  //white circle slider
  stroke(0);
  fill(255);
  circle(circlex, 45, 15);
  //show thickness text
  textRound();
  //brush image
  tactile(425, 60, 40, 40);
  fill(200);
  square(425, 60, 40);
  image(brush, 425, 60, 40, 40);
  //eraser image
  tactile(480, 60, 40, 40);
  fill(200);
  square(480, 60, 40);
  image(eraser, 480, 60, 40, 40);
  //bucket button
  tactile(540,60,40,40);
  fill(200);
  square(540,60,40);
  image(bucket,540,60,40,40);
  //clear all button
  tactile(704, 80, 80, 25);
  fill(0);
  rect(704, 80, 80, 25);
  fill(255);
  textSize(20);
  text("Clear all", 710, 100);
}
void changeColor() {
  if (mouseX > 20 && mouseX < 70 && mouseY > 15 && mouseY < 40) {
    brushColor = color(0);
  }
  if (mouseX > 20 && mouseX < 70 && mouseY > 45 && mouseY < 70) {
    brushColor = color(125);
  }
  if (mouseX > 20 && mouseX < 70 && mouseY > 75 && mouseY < 100) {
    brushColor = color(211);
  }
  if (mouseX > 75 && mouseX < 125 && mouseY > 15 && mouseY < 40) {
    brushColor = color(155, 0, 0);
  }
  if (mouseX > 75 && mouseX < 125 && mouseY > 45 && mouseY < 70) {
    brushColor = color(219, 11, 15);
  }
  if (mouseX > 75 && mouseX < 125 && mouseY > 75 && mouseY < 100) {
    brushColor = color(252, 161, 161);
  }
  if (mouseX > 130 && mouseX < 180 && mouseY > 15 && mouseY < 40) {
    brushColor = color(255, 116, 21);
  }
  if (mouseX > 130 && mouseX < 180 && mouseY > 45 && mouseY < 70) {
    brushColor = color(255, 215, 0);
  }
  if (mouseX > 130 && mouseX < 180 && mouseY > 75 && mouseY < 100) {
    brushColor = color(250, 239, 136);
  }
  if (mouseX > 185 && mouseX < 235 && mouseY > 15 && mouseY < 40) {
    brushColor = color(28, 116, 27);
  }
  if (mouseX > 185 && mouseX < 235 && mouseY > 45 && mouseY < 70) {
    brushColor = color(0, 255, 0);
  }
  if (mouseX > 185 && mouseX < 235 && mouseY > 75 && mouseY < 100) {
    brushColor = color(113, 232, 110);
  }
  if (mouseX > 240 && mouseX < 290 && mouseY > 15 && mouseY < 40) {
    brushColor = color(0, 0, 255);
  }
  if (mouseX > 240 && mouseX < 290 && mouseY > 45 && mouseY < 70) {
    brushColor = color(0, 151, 242);
  }
  if (mouseX > 240 && mouseX < 290 && mouseY > 75 && mouseY < 100) {
    brushColor = color(0, 242, 220);
  }
  if (mouseX > 295 && mouseX < 345 && mouseY > 15 && mouseY < 40) {
    brushColor = color(75, 12, 144);
  }
  if (mouseX > 295 && mouseX < 345 && mouseY > 45 && mouseY < 70) {
    brushColor = color(138, 31, 255);
  }
  if (mouseX > 295 && mouseX < 345 && mouseY > 75 && mouseY < 100) {
    brushColor = color(196,151,245);
  }
  if (mouseX > 350 && mouseX < 400 && mouseY > 15 && mouseY < 40) {
    brushColor = color(112,66,20);
  }
  if (mouseX > 350 && mouseX < 400 && mouseY > 45 && mouseY < 70) {
    brushColor = color(160,82,45);
  }
  if (mouseX > 350 && mouseX < 400 && mouseY > 75 && mouseY < 100) {
    brushColor = color(195,176,145);
  }
  
}

void textRound() {
  fill(0);
  stroke(10);
  textSize(20);
  text(round(thickness), 590, 50);
}
