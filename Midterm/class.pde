class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;

  Circle(float x, float y, float xSpeed, float ySpeed) {
      this.x = x;
      this.y = y;
      this.xSpeed = xSpeed;
      this.ySpeed = ySpeed;
  }

void move() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= -1;
    }

} 
void tmove() {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= PI/pmouseX;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed *= PI/pmouseY;
    }
}

void wmove() {
      x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed = pmouseY;
    }

    y += ySpeed;
    if (y < 0 || y > height) {
      ySpeed = pmouseX;
    }
}

void qmove() {
      x -= xSpeed;
    if (x > 0 || x < width) {
      xSpeed = pmouseY;
    }

    y -= ySpeed;
    if (y > 0 || y < height) {
      ySpeed = pmouseX;
    }
}

void amove() {
      x /= xSpeed;
    if (x > 0 || x < width) {
      xSpeed = pmouseY;
    }}

  
void display() {
    ellipse(x, y, 20, 20);
  }
  
void displayr() {
    rect(x, y, 20, 20);
  }  
  
void displayw() {
    ellipse(x*pmouseX, Y*pmouseY, 50, 50);
  } 
}
