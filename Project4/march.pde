float characterY, character2Y, character3Y, character4Y;
float timerP2, timer2P2, timer3P2, timer4P2;
float character1X, character2X, character3X, character4X;
float e;
float timer, timer2, timer3, timer4;
int c1, c2, c3;
int C1, C2, C3;
int characterSize;
int numberOfCharacters;
int draw2, draw3;
void march() {
  pg.beginDraw();
  pg.pushMatrix();
  pg.clear();
  pg.fill(0, 255, 0);
  if (character1X>x-radius/2) {
    if (timer>100) {
      timerP2=timerP2+1;
      character1X= x-timerP2;
      pg.circle(character1X, characterY, characterSize);
    } else {
      pg.circle(character1X, y+timer, characterSize);
      characterY=y+timer;
      timer=timer+1;
    }
  }
  if (character1X<x-radius/2) {
    pg.circle(character1X, characterY, characterSize);
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (timerP2>0) {
    if (character1X<x-radius/2 && C1==0) {
      c1=1;
      C1=1;
    }
    if (c1==1) {
      timer2=timer2+1;
      pg.circle(character2X, character2Y+timer2, characterSize);
    }
    if (timer2>timer) {
      c1=0;
    }
    if (c1==0 && C1==1) {
      if (timer2P2>timerP2-50) {
        pg.circle(character2X-timer2P2, character2Y+timer2, characterSize);
        draw2=1;
      } else {
        pg.circle(character2X-timer2P2, character2Y+timer2, characterSize);
        timer2P2=timer2P2+1;
      }
    }
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if (timer2P2>0) {
    if (draw2==1 && C2==0) {
      c2=1;
      C2=1;
    }
    if (c2==1) {
      timer3=timer3+1;
      pg.fill(0, 0, 255);
      pg.circle(character3X, character3Y+timer3, characterSize);
    }
    if (timer3>timer2) {
      c2=0;
    }
    if (c2==0 && C2==1) {
      if (timer3P2>timer2P2-50) {
        pg.circle(character3X-timer3P2, character3Y+timer3, characterSize);
      } else {
        pg.circle(character3X-timer3P2, character3Y+timer3, characterSize);
        timer3P2=timer3P2+1;
      }
    }
  }
  if (timer3P2>0) {
    if (draw3==1 && C2==0) {
      c3=1;
      C3=1;
    }
    if (dist(character2X, character2Y, character3X, character3Y)<51 && timer4<timer3) {
      timer4=timer4+1;

      pg.fill(0, 0, 255);
      pg.circle(character4X, character4Y+timer4, characterSize);
    }
    if (timer4>timer3) {
      c3=0;
    }
    if (timer3==timer4) {
      if (character4X>character3X) {
        pg.circle(character4X-timer4P2, character4Y+timer4, characterSize);
        timer4P2=timer4P2+1;
        println("hehehe");
      }
      if (character4X<character3X) {
        pg.circle(character4X-timer4P2, character4Y-timer4, characterSize);
        timer4P2=timer4P2+1;
      }
      if (character4X==character3X) {
        pg.circle(character4X-timer4P2, character4Y+timer4, characterSize);
      }
    }
  }

  pg.popMatrix();
  pg.endDraw();
  image(pg, 0, 0);
  println(character4X, character3X);
}
