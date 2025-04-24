void sparks() {
  portal.beginDraw();
  portal.pushMatrix();
  portal.translate(triangleX, triangleY);
  portal.rotate(radians(arcCurrent+random(-20, 100)));
  portal.noStroke();
  portal.fill(#FA7900);
  for (int i = 0; i <= 20; i++) {
    sparkX=random(0, 10);
    sparkY=random(-30, 0);
  }
  for (int r = 0; r <= 100; r++) {
    checkSparks();
  }
  portal.rect(sparkX+(radius/2-30), sparkY, 5, 3);
  portal.fill(50);
  portal.rect(10+(radius/2-30), -2, 20, -40);
  portal.popMatrix();
  portal.endDraw();
}
