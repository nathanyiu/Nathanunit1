void ballMovement() {
  ballx -= ballvx;
  bally -= ballvy; 
  if (bally <= 214.5 || bally >=894.5) {
     ballx = 600;
     bally = 540;
     ballvx = 0;
     ballvy = 0;
  }
  if (ballx <= -14.5 || ballx >= 1214.5) {
     ballx = 600;
     bally = 540;
     ballvx = 0;
     ballvy = 0;
  }
}
