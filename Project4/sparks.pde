void sparks() {
  translate(triangleX, triangleY);
  pushMatrix();

  rotate(radians(arcCurrent+random(-20, 100)));
  noStroke();
  fill(#FA7900);
  for (int i = 0; i <= 20; i++) {
    sparkX=random(0, 10);
    sparkY=random(-30, 0);
  }
  for (int r = 0; r <= 100; r++) {
    checkSparks();
  }
  rect(sparkX+(radius/2-30), sparkY, 5, 3);
  fill(0);
  rect(10+(radius/2-30), -2, 20, -48);
  popMatrix();
}
