int num;
void setup() {
  size(800,800);
  background(255);
  num = 1;
}

void draw() {
  strokeWeight(1);
  fill(200);
  rect(0,0,800,115);
  //black
  strokeWeight(3);
  fill(0);
  rect(20,15,50,25);
  fill(125);
  rect(20,45,50,25);
  fill(255);
  rect(20,75,50,25);
  //red
  fill(155,0,0);
  rect(75,15,50,25);
  fill(219,11,15);
  rect(75,45,50,25);
  fill(252,161,161);
  rect(75,75,50,25);
  //orange yellow
  fill(255,116,21);
  rect(130,15,50,25);
  fill(255,215,0);
  rect(130,45,50,25);
  fill(250,239,136);
  rect(130,75,50,25);
  //green
  fill(28,116,27);
  rect(185,15,50,25);
  fill(0,255,0);
  rect(185,45,50,25);
  fill(113,232,110);
  rect(185,75,50,25);
  //blue
  fill(0,0,255);
  rect(240,15,50,25);
  fill(0,151,242);
  rect(240,45,50,25);
  fill(0,242,220);
  rect(240,75,50,25);

}
