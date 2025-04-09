void sparks() {
  translate(triangleX, triangleY);
  pushMatrix();

  rotate(radians(arcCurrent+random(-20, 100)));
  noStroke();

  //triangle(0, 0, 50, 0, 0, -50);
  fill(#FA7900);
  //triangle(50, 0, 0, -50, 50, -50);
  for (int i = 0; i <= 20; i++) {
    sparkX=random(0, 10);
    sparkY=random(-30, 0);
  }
  for (int r = 0; r <= 100; r++) {
    checkSparks();
  }

  rect(sparkX, sparkY, 5, 3);


  //fill(0, 0, 200);
  fill(0);
  rect(10, -2, 20, -48);
  //triangle(60, 10, 0, -50, 60, -50);
  popMatrix();
}
