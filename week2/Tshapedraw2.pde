void setup() {
 size(1000, 1000, P3D); 
 background(value);
}
int value = 0;
void draw() {
  stroke(mouseX*random(value), 200, 255);
  translate(mouseX, mouseY, 0);
  rotateX(mouseY * .07);
  rotateY(mouseX * .09);
  fill(mouseY*random(value), pmouseX*random(value), random(value));
  sphereDetail(mouseY / 125);
  sphere(random(1,100));
}
void mouseClicked() {
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}
