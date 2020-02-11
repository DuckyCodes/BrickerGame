final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
 int ball = 5;
 int paddle = 6;
int mode = 2;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//ball variable
float bx, by, bvx, bvy;

//paddle varibles
float px, py;

boolean leftKey, rightKey;

void setup() {
  size(800, 600);
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  
  px = width/2;
  py = height+10;

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
