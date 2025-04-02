void setup(){
  size(800,1120);
  grid();
  for(int i = 0; i < 1120; i+= 140) {
    for(int j = 0; j < 800; j+=100) {
      fill(255);
      rect(j,i,100,140);
    }
  }
  for(int i = 0; i < 1120; i+= 140) {
    for(int j = 0; j < 800; j+=100) {
      face(i+10,j+10);
    }
  }
}

void draw(){
  grid();
  int count = 1;
  for(int i = 0; i < 1120; i+= 140) {
    for(int j = 0; j < 800; j+=100) {
      face(i+10*count,j+10*count);
      count++;
    }
  }
}
void grid(){
  for(int i = 0; i < 1120; i+= 140) {
    for(int j = 0; j < 800; j+=100) {
      fill(255);
      rect(j,i,100,140);
    }
  }
}

void face(int x, int y) {
  pushMatrix();
  translate(x,y);
  house();
  popMatrix();
}

void house(){
  strokeWeight(1);
  //scale(random(2));
  //rotate(PI/(int)random(8)); 
  mainHouse();
  roof();
  door();
  window(0,0);
  window(0,-35);
  window(-35,-35);
  
}
void door(){
  fill(0);
  rect(15,40,20,40);
  ///knob
  fill(255);
  circle(30,60,5);
}
void mainHouse(){
  fill((int)random(256),(int)random(256),(int)random(256));
  square(0,0,80);
}
void window(int x, int y){
  strokeWeight(1);
  pushMatrix();
  translate(x,y);
  fill(0);
  square(50,45,20);
  fill(249,250,10);
  square(52,47,16);
  fill(0);
  strokeWeight(3);
  line(60,47,60,63);
  line(52,55,68,55); 
  popMatrix();
}
void roof(){
  triangle(0,0,40,-40,80,0);
}
