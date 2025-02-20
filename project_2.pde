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
float inner_size;
float inner_bluex;
float inner_bluey;
float inner_greenx;
float inner_greeny;
float inner_orangex;
float inner_orangey;
float inner_yellowx;
float inner_yellowy;
float inner_blue2x;
float inner_blue2y;
float inner_green2x;
float inner_green2y;
float inner_redx;
float inner_redy;
float tiny_whitex;
float tiny_whitey;
float tiny_size;
float tiny_bluex;
float tiny_bluey;
float tiny_greenx;
float tiny_greeny;
float tiny_orangex;
float tiny_orangey;
float mid_greyx;
float mid_greyy;
float mid_grey_size;
float tiny_yellowx;
float tiny_yellowy;
float tiny_blue2x;
float tiny_blue2y;
float tiny_green2x;
float tiny_green2y;
float tiny_redx;
float tiny_redy;
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
  inner_size = 66;
  inner_bluex = 264;
  inner_bluey = 198;
  inner_greenx = 330;
  inner_greeny = 198;
  inner_orangex = 198;
  inner_orangey = 264;
  inner_yellowx = 330;
  inner_yellowy = 264;
  inner_blue2x = 198;
  inner_blue2y = 330;
  inner_green2x = 264;
  inner_green2y = 330;
  inner_redx = 330;
  inner_redy = 330;
  tiny_whitex = 264;
  tiny_whitey = 264;
  tiny_size = 22;
  tiny_bluex = 286;
  tiny_bluey = 264;
  tiny_greenx = 308;
  tiny_greeny = 264;
  tiny_orangex = 264;
  tiny_orangey = 286;
  mid_greyx = 286;
  mid_greyy = 286;
  mid_grey_size = 22;
  tiny_yellowx = 308;
  tiny_yellowy = 286;
  tiny_blue2x = 264;
  tiny_blue2y = 308;
  tiny_green2x = 286;
  tiny_green2y = 308;
  tiny_redx = 308;
  tiny_redy = 308;
}
void draw () {
  //background(255);
  //outer 1 white
  strokeWeight(3);
  fill(255,255,255);
  rect(outer_whitex, outer_whitey, 198,198);
  outer_whitex = outer_whitex - 2;
  outer_whitey = outer_whitey - 2;
  //outer_white_size = map(outer_whitey,0,-594,198,594);
  //outer 2 blue
  fill(0,0,255);
  rect(outer_bluex,outer_bluey,outer_blue_size,198);
  outer_bluex = outer_bluex - 2;
  outer_bluey = outer_bluey - 2;
  outer_blue_size = outer_blue_size + 4;
  //outer 3 green
  fill(28,201,29);
  rect(outer_greenx,outer_greeny,198,198);
  outer_greenx = outer_greenx + 2;
  outer_greeny = outer_greeny - 2;
  //outer 4 orange
  fill(255,165,0);
  rect(outer_orangex ,outer_orangey,198,outer_orange_size);
  outer_orangex = outer_orangex - 2;
  outer_orangey = outer_orangey - 2;
  outer_orange_size = outer_orange_size + 4;
  //outer 6 yelllow
  fill(255,255,0);
  rect(outer_yellowx ,outer_yellowy ,198,outer_yellow_size);
  outer_yellowx = outer_yellowx + 2;
  outer_yellowy = outer_yellowy - 2;
  outer_yellow_size = outer_yellow_size + 4;
  //outer 7 blue
  fill(0,0,255);
  rect(outer_blue2x,outer_blue2y,198,198);
  outer_blue2x = outer_blue2x - 2;
  outer_blue2y = outer_blue2y + 2;
  //outer 8 green
  fill(28,201,29);
  rect(outer_green2x,outer_green2y,outer_green2_size,198);
  outer_green2x = outer_green2x - 2;
  outer_green2y = outer_green2y + 2;
  outer_green2_size = outer_green2_size + 4;
  //outer 9 red
  fill(255,0,0);
  rect(outer_redx,outer_redy,198,198);
  outer_redx = outer_redx + 2;
  outer_redy = outer_redy + 2;
  //inner 1 white
  //strokeWeight(3);
  fill(255,255,255);
  rect(inner_whitex,inner_whitey,inner_size,inner_size);
  inner_whitex = inner_whitex - 2;
  inner_whitey = inner_whitey - 2;
  inner_size = map(inner_whitey,198,0,66,198);
  //inner 2 blue
  fill(0,0,255);
  rect(inner_bluex,inner_bluey,inner_size,inner_size);
  inner_bluex = inner_bluex - 0.66;
  inner_bluey = inner_bluey - 2;
  //inner 3 green
  fill(28,201,29);
  rect(inner_greenx,inner_greeny,inner_size,inner_size);
  inner_greenx = inner_greenx + 0.67;
  inner_greeny = inner_greeny - 2;
  //inner 4 orange
  fill(255,165,0);
  rect(inner_orangex,inner_orangey,inner_size,inner_size);
  inner_orangex = inner_orangex - 2;
  inner_orangey = inner_orangey - 0.67;
  //inner 6 yellow
  fill(255,255,0);
  rect(inner_yellowx,inner_yellowy,inner_size,inner_size);
  inner_yellowx = inner_yellowx + 0.67;
  inner_yellowy = inner_yellowy - 0.67;
  //inner 7 blue
  fill(0,0,255);
  rect(inner_blue2x,inner_blue2y,inner_size,inner_size);
  inner_blue2x = inner_blue2x - 2;
  inner_blue2y = inner_blue2y + 0.67;
  //inner 8 green
  fill(28,201,29);
  rect(inner_green2x,inner_green2y,inner_size,inner_size);
  inner_green2x = inner_green2x - 0.66;
  inner_green2y = inner_green2y + 0.67;
  //inner 9 red
  fill(255,0,0);
  rect(inner_redx,inner_redy,inner_size,inner_size);
  inner_redx = inner_redx + 0.67;
  inner_redy = inner_redy + 0.67;
  //tiny 1 white
  fill(255,255,255);
  rect(tiny_whitex, tiny_whitey, tiny_size, tiny_size);
  tiny_whitex = tiny_whitex - 0.66;
  tiny_whitey = tiny_whitex - 0.66;
  tiny_size = map(tiny_whitey,264,198,22,66);
  //tiny 2 blue
  fill(0,0,255);
  rect(tiny_bluex, tiny_bluey, tiny_size, tiny_size);
  tiny_bluex = tiny_bluex - 0.216;
  tiny_bluey = tiny_bluey - 0.66;
  //tiny 3 green
  fill(28,201,29);
  rect(tiny_greenx, tiny_greeny, tiny_size, tiny_size);
  tiny_greenx = tiny_greenx + 0.22;
  tiny_greeny = tiny_greeny - 0.66;
  //tiny 4 orange
  fill(255,165,0);
  rect(tiny_orangex, tiny_orangey, tiny_size, tiny_size);
  tiny_orangex = tiny_orangex - 0.66;
  tiny_orangey = tiny_orangey - 0.22;
  //mid dark grey
  //fill(0);
  fill(90,90,90);
  rect(mid_greyx,mid_greyy,mid_grey_size,mid_grey_size);
  mid_greyx = mid_greyx - 0.22;
  mid_greyy = mid_greyy - 0.22;
  mid_grey_size = mid_grey_size + 0.44;
  //tiny 6 yellow
  fill(255,255,0);
  rect(tiny_yellowx,tiny_yellowy,tiny_size,tiny_size);
  tiny_yellowx = tiny_yellowx + 0.22;
  tiny_yellowy = tiny_yellowy - 0.22;
  //tiny 7 blue
  fill(0,0,255);
  rect(tiny_blue2x,tiny_blue2y,tiny_size,tiny_size);
  tiny_blue2x = tiny_blue2x - 0.66;
  tiny_blue2y = tiny_blue2y + 0.22;
  //tiny 8 green
  fill(28,201,29);
  rect(tiny_green2x,tiny_green2y,tiny_size,tiny_size);
  tiny_green2x = tiny_green2x - 0.216;
  tiny_green2y = tiny_green2y + 0.22;
  //tiny 9 red
  fill(255,0,0);
  rect(tiny_redx,tiny_redy,tiny_size,tiny_size);
  tiny_redx = tiny_redx + 0.22;
  tiny_redy = tiny_redy + 0.22;
  
  if (inner_whitex == 0) {
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
  inner_size = 66;
  inner_bluex = 264;
  inner_bluey = 198;
  inner_greenx = 330;
  inner_greeny = 198;
  inner_orangex = 198;
  inner_orangey = 264;
  inner_yellowx = 330;
  inner_yellowy = 264;
  inner_blue2x = 198;
  inner_blue2y = 330;
  inner_green2x = 264;
  inner_green2y = 330;
  inner_redx = 330;
  inner_redy = 330;
  tiny_whitex = 264;
  tiny_whitey = 264;
  tiny_size = 22;
  tiny_bluex = 286;
  tiny_bluey = 264;
  tiny_greenx = 308;
  tiny_greeny = 264;
  tiny_orangex = 264;
  tiny_orangey = 286;
  mid_greyx = 286;
  mid_greyy = 286;
  mid_grey_size = 22;
  tiny_yellowx = 308;
  tiny_yellowy = 286;
  tiny_blue2x = 264;
  tiny_blue2y = 308;
  tiny_green2x = 286;
  tiny_green2y = 308;
  tiny_redx = 308;
  tiny_redy = 308;
  }
}
