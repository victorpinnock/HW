//Refference https://happycoding.io/tutorials/processing/creating-classes

Circle[] circles = new Circle[1000];

void setup() {
  size(700, 700);
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle(random(width), random(height), random(-3, 3), random(-3, 3));
  }
}

void draw() {
  background(200);

  for (int i = 0; i < circles.length; i++) {
    circles[i].move();
    circles[i].display();
  }
  

if (keyPressed) {    
  if (key=='w'){
       for (int i = 2; i < circles.length; i++) {
     circles[i].wmove();
     circles[i].displayw();
     fill(255);
       }
    }
  if (key=='1'){
     for (int i = 0; i < circles.length; i++) {
     circles[i].move();
    circles[i].display();
    fill(random(255),random(255),random(255));
     }
  }
  
   if (key=='q'){
     for (int i = 0; i < circles.length; i++) {
     circles[i].qmove();
    circles[i].display();
    fill(random(255),random(255),random(255));
     }
  }
    if (key=='e'){
   for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle(random(width), random(height), random(-3, 3), random(-3, 3));
  }
    }
    
    if (key=='a'){
     for (int i = 100; i < circles.length; i++) {
     circles[i].amove();
    circles[i].display();
    fill(random(255),random(255),random(255));
     }
    }
    
     if (key=='2'){
     for (int i = 0; i < circles.length; i++) {
     circles[i].move();
    circles[i].displayr();
    fill(random(255),random(255),random(255));
     }
  }
}

 if (mousePressed) {
    
    for (int i = 0; i < circles.length; i++) {
      
     circles[i].displayr();
   circles[i].tmove();
    fill(random(20));
    }
  }
}
