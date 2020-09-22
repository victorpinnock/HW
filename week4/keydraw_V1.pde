//refference https://www.openprocessing.org/sketch/765834
//https://processing.org/

int value = 1;
int sizer=100;
float angle = 0;


void setup() {
     size(750, 750, P3D); 
     background(value);
     
}

void ww() {
  //text display
    fill(255);
    noStroke();
    text("Press or Hold a-z to draw. Press 1 for RBG and 2 for HSB", 200,720);
    text("END & SAVE", 662,26);
    text("CLEAR", 24,26);
};

void ss() {
  fill(0);
  stroke(255);
  rect(18,10,50,25);
  rect(650,10,95,25);
  rect(175,702,395,25);
}

void draw() {
   ss();
   ww();

     if (mousePressed) {
       // button perameters
      if ((mouseX < 100) && (mouseX > 0) && (mouseY > 0) && (mouseY < 50)) {
        //button action
       fill(255);
      background(0);
      }
     }
     
     if (mousePressed) {
       // button perameters
      if ((mouseX < 650) && (mouseX > 750) && (mouseY > 0) && (mouseY < 50)) {
        //button action
          saveFrame("Saved-###.jpg");
         //note noLoop prevents system from constantly saving preview
        noLoop();}}
  
    if (keyPressed) {
  
   //A-Z action keys
   // keys using nested loops
   
    if (key=='u') {
          for(int x=0; x < 1800; x+=90){
          for(int y=0; y < 1800; y+=90){
            if (mouseY>y && mouseY<y+290 && mouseX>x && mouseX<x+290){
              fill(255);}
            else {fill(random(255), random(255), random(255));}
            rect(x, y, 30, 30);}
              }  
            }
        
    if (key=='j') {
           for(int x=0; x < 1800; x+=6){
           for(int y=0; y < 1800; y+=9){
             if (mouseY>y && mouseY<y+300 && mouseX>x && mouseX<x+300){
              fill(255);}
            else {
              fill(random(255), random(255), random(255));}
              rect(x, y, 30, 30);}
                }  
              }
        
    if (key=='n') {
            for(int x=-200; x < 1200; x+=mouseX){
            for(int y=-200; y < 1200; y+=mouseY){
            if (mouseY>y && mouseY<y+30 && mouseX>x && mouseX<x+30){
              fill(random(0), random(0), random(0));}
            else {
              fill(random(255), random(255), random(255));}
              rect(x, y, 30, 30);}
                  }  
              }
        
    if (key=='k') {
           for(int x=6; x < 700; x+=6){
           for(int y=4; y < 600; y+=5){
            if (mouseY>y && mouseY<y+300 && mouseX>x && mouseX<x+300){
              translate(mouseX, mouseY);}
            else {
              fill(random(255), random(255), random(255));}
            triangle(width/2, height/2, x, y, 30, 30);}
                }  
            }
        
          
    if (key=='m') {
           for(int x=6; x < 235; x+=2){
           for(int y=2; y < 234; y+=5){
            if (mouseY>y && mouseY<y+30 && mouseX>x && mouseX<x+30){
              translate(mouseX, mouseY);}
            else {
              fill(random(255), random(255), random(255));}
            circle(pmouseX, x, y);}
                }  
            }
        
   if (key=='o') {
           for(int x=6; x < 225; x+=1){
           for(int y=2; y < 14; y+=1){
            if (mouseY>y && mouseY<y+300 && mouseX>x && mouseX<x+300){
              translate(mouseX, mouseY);}
            else {
              fill(random(255), random(255), random(255));}
            sphere(x*y);}
                }  
            }
        
    if (key=='i') {
          for(int x=-200; x < 1330; x+=60){
          for(int y=-200; y < 1321; y+=60){
           if (mouseY>y && mouseY<y+50 && mouseX>x && mouseX<x+50){
            translate(mouseX, mouseY);}
           else {
              fill(random(255), random(255), random(255));}
           circle(x, y, 25*random(value));}
               }  
           }
        
    if (key=='p') {
          for(int x=0; x < 330; x+=8){
          for(int y=0; y < 331; y+=80){
          if (mouseY>y && mouseY<y+50 && mouseX>x && mouseX<x+50){
            translate(mouseX/2, mouseY/2);}
          else {
              fill(random(255), random(255), random(255));}
              triangle(x, y, 233*random(value), 222*random(value), 222*random(value), 222*random(value));}
              }  
            }
        
    if (key=='l') {
          for(int x=0; x < 330; x+=8){
          for(int y=0; y < 331; y+=80){
          if (mouseY>y && mouseY<y+pmouseY && mouseX>x && mouseX<x+pmouseX){
            translate(mouseX/2, mouseY/2);}
          else {
              fill(random(255), random(255), random(255));}
              curve ( 222*random(value),222*random(value), 222*random(value),222*random(value), 222*random(value), 222*random(value), 222*random(value), 222*random(value));}
            }  
          }
          
   // older key pressed commands
   
    if (key=='x') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill(mouseY*random(value), pmouseX*random(value), random(value));
          sphereDetail(mouseX / 125);
          sphere(54);}
  
    if (key=='z') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          sphereDetail(mouseX / 6);
          fill(255, 255, 255, random(255));
          sphere(150);}
    
    if (key=='a') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .02);
          rotateY(mouseX * .02);
          fill (255, random(255), random(255), random(255));
          ellipse(mouseX-sizer/1, mouseY-sizer/1, 255, 255);}
    
    if (key=='s') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill (225/cos(-2), random(255)/2, random (100, 160), 200/5);
          box(mouseX/sin(random(255)), mouseY/tan(random(255)), mouseX-sizer/2);}
    
     if (key=='q') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill (pmouseX,255, 255, random(255));
          box(mouseX, mouseY, mouseX-sizer/2);}
    
      if (key=='d') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill (pmouseX,pmouseY*255, pmouseY*255, pmouseX/random(255));
          stroke(random(255)*random(value), 200, 255);
          box(mouseX, mouseY, mouseX-sizer/2);}
    
      if (key=='e') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill (pmouseX,pmouseY*255, pmouseY*255, pmouseX/random(255));
          stroke(random(255)*random(value), 200, 255);
          sphere(mouseX-sizer/2);}
          
      if (key=='v') {
          stroke(1, 0);
          translate(pmouseX, pmouseY);
          fill (pmouseX,pmouseY, pmouseY, pmouseX/random(255));
          stroke(random(255)*random(value), random(255), random(255));
          line(pmouseX, pmouseY, 0, 0);}
      
      if (key=='w') {

          stroke(255, 255);
          fill(255);
          ellipse (pmouseX, pmouseY, 15,15);}
          
      if (key=='b') {

          stroke(0, 0);
          fill(0);
          ellipse(mouseX, mouseY, 15,15);}
          
      if (key=='f') {
          stroke(255, 255);
          fill(255);
          line(mouseX, mouseY, width/2, height/2);}
          
      if (key=='c') {
          stroke(255, 255);
          fill(random(255),random(255),random(255),random(255));
           arc(pmouseX, pmouseY, random(255), random(255), PI / random(255), random(255) * PI / random(value));;}
           
      if (key=='t') {
          stroke(random(255), 255);
          fill(random(255), random(255), random(255), random(255));
           arc(pmouseX, pmouseY, 255, 255, PI / random(255), random(255) * PI / random(255));;}
           
      if (key=='g') {
          stroke(255, 160);
          fill(random(255),random(255),pmouseX*random(255));
           arc(pmouseX, pmouseY, random(255), 255, PI / random(255), random(255) * PI / random(value));;}
    
      if (key=='r') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .2);
          rotateY(mouseX * .4);
          fill (random(255), random(255), 129, random(255));
          rect(mouseX-sizer/.5, mouseY-sizer/.8, random(255), 255);}
          
      if (key=='y') {
          stroke(0);
          fill (random(255), random(255), random(255), random(255));
           arc(pmouseX, pmouseY, PI*random(255), 255, PI / 4, random(255) * PI / 4);;}
    
      if (key=='h') {
          stroke(0, random(255));
          translate(mouseX, mouseY, 0);
          rotateX(mouseY);
          rotateY(mouseX);
          fill (66, random(255), 55, random(255));
          sphereDetail(2);
          sphere(62);}
          
// Colormode key pressed actions
          
       if (key=='2'){
          colorMode(HSB, 255);
        }
      
       if (key=='1'){
          colorMode(RGB, 255);
        }
      }
  }
