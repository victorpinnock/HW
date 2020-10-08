/********* VARIABLES *********/

// We control which screen is active by settings / updating
// gameScreen variable. We display the correct screen according
// to the value of this variable.
//
// 0: Initial Screen
// 1: Game Screen
// 2: Game-over Screen

int gameScreen = 0;
int ballX, ballY;
int ballSize = 20;
int ballColor = color(0);
float gravity = 1;
float ballSpeedVert = 0;
float airfriction = 0.0001;
float friction = 0.1;


/********* SETUP BLOCK *********/

void setup() {
  size(500, 500);
    ballX=width/4;
  ballY=height/5;
}


/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  }
}


/********* SCREEN CONTENTS *********/

void initScreen() {
background(0);
  textAlign(CENTER);
  text("Avoid Blue To Survive", height/2, width/2);
  text("Click to Start", height/2, width/2+150);
}
void gameScreen() {
  background(255);
  drawBall();
  
  //gravity
   applyGravity();
  keepInScreen();
  
  //racket
    drawRacket();
    
    //bounce on racket
    
    watchRacketBounce();
    
    //applying ball speed
    
    applyHorizontalSpeed();
    
    // walls
    
     wallAdder();
      wallHandler();


    
}
//gravity
void applyGravity() {
  ballSpeedVert += gravity;
  ballY += ballSpeedVert;
  
  //airfriction
  ballSpeedVert -= (ballSpeedVert * airfriction);
}
void makeBounceBottom(int surface) {
  ballY = surface-(ballSize/2);
  ballSpeedVert*=-1;
  //airfriction
  ballSpeedVert -= (ballSpeedVert * friction);
}
void makeBounceTop(int surface) {
  ballY = surface+(ballSize/2);
  ballSpeedVert*=-1;
  //airfriction
  ballSpeedVert -= (ballSpeedVert * friction);
}

// keep ball in the screen
void keepInScreen() {
  // ball hits floor
  if (ballY+(ballSize/2) > height) { 
    makeBounceBottom(height);
  }
  // ball hits ceiling
  if (ballY-(ballSize/2) < 0) {
    makeBounceTop(0);
  }
  
  if (ballX-(ballSize/2) < 0){
    makeBounceLeft(0);
  }
  if (ballX+(ballSize/2) > width){
    makeBounceRight(width);
  }
}



void gameOverScreen() {
  // codes for game over screen
    //health bar
   
       background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("Game Over", height/2, width/2 - 20);
  textSize(15);
  text("Click to Restart", height/2, width/2 + 10);
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, ballSize, ballSize);
} 

/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
   if (gameScreen==2){
    restart();
  }

}

void restart() {
  score = 0;

  ballX=width/4;
  ballY=height/5;
  lastAddTime = 0;
  walls.clear();
  gameScreen = 0;
  fill(255);
  textAlign(CENTER);
  text("Game Over, Click to Restart", height/2, width/2);
}


/********* OTHER FUNCTIONS *********/

// This method sets the necessary variables to start the game  
void startGame() {
  gameScreen=1;
}
