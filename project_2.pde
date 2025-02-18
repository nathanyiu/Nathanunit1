//red 255,0,0
//orange(255,165,0);
//green 28,201,29
//yellow 255,255,0
float outer_whitex;
float outer_whitey;
float outer_white_size;
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
float outer_green2x;
float outer_green2y;
float outer_green2_size;
float outer_redx;
float outer_redy;
float inner_whitex;
float inner_whitey;
float inner_white_size;
float inner_bluex;
float inner_bluey;
float inner_blue_size;
float inner_greenx;
float inner_greeny;
float inner_green_size;
float inner_orangex;
float inner_orangey;
float inner_orange_size;
float inner_yellowx;
float inner_yellowy;
float inner_yellow_size;
float inner_blue2x;
float inner_blue2y;
float inner_blue2_size;
float inner_green2x;
float inner_green2y;
float inner_green2_size;
float inner_redx;
float inner_redy;
float inner_red_size;
float tiny_whitex;
float tiny_whitey;
float tiny_white_size;
float tiny_bluex;
float tiny_bluey;
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
  outer_blue2x = 0;
  outer_blue2y = 396;
  outer_green2x = 198;
  outer_green2y = 396;
  outer_green2_size = 198;
  outer_redx = 396;
  outer_redy = 396;
  inner_whitex = 198;
  inner_whitey = 198;
  inner_white_size = 66;
  inner_bluex = 264;
  inner_bluey = 198;
  inner_blue_size = 66;
  inner_greenx = 330;
  inner_greeny = 198;
  inner_green_size = 66;
  inner_orangex = 198;
  inner_orangey = 264;
  inner_orange_size = 66;
  inner_yellowx = 330;
  inner_yellowy = 264;
  inner_yellow_size = 66;
  inner_blue2x = 198;
  inner_blue2y = 330;
  inner_blue2_size = 66;
  inner_green2x = 264;
  inner_green2y = 330;
  inner_green2_size = 66;
  inner_redx = 330;
  inner_redy = 330;
  inner_red_size = 66;
  tiny_whitex = 264;
  tiny_whitey = 264;
  tiny_white_size = 22;
}
void draw () {
  //background(255);
  //outer 1 white
  strokeWeight(3);
  fill(255,255,255);
  rect(outer_whitex, outer_whitey, 198,198);
  outer_whitex = outer_whitex - 1;
  outer_whitey = outer_whitey - 1;
  //outer_white_size = map(outer_whitey,0,-594,198,594);
  //outer 2 blue
  fill(0,0,255);
  rect(outer_bluex,outer_bluey,outer_blue_size,198);
  outer_bluex = outer_bluex - 1;
  outer_bluey = outer_bluey - 1;
  outer_blue_size = outer_blue_size + 2;
  //outer 3 green
  fill(28,201,29);
  rect(outer_greenx,outer_greeny,198,198);
  outer_greenx = outer_greenx + 1;
  outer_greeny = outer_greeny - 1;
  //outer 4 orange
  fill(255,165,0);
  rect(outer_orangex ,outer_orangey,198,outer_orange_size);
  outer_orangex = outer_orangex - 1;
  outer_orangey = outer_orangey - 1;
  outer_orange_size = outer_orange_size + 2;
  //outer 6 yelllow
  fill(255,255,0);
  rect(outer_yellowx ,outer_yellowy ,198,outer_yellow_size);
  outer_yellowx = outer_yellowx + 1;
  outer_yellowy = outer_yellowy - 1;
  outer_yellow_size = outer_yellow_size + 2;
  //outer 7 blue
  fill(0,0,255);
  rect(outer_blue2x,outer_blue2y,198,198);
  outer_blue2x = outer_blue2x - 1;
  outer_blue2y = outer_blue2y + 1;
  //outer 8 green
  fill(28,201,29);
  rect(outer_green2x,outer_green2y,outer_green2_size,198);
  outer_green2x = outer_green2x - 1;
  outer_green2y = outer_green2y + 1;
  outer_green2_size = outer_green2_size + 2;
  //outer 9 red
  fill(255,0,0);
  rect(outer_redx,outer_redy,198,198);
  outer_redx = outer_redx + 1;
  outer_redy = outer_redy + 1;
  //inner 1 white
  //strokeWeight(3);
  fill(255,255,255);
  rect(inner_whitex,inner_whitey,inner_white_size,inner_white_size);
  inner_whitex = inner_whitex - 1;
  inner_whitey = inner_whitey - 1;
  inner_white_size = map(inner_whitey,198,0,66,198);
  //inner 2 blue
  fill(0,0,255);
  rect(inner_bluex,inner_bluey,inner_blue_size,inner_blue_size);
  inner_bluex = inner_bluex - 0.33;
  inner_bluey = inner_bluey - 1;
  inner_blue_size = map(inner_bluey, 198,0, 66,198);
  //inner 3 green
  fill(28,201,29);
  rect(inner_greenx,inner_greeny,inner_green_size,inner_green_size);
  inner_greenx = inner_greenx + 0.335;
  inner_greeny = inner_greeny - 1;
  inner_green_size = map(inner_greeny,198,0,66,198);
  //inner 4 orange
  fill(255,165,0);
  rect(inner_orangex,inner_orangey,inner_orange_size,inner_orange_size);
  inner_orangex = inner_orangex - 1;
  inner_orangey = inner_orangey - 0.335;
  inner_orange_size = map(inner_orangex,198,0,66,198);
  //inner 6 yellow
  fill(255,255,0);
  rect(inner_yellowx,inner_yellowy,inner_yellow_size,inner_yellow_size);
  inner_yellowx = inner_yellowx + 0.335;
  inner_yellowy = inner_yellowy - 0.335;
  inner_yellow_size = map(inner_yellowx,330,396,66,198);
  //inner 7 blue
  fill(0,0,255);
  rect(inner_blue2x,inner_blue2y,inner_blue2_size,inner_blue2_size);
  inner_blue2x = inner_blue2x - 1;
  inner_blue2y = inner_blue2y + 0.335;
  inner_blue2_size = map(inner_blue2x,198,0,66,198);
  //inner 8 green
  fill(28,201,29);
  rect(inner_green2x,inner_green2y,inner_green2_size,inner_green2_size);
  inner_green2x = inner_green2x - 0.33;
  inner_green2y = inner_green2y + 0.335;
  inner_green2_size = map(inner_green2y,330,396,66,198);
  //inner 9 red
  fill(255,0,0);
  rect(inner_redx,inner_redy,inner_red_size,inner_red_size);
  inner_redx = inner_redx + 0.335;
  inner_redy = inner_redy + 0.335;
  inner_red_size = map(inner_redy,330,396,66,198);
  //tiny 1 white
  fill(255,255,255);
  rect(tiny_whitex,tiny_whitey,tiny_white_size,tiny_white_size);
  tiny_whitex = tiny_whitex - 0.33;
  tiny_whitey = tiny_whitex - 0.335;
  tiny_white_size = map(tiny_whitey,264,198,22,66);
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
