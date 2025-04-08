void setup(){
 size(2000,1000); 
 background();
}



void background() {
  background(81);//81
  fill(0);
  rect(0,150,2000,1000);
  //clouds
  strokeWeight(2);
  fill(81);
  ellipse(110,70,130,50);
  noStroke();
  circle(65,110,150);
  circle(180,130,150);
  circle(290,120,145);
  circle(400,50,300);
  stroke(1);
  strokeWeight(2);
  ellipse(300,80,140,50);
  circle(460,130,110);
  circle(425,85,120);
  circle(400,40,110);
  noStroke();
  circle(430,120,130);
  circle(420,90,130);
  circle(380,30,100);
 
}
