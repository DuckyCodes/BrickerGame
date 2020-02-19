class Brick {
  //1. instance varibles
  float x,y;
  int hp;
  color c; // should be colour
  //2.Constructor
  Brick() {
    x = gridx;
    y = gridy;
    c = #ffffff;
    hp = 1;
    
    
  }
  //3. Behaviour Funtions
  void act() {
    if(dist(x, y, bx,by)< 35 && hp > 0){
       hp = hp - 1;
       bvy= ( by - y)/5;
       bvx= ( bx - x)/5;
    }
  }
  void show () {
    if(hp>0){
   fill(c);
   ellipse(x, y, 50, 50); 
   
    }    
   
  }
}
