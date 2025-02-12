//red 255,0,0
//orange(255,165,0);
//green 28,201,29
//yellow 255,255,0
float outer_whitex;
float outer_whitey;
float outer_bluex;
float outer_bluey;
float outer_blue_size;
float outer_greenx;
float outer_greeny;
float outer_orangex;
float outer_orangey;
float outer_orange_size;
float outer_yellowx;
float outer_yellowy;
float outer_yellow_size;
float outer_blue2x;
float outer_blue2y;
void setup() {
  size(594,594);
  background(255);
  outer_whitex = 0;
  outer_whitey = 0;
  outer_bluex = 198;
  outer_bluey = 0;
  outer_blue_size = 198;
  outer_greenx = 396;
  outer_greeny = 0;
  outer_orangex = 0;
  outer_orangey = 198;
  outer_orange_size = 198;
  outer_yellowx = 396;
  outer_yellowy = 198;
  outer_yellow_size = 198;
}
void draw () {
  //background(255);
  //outer 1 white
  strokeWeight(10);
  fill(255,255,255);
  rect(outer_whitex, outer_whitey, 198,198);
  outer_whitex = outer_whitex - 0.2;
  outer_whitey = outer_whitey - 0.2;
  //outer 2 blue
  fill(0,0,255);
  rect(outer_bluex,outer_bluey,outer_blue_size,198);
  outer_bluex = outer_bluex - 0.2;
  outer_bluey = outer_bluey - 0.2;
  outer_blue_size = outer_blue_size + 0.4;
  //outer 3 green
  fill(28,201,29);
  rect(outer_greenx,outer_greeny,198,198);
  outer_greenx = outer_greenx + 0.2;
  outer_greeny = outer_greeny - 0.2;
  //outer 4 orange
  fill(255,165,0);
  rect(outer_orangex ,outer_orangey,198,outer_orange_size);
  outer_orangex = outer_orangex - 0.2;
  outer_orangey = outer_orangey - 0.2;
  outer_orange_size = outer_orange_size + 0.4;
  //outer 6 yelllow
  fill(255,255,0);
  rect(outer_yellowx ,outer_yellowy ,198,outer_yellow_size);
  outer_yellowx = outer_yellowx + 0.2;
  outer_yellowy = outer_yellowy - 0.2;
  outer_yellow_size = outer_yellow_size + 0.4;
  //outer 7 blue
  fill(0,0,255);
  rect(0,396,198,198);
  
  //outer 8 green
  fill(28,201,29);
  rect(198,396,198,198);
  //outer 9 red
  fill(255,0,0);
  rect(396,396,198,198);
  //inner 1 white
  strokeWeight(5);
  fill(255,255,255);
  rect(198,198,66,66);
  //inner 2 blue
  fill(0,0,255);
  rect(264,198,66,66);
  //inner 3 green
  fill(28,201,29);
  rect(330,198,66,66);
  //inner 4 orange
  fill(255,165,0);
  rect(198,264,66,66);  
  //inner 6 yellow
  fill(255,255,0);
  rect(330,264,66,66);
  //inner 7 blue
  fill(0,0,255);
  rect(198,330,66,66);
  //inner 8 green
  fill(28,201,29);
  rect(264,330,66,66);
  //inner 9 red
  fill(255,0,0);
  rect(330,330,66,66);
  //tiny 1 white
  strokeWeight(2);
  fill(255,255,255);
  rect(264,264,22,22);
  //tiny 2 blue
  fill(0,0,255);
  rect(286,264,22,22);
  //tiny 3 green
  fill(28,201,29);
  rect(308,264,22,22);
  //tiny 4 orange
  fill(255,165,0);
  rect(264,286,22,22);
  //mid dark grey
  fill(111,111,111);
  rect(286,286,22,22);
  //tiny 6 yellow
  fill(255,255,0);
  rect(308,286,22,22);
  //tiny 7 blue
  fill(0,0,255);
  rect(264,308,22,22);
  //tiny 8 green
  fill(28,201,29);
  rect(286,308,22,22);
  //tiny 9 red
  fill(255,0,0);
  rect(308,308,22,22);
}
