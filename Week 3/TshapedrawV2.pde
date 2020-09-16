//refference https://www.openprocessing.org/sketch/765834
//https://processing.org/

int value = 1;
int sizer=100;


void setup() {
         size(1000, 1000, P3D); 
         background(value);
}


void draw() {
  
  //text display
  
  text("Press or Hold a, s,d,r,t,w,q,z,x,c,v,b,g and F Keys to draw", 400,980);
  
   text("CLEAR", 25,20);
     if (mousePressed) {
       // button perameters
      if ((mouseX < 100) && (mouseX > 0) && (mouseY > 0) && (mouseY < 50)) {
        //button action
       fill(255);
      background(0);
      }
     }
     
    //text display
    text("END & SAVE", 925,20);
     if (mousePressed) {
       // button perameters
      if ((mouseX < 1000) && (mouseX > 900) && (mouseY > 0) && (mouseY < 50)) {
        //button action
          saveFrame("Saved-###.jpg");
         //note noLoop prevents system from constantly saving preview
        noLoop();}}
  
if (keyPressed) {
  
   //multiple key pressed actions
   
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
          stroke(1, 255);
          translate(pmouseX, pmouseY);
          fill (pmouseX,pmouseY, pmouseY, pmouseX/random(255));
          stroke(random(255)*random(value), random(255), random(255));
          line(pmouseX, pmouseY, 255, 255);}
      
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
          point(pmouseX, pmouseY, 0);}
          
       if (key=='c') {
          stroke(255, 255);
          fill(random(255));
           arc(pmouseX, pmouseY, random(255), random(255), PI / random(255), random(255) * PI / random(value));;}
           
       if (key=='t') {
          stroke(255, 255);
          fill(random(255));
           arc(pmouseX, pmouseY, 255, 255, PI / random(255), random(255) * PI / random(value));;}
           
        if (key=='g') {
          stroke(255, 160);
          fill(random(value));
           arc(pmouseX, pmouseY, random(255), 255, PI / random(255), random(255) * PI / random(value));;}
    
      if (key=='r') {
          stroke(1, 255);
          translate(mouseX, mouseY, 0);
          rotateX(mouseY * .07);
          rotateY(mouseX * .09);
          fill (255, random(255), 129, random(255));
          rect(mouseX-sizer/.5, mouseY-sizer/.8, random(255), 255);}
      
 
}}
