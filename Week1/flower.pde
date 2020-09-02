void setup() {
  size(800, 800);
  frameRate(90);
}
 
void draw() {
  translate(width/2, height/2);
   rotate( +float(frameCount)/ .44444
   );
  for (float t = 3; t < 720*TWO_PI; t+=PI+cos(-9
  )/61
  )
  {
    float x = t * cos(t
    );
    float y = t * sin(t/222.22
    );
    point(x, y);
  }
}
