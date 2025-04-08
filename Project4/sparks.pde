void sparks() {
  translate(triangleX+250, triangleY+400);
  pushMatrix();
 
  rotate(radians(arcCurrent));
  noStroke();
  
  //triangle(0, 0, 50, 0, 0, -50);
  fill(#FA7900);
  //triangle(50, 0, 0, -50, 50, -50);
   for (int i = 0; i <= 5; i++) {
  sparkX=random(0, 10);
  sparkY=random(-50, 0);
  rect(sparkX, sparkY, 5, 3);
   }
  
  fill(0);
  triangle(60, 10, 0, -50, 60, -50);
  popMatrix();
}
