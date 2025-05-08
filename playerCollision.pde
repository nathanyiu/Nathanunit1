void playerCollision() {
  //collision between player 1a and 2a
  if (dist(player1x,player1y,player2x,player2y) <= 52){
    if (player1x - player2x < 0) {
      
      OneTouch2Right = true;
    } 
    if (player1x - player2x > 0) {
      
      OneTouch2Left = true;
    }
    if (player1y - player2y < 0) {
      
      OneTouch2Down = true;
    }
    if (player1y - player2y > 0) {
      OneTouch2Top = true;
    }
  } else {
    OneTouch2Right = false; 
    OneTouch2Left = false;
    OneTouch2Down = false;
    OneTouch2Top = false;
  }
  
  //collision between 1a and 2b
  if (dist(player1x,player1y,player2Bx,player2By) <= 52){
    if (player1x - player2Bx < 0) {
      OneTouch2BRight = true;
    } 
    if (player1x - player2Bx > 0) {
      OneTouch2BLeft = true;
    }
    if (player1y - player2By < 0) {
      
      OneTouch2BDown = true;
    }
    if (player1y - player2By > 0) {
      
      OneTouch2BTop = true;
    }
  } else {
    OneTouch2BRight = false; 
    OneTouch2BLeft = false;
    OneTouch2BDown = false;
    OneTouch2BTop = false;
  }
  //collision between 1a and 1b
  if (dist(player1x,player1y,player1Bx,player1By) <= 52){
    if (player1x - player1Bx < 0) {
      OneTouch1BRight = true;
    } 
    if (player1x - player1Bx > 0) {
      OneTouch1BLeft = true;
    }
    if (player1y - player1By < 0) {
      
      OneTouch1BDown = true;
    }
    if (player1y - player1By > 0) {
      
      OneTouch1BTop = true;
    }
  } else {
    OneTouch1BRight = false; 
    OneTouch1BLeft = false;
    OneTouch1BDown = false;
    OneTouch1BTop = false;
  }
  //collision between 1b and 2b
  if (dist(player1Bx,player1By,player2Bx,player2By) <= 52){
    if (player1Bx - player2Bx < 0) {
      OneBTouch2BRight = true;
    } 
    if (player1Bx - player2Bx > 0) {
      OneBTouch2BLeft = true;
    }
    if (player1By - player2By < 0) {
      
      OneBTouch2BDown = true;
    }
    if (player1By - player2By > 0) {
      
      OneBTouch2BTop = true;
    }
  } else {
    OneBTouch2BRight = false; 
    OneBTouch2BLeft = false;
    OneBTouch2BDown = false;
    OneBTouch2BTop = false;
  }
  //collision between 1b and 2a
  if (dist(player1Bx,player1By,player2x,player2y) <= 52){
    if (player1Bx - player2x < 0) {
      OneBTouch2Right = true;
    } 
    if (player1Bx - player2x > 0) {
      OneBTouch2Left = true;
    }
    if (player1By - player2y < 0) {
      
      OneBTouch2Down = true;
    }
    if (player1By - player2y > 0) {
      
      OneBTouch2Top = true;
    }
  } else {
    OneBTouch2Right = false; 
    OneBTouch2Left = false;
    OneBTouch2Down = false;
    OneBTouch2Top = false;
  }
  //collision between 2a and 2b
  if (dist(player2x,player2y,player2Bx,player2By) <= 52){
    if (player2x - player2Bx < 0) {
      TwoTouch2BRight = true;
    } 
    if (player2x - player2Bx > 0) {
      TwoTouch2BLeft = true;
    }
    if (player2y - player2By < 0) {
      
      TwoTouch2BDown = true;
    }
    if (player2y - player2By > 0) {
      
      TwoTouch2BTop = true;
    }
  } else {
    TwoTouch2BRight = false; 
    TwoTouch2BLeft = false;
    TwoTouch2BDown = false;
    TwoTouch2BTop = false;
  }
  playerBallCollision(player1x,player1y);
  playerBallCollision(player2x,player2y);
  playerBallCollision(player1Bx,player1By);
  playerBallCollision(player2Bx,player2By);
}
