//red 255,0,0
//orange(255,165,0);
//green 28,201,29
//yellow 255,255,0


void setup() {
  size(600,600);
}
void draw () {
  //outer 1 blue
  strokeWeight(8);
  fill(0,0,255);
  rect(0,0,200,200);
  //outer 2 white
  fill(255,255,255);
  rect(200,0,200,200);
  //outer 3 green
  fill(28,201,29);
  rect(400,0,200,200);
  //outer 4 orange
  fill(255,165,0);
  rect(0,200,200,200);
  //outer 6 yelllow
  fill(255,255,0);
  rect(400,200,200,200);
  //outer 7 blue
  fill(0,0,255);
  rect(0,400,200,200);
  //outer 8 white
  fill(255,255,255);
  rect(200,400,200,200);
  //outer 9 red
  fill(255,0,0);
  rect(400,400,200,200);
  //inner 1
}
