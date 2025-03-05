int circlex;
int thickness;
void setup() {
  size(800,800);
  background(255);
  circlex = 425;
  thickness = 1;
}

void draw() {
  strokeWeight(1);
  stroke(0);
  fill(200);
  rect(0,0,800,115);
  //black
  strokeWeight(2);
  tactile(20,15,50,25);
  fill(0);
  rect(20,15,50,25);
  tactile(20,45,50,25);
  fill(125);
  rect(20,45,50,25);
  tactile(20,75,50,25);
  fill(255);
  rect(20,75,50,25);
  //red
  tactile(75,15,50,25);
  fill(155,0,0);
  rect(75,15,50,25);
  tactile(75,45,50,25);
  fill(219,11,15);
  rect(75,45,50,25);
  tactile(75,75,50,25);
  fill(252,161,161);
  rect(75,75,50,25);
  //orange yellow
  tactile(130,15,50,25);
  fill(255,116,21);
  rect(130,15,50,25);
  tactile(130,45,50,25);
  fill(255,215,0);
  rect(130,45,50,25);
  tactile(130,75,50,25);
  fill(250,239,136);
  rect(130,75,50,25);
  //green
  tactile(185,15,50,25);
  fill(28,116,27);
  rect(185,15,50,25);
  tactile(185,45,50,25);
  fill(0,255,0);
  rect(185,45,50,25);
  tactile(185,75,50,25);
  fill(113,232,110);
  rect(185,75,50,25);
  //blue
  tactile(240,15,50,25);
  fill(0,0,255);
  rect(240,15,50,25);
  tactile(240,45,50,25);
  fill(0,151,242);
  rect(240,45,50,25);
  tactile(240,75,50,25);
  fill(0,242,220);
  rect(240,75,50,25);
  //purple
  tactile(295,15,50,25);
  fill(75,12,144);
  rect(295,15,50,25);
  tactile(295,45,50,25);
  fill(138,31,255);
  rect(295,45,50,25);
  tactile(295,75,50,25);
  fill(196,151,245);
  rect(295,75,50,25);
  //brown
  tactile(350,15,50,25);
  fill(112,66,20);
  rect(350,15,50,25);
  tactile(350,45,50,25);
  fill(160,82,45);
  rect(350,45,50,25);
  tactile(350,75,50,25);
  fill(195,176,145);
  rect(350,75,50,25);
  
  //thickness slider
  stroke(0);
  fill(105,211,209);
  rect(425,37.5,150,15);
  circle(575,45,15);
  noStroke();
  rect(525,39,47,12);
  stroke(0);
  fill(44,81,157);
  arc(425, 45, 15, 15, PI/2, 3 * PI/2);
  noStroke();
  rect(425,38.5,circlex - 425, 12.5);
  //white circle slider
  stroke(0);
  fill(255);
  circle(circlex,45,15);
}

void tactile(int x, int y, int w, int l) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + l) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void mouseReleased() {
  mouseFunction();
  if (mouseX > 417.5 && mouseX < 425 && mouseY > 37.5 && mouseY < 52.5) {
    circlex = 425;
  }
  if (mouseX > 575 && mouseX < 582.5  && mouseY > 37.5 && mouseY < 52.5) {
    circlex = 575;
  }
}

void mouseDragged() {
  mouseFunction();
  strokeWeight(thickness);
  line(pmouseX, pmouseY,mouseX,mouseY);
}

void mouseFunction() {
  if (mouseX > 425 && mouseX < 575  && mouseY > 37.5 && mouseY < 52.5) {
    circlex = mouseX;
  }
}
