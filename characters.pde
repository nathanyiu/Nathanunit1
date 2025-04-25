void setup() {
  size(2000, 1000);
  character();
}


void character() {
  //hulk();
  //ironMan();
  cap();
}
void cap() {
  capHead();
  capMask();
  capEyes();
  capA();
  capMouth();
}

void ironMan() {
  noStroke();
  ironManHead();
  ironManEyes();
}

void hulk() {
  noStroke();
  fill(0, 128, 0);
  circle(1000, 500, 400);
  hulkHair();
  hulkLEye();
  hulkREye();
  hulkMouth();
}
void capMouth() {
  noStroke();
  rect(962.5, 585, 75, 40);
  noStroke();
  triangle(962.75, 585, 962.75, 625, 940, 605);
  triangle(1037.25, 585, 1037.25, 625, 1060, 605);
  stroke(0);
  line(962.5, 585, 935, 610);
  line(962.5, 585, 1037.5, 585);
  line(1037.5, 585, 1065, 610);
  line(1060, 605, 1037.5, 625);
  line(1037.5, 625, 962.5, 625);
  line(962.5, 625, 940, 605);
  stroke(0);
  line(943,605,970,605);
  line(1057,605,1030,605);
}
void capHead() {
  fill(24, 73, 202);
  circle(1000, 500, 400);
}
void capA() {
  strokeWeight(2);
  quad(935, 450, 975, 450, 1000, 340, 960, 340);
  quad(1065, 450, 1025, 450, 1000, 340, 1040, 340);
  noStroke();
  rect(980, 342, 50, 30);
  rect(980, 395, 50, 30);
  stroke(0);
  strokeWeight(2);
  line(982, 426, 1018, 426);
  line(988, 394, 1012, 394);
  line(993, 373, 1007, 373);
}
void capMask() {
  //232,190,172
  strokeWeight(1);
  fill(232, 190, 172);
  quad(870, 505, 915, 480, 975, 505, 915, 530);
  quad(1130, 505, 1085, 480, 1025, 505, 1085, 530);
  triangle(890, 530, 915, 545, 890, 545);
  triangle(1110, 530, 1085, 545, 1110, 545);
  triangle(915, 545, 1000, 510, 1085, 545);
  stroke(0);
  ellipse(1000, 665, 219, 35);
  noStroke();
  rect(891, 545, 219, 120);
  stroke(0);
  line(890, 545, 890, 666);
  line(1110, 545, 1110, 666);
}
void capEyes() {
  strokeWeight(1);
  fill(255);
  ellipse(925, 505, 75, 25);
  ellipse(1075, 505, 75, 25);
  fill(24, 73, 202);
  circle(930, 505, 22);
  circle(1070, 505, 22);
  fill(0);
  circle(930, 505, 15);
  circle(1070, 505, 15);
  fill(255);
  circle(930, 500, 5);
  circle(1070, 500, 5);
}
void ironManHead() {
  fill(255, 0, 0);
  circle(1000, 500, 400);
  noStroke();
  fill(255, 215, 0);
  ellipse(1000, 500, 380, 380);
  fill(255, 0, 0);
  quad(945, 315, 1055, 315, 1025, 400, 975, 400);
  rect(950, 310, 100, 20);
  stroke(0);
  strokeWeight(5);
  line(895, 615, 920, 630);
  line(920, 630, 945, 610);
  line(1105, 615, 1080, 630);
  line(1080, 630, 1055, 610);
  line(1055, 610, 945, 610);
  noStroke();
  arc(1000, 500, 380, 380, radians(120), radians(225), OPEN);
  arc(1000, 500, 380, 380, radians(315), radians(420), OPEN);
  quad(950, 650, 1050, 650, 1075, 675, 925, 675);
  rect(925, 675, 150, 10);
  rect(950, 685, 100, 8);
}
void ironManEyes() {
  noStroke();
  fill(0);
  quad(895, 477.5, 902.5, 455, 975, 477.5, 967.5, 500);
  quad(1105, 477.5, 1097.5, 455, 1025, 477.5, 1032.5, 500);
  stroke(0);
  strokeWeight(4);
  line(970, 477.5, 1030, 477.5);
  noStroke();
  fill(162, 255, 253);
  quad(900, 475, 905, 460, 970, 480, 965, 495);
  quad(1100, 475, 1095, 460, 1030, 480, 1035, 495);
}
void hulkHair() {
  fill(0);
  noStroke();
  ellipse(1000, 350, 300, 100);
  triangle(853, 345, 950, 350, 800, 450);
  triangle(850, 350, 1050, 360, 890, 440);
  triangle(900, 360, 1080, 360, 1000, 460);
  triangle(1000, 350, 1140, 350, 1100, 430);
  triangle(1090, 340, 1150, 345, 1175, 420);
}
void hulkLEye() {
  fill(255);
  circle(900, 490, 50);
  fill(0, 128, 0);
  circle(905, 490, 30);
  fill(0);
  circle(905, 490, 15);
  fill(255);
  circle(908, 490, 5);
  fill(0);
  quad(870, 450, 900, 450, 970, 510, 940, 510);
}
void hulkREye() {
  fill(255);
  circle(1100, 490, 50);
  fill(0, 128, 0);
  circle(1095, 490, 30);
  fill(0);
  circle(1095, 490, 15);
  fill(255);
  circle(1092, 490, 5);
  fill(0);
  quad(1130, 450, 1100, 450, 1030, 510, 1060, 510);
}
void hulkMouth() {
  stroke(0);
  fill(0, 128, 0);
  rect(895, 525, 210, 75, 30);
  float x = 915;
  float y = 525;
  int count = 0;
  for (count = 0; count <= 15; x+=25) {
    hulkTeeth(x, y);
    if (x == 1065) {
      x = 890;
      y = 562.5;
    }
    count++;
  }
}
void hulkTeeth(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  rect(0, 0, 25, 37.5, 10);
  popMatrix();
}
