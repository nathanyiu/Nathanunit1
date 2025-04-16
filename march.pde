float characterY;
float timerP2;
float character1X;
float e;
void march() {
  pg.beginDraw();
  pg.pushMatrix();
  pg.clear();
  pg.fill(0, 255, 0);
  if (character1X< x-radius) {
    if (timer>100) {
      character1X= x-timer-timerP2;

      pg.circle(x-(timer-timerP2), characterY, 100);
    } else {
      pg.circle(x, y+timer, 100);
      characterY=y+timer;
      timerP2=timer;
    }
  }

  if (x-timer-timerP2<x-radius) {
    pg.circle(character1X, characterY, 100);
  }

  pg.popMatrix();
  pg.endDraw();
  image(pg, 0, 0);
}
