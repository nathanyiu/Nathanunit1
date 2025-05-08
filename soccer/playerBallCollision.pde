void playerBallCollision(float px, float py) {
 if (dist(px,py,ballx,bally) <= 40){
   ballvx = (px - ballx) * 0.1; 
   ballvy = (py - bally) * 0.1;
 }
}
