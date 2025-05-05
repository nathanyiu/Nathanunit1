float player1x, player1y;
float player1Bx, player1By;
float player2x, player2y;
float player2Bx, player2By;
float ballx,bally,balld;
float vx, vy;
boolean wkey, akey,skey,dkey;
boolean upkey,leftkey,downkey,rightkey;
boolean Touch1Top,Touch1Left,Touch1Down, Touch1Right;
boolean player1B, player2B;
void setup() {
  size(1200,680);
  player1x = width/4;
  player1y = 255;
  player1Bx = width/4;
  player1By = 425;
  player2x = width/4 * 3;
  player2y = 255;
  player2Bx = width/4 * 3;
  player2By = 425;
  ballx = 600;
  bally = 340;
  balld = 50;
  vx = -5;
  vy = -5;
  
}
void draw() {
  background(58,201,57);
  stroke(255);
  strokeWeight(5);
  fill(58,201,57);
  rect(75,0,1050,680);
  circle(600,340,190);
  line(600,0,600,680);
  //goal area
  rect(30,240.4,45,200);
  rect(1125,240.4,50,200);
  circle(180,340,130);
  rect(75,200,140,280);
  circle(1020,340,130);
  rect(985,200,140,280);
  fill(255);
  circle(180,340,5);
  circle(1020,340,5);
  circle(600,340,25);
  noStroke();
  player1A(player1x,player1y);
  player1B(player1Bx,player1By);
  player2A(player2x,player2y);
  player2B(player2Bx,player2By);
  ball(ballx,bally);
  if (wkey == true && Touch1Top == false) {
    player1y += vy;
  }
  if (akey == true && Touch1Left == false) {
    player1x += vx;
  }
  if (skey == true && Touch1Down == false) {
    player1y -= vy;
  }
  if (dkey == true && Touch1Right == false) {
    player1x -= vx;
  }
  if (upkey == true && Touch1Down == false ) {
    player2y += vy;
  }
  if (leftkey == true && Touch1Right == false) {
    player2x += vx;
  }
  if (downkey == true && Touch1Top == false) {
    player2y -= vy;
  }
  if (rightkey == true && Touch1Left == false) {
    player2x -= vx;
  }
  if (dist(player1x,player1y,player2x,player2y) <= 52){
    if (player1x - player2x < 0) {
      dkey = false; 
      leftkey = false;
      Touch1Right = true;
    } 
    if (player1x - player2x > 0) {
      akey = false;
      rightkey = false;
      Touch1Left = true;
    }
    if (player1y - player2y < 0) {
      skey = false;
      upkey = false;
      Touch1Down = true;
    }
    if (player1y - player2y > 0) {
      wkey = false;
      downkey = false;
      Touch1Top = true;
    }
  } else {
    Touch1Right = false; 
    Touch1Left = false;
    Touch1Down = false;
    Touch1Top = false;
  }
}
void player1A(float player1x, float player1y) {
  pushMatrix();
  translate(player1x,player1y);
  stroke(0);
  strokeWeight(2);
  fill(255);
  circle(0,0,50);
  popMatrix();
}
void player1B(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  circle(0,0,50);
  popMatrix();
}
void player2A(float player2x, float player2y) {
   pushMatrix();
   translate(player2x,player2y);
   fill(0,0,255);
   circle(0,0,50);
   popMatrix();
}
void player2B (float player2x, float player2y) {
  pushMatrix();
  translate(player2x,player2y);
  circle(0,0,50);
  popMatrix();
}
void ball(float ballx, float bally) {
  pushMatrix();
  translate(ballx,bally);
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
 if (keyCode == UP) {
   upkey = true;
 }
 if (keyCode == LEFT) {
   leftkey = true;
 }
 if (keyCode == DOWN) {
   downkey = true;
 }
 if (keyCode == RIGHT) {
   rightkey = true;
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
 if (keyCode == UP) {
   upkey = false;
 }
 if (keyCode == LEFT) {
   leftkey = false;
 }
 if (keyCode == DOWN) {
   downkey = false;
 }
 if (keyCode == RIGHT) {
   rightkey = false;
 }
}
