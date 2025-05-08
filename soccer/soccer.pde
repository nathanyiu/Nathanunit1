//char cord
float player1x, player1y;
float player1Bx, player1By;
float player2x, player2y;
float player2Bx, player2By;
float ballx,bally,balld;
float vx, vy;
float ballvx, ballvy;
//movemnt
boolean wkey, akey,skey,dkey;
boolean upkey,leftkey,downkey,rightkey;
//player collision
boolean OneTouch2Top,OneTouch2Left,OneTouch2Down, OneTouch2Right;
boolean OneTouch2BTop, OneTouch2BLeft, OneTouch2BDown, OneTouch2BRight;
boolean OneTouch1BTop, OneTouch1BLeft, OneTouch1BDown, OneTouch1BRight;
boolean OneBTouch2BTop, OneBTouch2BLeft, OneBTouch2BDown, OneBTouch2BRight;
boolean OneBTouch2Top, OneBTouch2Left, OneBTouch2Down, OneBTouch2Right;
boolean TwoTouch2BTop, TwoTouch2BLeft, TwoTouch2BDown, TwoTouch2BRight;
float player1B, player2B;
int Mode, Intro, Controls, Game, GG;
void setup() {
  size(1200,880);
  player1x = width/4;
  player1y = 455;
  player1Bx = width/4;
  player1By = 625;
  player2x = width/4 * 3;
  player2y = 455;
  player2Bx = width/4 * 3;
  player2By = 625;
  ballx = 600;
  bally = 540;
  balld = 50;
  vx = -3;
  vy = -3;
  ballvx = 0;
  ballvy = 0;
  player1B = -1;
  player2B = -1;
  Intro = 0;
  Controls = 1;
  Game = 2;
  GG = 3;
  Mode = Intro;
}
void draw() {
  if (Mode == Intro) {
     Intro();
  }
  if (Mode == Controls) {
    Controls(); 
  }
  if (Mode == Game) {
    Game(); 
  }
  if (Mode == GG) {
    GG(); 
  }
}
void player1A(float player1x, float player1y) {
  pushMatrix();
  translate(player1x,player1y);
  strokeWeight(1);
  if (player1B == -1) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
  strokeWeight(2);
  fill(255);
  circle(0,0,50);
  popMatrix();
}
void player1B(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  if (player1B == 1) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
  circle(0,0,50);
  popMatrix();
}
void player2A(float player2x, float player2y) {
   pushMatrix();
   translate(player2x,player2y);
   if (player2B == -1) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
   fill(0,0,255);
   circle(0,0,50);
   popMatrix();
}
void player2B (float player2x, float player2y) {
  pushMatrix();
  translate(player2x,player2y);
  if (player2B == 1) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
  circle(0,0,50);
  popMatrix();
}
void ball(float ballx, float bally) {
  pushMatrix();
  translate(ballx,bally);
  stroke(0);
  fill(80,80,80);
  circle(0,0,29);
  popMatrix();
}
void keyPressed() {
 if (key == 'w') {
   wkey = true;
 }
 if (key == 'a') {
   akey = true;
 }
 if (key == 's') {
   skey = true;
 }
 if (key == 'd') {
   dkey = true;
 }
 if (key == 'u') {
   upkey = true;
 }
 if (key == 'h') {  
   leftkey = true;
 }
 if (key == 'j') {
   downkey = true;
 }
 if (key == 'k') {
   rightkey = true;
 }
 if (key == 'e') {
    player1B *= -1;
 }
 if (key == 'i') {
   player2B *= -1; 
 }
}
void keyReleased() {
  if (key == 'w') {
   wkey = false;
 }
 if (key == 'a') {
   akey = false;
 }
 if (key == 's') {
   skey = false;
 }
 if (key == 'd') {
   dkey = false;
 }
 if (key == 'u') {
   upkey = false;
 }
 if (key == 'h') {  
   leftkey = false;
 }
 if (key == 'j') {
   downkey = false;
 }
 if (key == 'k') {
   rightkey = false;
 }
}
void mouseClicked() {
  if (mouseX > 400 && mouseX < 800 && mouseY > 300 && mouseY < 425 && Mode == Intro) {
    Mode = Game; 
  }
  if (mouseX > 400 && mouseX < 800 && mouseY > 450 && mouseY < 575 && Mode == Intro) {
    Mode = Controls; 
  }
}
