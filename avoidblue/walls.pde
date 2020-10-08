int wallSpeed = 5;
int wallInterval = 1000;
float lastAddTime = 0;
int minGapHeight = 200;
int maxGapHeight = 600;
int wallWidth = 80;
color wallColors = color(0,0,255);
int score = 0;

// This arraylist stores data of the gaps between the walls. Actuals walls are drawn accordingly.
// [gapWallX, gapWallY, gapWallWidth, gapWallHeight]
ArrayList<int[]> walls = new ArrayList<int[]>();

void wallAdder() {
  if (millis()-lastAddTime > wallInterval) {
    int randHeight = round(random(minGapHeight, maxGapHeight));
    int randY = round(random(0, height-randHeight));
    // {gapWallX, gapWallY, gapWallWidth, gapWallHeight}
    int[] randWall = {width, randY, wallWidth, randHeight, 0}; 
    walls.add(randWall);
    lastAddTime = millis();
  }
}
void wallHandler() {
  for (int i = 0; i < walls.size(); i++) {
    wallRemover(i);
    wallMover(i);
    wallDrawer(i);
    watchWallCollision(i);
  }
}
void wallDrawer(int index) {
  int[] wall = walls.get(index);
  // get gap wall settings 
  int gapWallX = wall[0];
  int gapWallY = wall[1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  // draw actual walls
  rectMode(CORNER);
  fill(wallColors);
  rect(gapWallX, 0, gapWallWidth, gapWallY);
  rect(gapWallX, gapWallY+gapWallHeight, gapWallWidth, height-(gapWallY+gapWallHeight));
}
void wallMover(int index) {
  int[] wall = walls.get(index);
  wall[0] -= wallSpeed;
}
void wallRemover(int index) {
  int[] wall = walls.get(index);
  if (wall[0]+wall[2] <= 0) {
    walls.remove(index);
  }
}

void watchWallCollision(int index) {
  int[] wall = walls.get(index);
   //int wallScored = wall[4];
  // get gap wall settings 
  int gapWallX = wall[0];
  int gapWallY = wall[1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  int wallTopX = gapWallX;
  int wallTopY = 0;
  int wallTopWidth = gapWallWidth;
  int wallTopHeight = gapWallY;
  int wallBottomX = gapWallX;
  int wallBottomY = gapWallY+gapWallHeight;
  int wallBottomWidth = gapWallWidth;
  int wallBottomHeight = height-(gapWallY+gapWallHeight);
  float topH = wallTopX+wallTopY;
  if (
    (ballX+(ballSize/2)>wallTopX) &&
    (ballX-(ballSize/2)<wallTopX+wallTopWidth) &&
    (ballY+(ballSize/2)>wallTopY) &&
    (ballY-(ballSize/2)<wallTopY+wallTopHeight)
    ) {
    ballY+=topH;
      restart();
    }
    // collides with upper wall
  
  //wall score
  // if (ballX > gapWallX+(gapWallWidth/2) && wallScored==0) {
  //  wallScored=1;
  //  wall[4]=1;
  //  score();
  //}
  float bottomh = wallBottomX+wallBottomY;
  
  if (
    (ballX+(ballSize/2)>wallBottomX) &&
    (ballX-(ballSize/2)<wallBottomX+wallBottomWidth) &&
    (ballY+(ballSize/2)>wallBottomY) &&
    (ballY-(ballSize/2)<wallBottomY+wallBottomHeight)
    ) { ballY+=bottomh;
   restart();
    // collides with lower wall
  }
}

//void printScore(){
//  textAlign(CENTER);
//  fill(0);
//  textSize(30); 
//  text(score, height/2, 50);
//}
