void setup() {
  size(2000,1000);
 character(); 
}


void character() {
  //hulk();
  ironMan();
}

void ironMan() {
   
}

void hulk(){
  fill(0,128,0);
  circle(1000,500,400);
  hulkHair();
  hulkLEye();
  hulkREye();
  hulkMouth();
}
void hulkHair() {
  fill(0);
  noStroke();
  ellipse(1000,350,300,100);
  triangle(853,345,950,350,800,450);
  triangle(850,350,1050,360,890,440);
  triangle(900,360,1080,360,1000,460);
  triangle(1000,350,1140,350,1100,430);
  triangle(1090,340,1150,345,1175,420);
}
void hulkLEye() {
  fill(255);
  circle(900,490,50);
  fill(0,128,0);
  circle(905,490,30);
  fill(0);
  circle(905,490,15);
  fill(255);
  circle(908,490,5);
  fill(0);
  quad(870,450,900,450,970,510,940,510);
}
void hulkREye() {
  fill(255);
  circle(1100,490,50);
  fill(0,128,0);
  circle(1095,490,30);
  fill(0);
  circle(1095,490,15);
  fill(255);
  circle(1092,490,5);
  fill(0);
  quad(1130,450,1100,450,1030,510,1060,510);
}
void hulkMouth() {
  stroke(0);
  fill(0,128,0);
  rect(895,525,210,75,30);
  float x = 915;
  float y = 525;
  int count = 0;
  for (count = 0; count <= 15; x+=25) {
    hulkTeeth(x,y);
    if (x == 1065) {
       x = 890;
       y = 562.5;
    }
    count++;
  }
}
void hulkTeeth(float x, float y) {
  pushMatrix();
  translate(x,y);
  fill(255);
  rect(0,0,25,37.5,10);
  popMatrix();
}
