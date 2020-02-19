
void game() {
  background(0,0,255);
  //Bricks
  int i = 0;
  
  while (i < 15){
   Brick b = myBricks.get(i);
   i = i +1;
   b.show();
   b.act();
  }
  
  ball();
  paddle();
  
 if(dist(px, py, bx,by)< 60){
    bvy= ( by - py)/10;
    bvx= ( bx - px)/10;
 } 

  
}


void ball () {
  stroke(255);
  ellipse(bx, by, 20, 20);
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) {
    bvx = -bvx;
  }
  if (by < 0 || by > height) {
    bvy = -bvy;
  }
}
  
  void paddle() {
    stroke(255);
    ellipse(px, py, 100, 100);
    if (rightKey) px = px + 5;
    if (leftKey) px = px - 5;
   
  }
  
  void gameClicks() {
  
}
