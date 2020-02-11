
void game() {
  background(0,0,255);
  ball();
  paddle();
}

void gameClicks() {
  
}

void ball () {
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
    ellipse(px, py, 100, 100);
    if (rightKey) px = px + 5;
    if (leftKey) px = px - 5;
  }
