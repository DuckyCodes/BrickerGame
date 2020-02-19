ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
 int ball = 5;
 int paddle = 6;
 int mode = 2;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
  int lives = 7;
  int score = 8;
  int gridx = 9;
  int gridy = 10;
//ball variable
float bx, by, bvx, bvy;

//paddle varibles
float px, py;

boolean leftKey, rightKey;

void setup() {
  size(800, 600);
  
  myBricks = new ArrayList<Brick>();
  gridx = 50;
  gridy = 50;
  
  int i = 0;
  while (i < 15) {
    myBricks.add(new Brick());
    gridx = gridx + 75;
    if (gridx >250 ){
      gridx = 50;
      gridy = gridy + 50;
    }
   i = i + 1; 
  }
  
  //ball initial values
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  lives = 5;
  score = 0;
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
